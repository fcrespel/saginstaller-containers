#!/bin/bash

CLEANUP_MODE="${1:-full}"

echo "Cleaning up $SAG_HOME (mode=$CLEANUP_MODE)..."
cd $SAG_HOME

echo "Disk usage before cleaning:"
du -h -d 2

echo "Removing installer logs/backups/cache ..."
rm -fr install/logs install/fix/backup install/fix/profile/org.eclipse.equinox.p2.core/cache
rm -f sagProducts.xml sagMetadata.xml p2.index

echo "Removing Licenses and doc ..."
rm -fr Licenses/ _documentation/

echo "Removing log files ..."
rm -f `find ./ -name *.log`

echo "Removing Java backup ..."
rm -fr jvm/*.bck

echo "Removing Update Manager ..."
rm -fr SAGUpdateManager

if [ "$CLEANUP_MODE" = "full" ]; then
    echo "Removing Java ..."
    rm -fr jvm/
fi

echo "Disk usage after cleaning:"
du -h -d 2
