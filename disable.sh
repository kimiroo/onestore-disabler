#!/bin/sh

echo "=== Onestore disabler ===\n"

echo "Initializing...\n"
device_csc=$(getprop ro.csc.sales_code)
pkg_name="null"

echo "Device CSC: $device_csc"

if [ "$device_csc" -eq "KTC" ]; then
  pkg_name="com.kt.olleh.storefront"
elif [ "$device_csc" -eq "LUC" ]; then
  pkg_name="android.lgt.appstore"
elif [ "$device_csc" -eq "SKC" ]; then
  pkg_name="com.skt.skaf.A000Z00040"
else
  echo "\nUnsupported CSC."
  echo "Please uninstall Onestore manually."
  exit 1
fi

echo "Onestore Package Name: $pkg_name\n"

echo "Uninstalling updates..."
echo " - $pkg_name"
pm uninstall "$pkg_name"
echo " - com.skt.skaf.OA00018282"
pm uninstall com.skt.skaf.OA00018282
echo ""

echo "Clearing app data..."
echo " - $pkg_name"
pm clear $pkg_name
echo " - com.skt.skaf.OA00018282"
pm clear com.skt.skaf.OA00018282
echo ""

echo "Uninstalling app for user 0..."
echo " - $pkg_name"
pm uninstall --user 0 "$pkg_name"
echo " - com.skt.skaf.OA00018282"
pm uninstall --user 0 com.skt.skaf.OA00018282
echo ""

echo "Done."
