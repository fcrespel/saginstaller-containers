#!/bin/sh

$UM_HOME/tools/runner/runUMTool.sh GetServerTime -rname=nsp://localhost:$PORT || exit 1
