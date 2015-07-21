#!/sbin/sh

set -e

variant=`getprop ro.boot.hwversion`

if [[ $variant == 4* ]]; then
	# This is Mi4 device need remove nfc feature
	NFCFILES="app/NfcNci lib/libnfc-nci.so lib/libnfc_nci_jni.so lib/libnfc_ndef.so lib/nfc_nci.bcm2079x.default.so etc/permissions/android.hardware.nfc.hce.xml etc/permissions/android.hardware.nfc.xml etc/permissions/com.mokee.nfc.enhanced.xml etc/libnfc-brcm-20791b05.conf etc/libnfc-brcm.conf etc/nfcee_access.xml"

	for i in $NFCFILES; do
		rm -rf /system/$i
	done
fi
