#!/bin/sh

echo "=== Onestore disabler ===\n"

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

echo "Uninstalling app for user 0..."
echo " - com.kt.olleh.storefront"
pm uninstall --user 0 com.kt.olleh.storefront
echo " - com.skt.skaf.OA00018282"
pm uninstall --user 0 com.skt.skaf.OA00018282
echo ""

echo "Done."
