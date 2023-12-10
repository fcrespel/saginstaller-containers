#!/bin/bash

# Check environment
if [ -z "$PRODUCTS" ]; then
    echo "Missing PRODUCTS environment variable"
    exit 1
fi

# Script variables
PRODUCTS_LIST=$(echo "${PRODUCTS}" | sed -r 's#(^|,)(\w+)#\1e2ei/11/.LATEST/*/\2#g')
FIXES_LIST="${FIXES//:/\\:}"
RELEASE_VERSION="${RELEASE//./}"

# Build install script
cat - <<EOF > $SAG_INSTALLER_DIR/install.script
adminPassword=${ADMIN_PASSWORD}
InstallDir=${SAG_HOME}
InstallProducts=${PRODUCTS_LIST}
LicenseAgree=Accept
Password=${EMPOWER_PASSWORD}
selectedFixes=${FIXES_LIST}
ServerURL=https\://sdc-hq.softwareag.com/cgi-bin/dataservewebM${RELEASE_VERSION}.cgi
Username=${EMPOWER_USERNAME}
EOF

# Run installer
$SAG_INSTALLER_DIR/saginstaller.bin -console -readScript $SAG_INSTALLER_DIR/install.script -scriptErrorInteract no -debugLvl info -debugOut
