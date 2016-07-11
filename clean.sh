#!/usr/bin

rm -rf ./DSDT/result
rm -rf ./downloads/tools/*/
rm -rf ./downloads/kexts/*/
rm -rf ./DSDT/ACPI-Tables/*
rm -rf ./Clover/*.plist
cp -v ./extra/config*.plist ./Clover/
rm -rf ./Clover/kexts/Other/*
cp -rv ./extra/Other/ ./Clover/kexts/Other/
rm -rf ./Clover/ACPI/patched/*

echo '===>done'