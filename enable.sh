#!/bin/sh

echo "=== Onestore enabler ===\n"

echo "Installing app for user 0..."
echo " - com.kt.olleh.storefront"
cmd package install-existing com.kt.olleh.storefront
echo " - com.skt.skaf.OA00018282"
cmd package install-existing com.skt.skaf.OA00018282

echo "Uninstalling updates..."
echo " - com.kt.olleh.storefront"
uninstall com.kt.olleh.storefront
echo " - com.skt.skaf.OA00018282"
uninstall com.skt.skaf.OA00018282
echo ""

echo "Clearing app data..."
echo " - com.kt.olleh.storefront"
pm clear com.kt.olleh.storefront
echo " - com.skt.skaf.OA00018282"
pm clear com.skt.skaf.OA00018282
echo ""

echo "Done."
