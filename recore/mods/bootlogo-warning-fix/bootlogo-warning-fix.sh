# ==============================================================================
#
# MOD_NAME="Bootloader Warning Fix"
# MOD_AUTHOR="Krrish"
# MOD_DESC="Replace up_param.bin to remove unlocked bootloader warning."
#
# ==============================================================================

if [ "$DEVICE_SINGLE_SYSTEM_IMAGE" = "essi" ]; then
    ADD_FROM_FW "param" "param" "up_param_1080p.bin"

elif [ "$DEVICE_SINGLE_SYSTEM_IMAGE" = "essi64" ]; then
    ADD_FROM_FW "param" "param" "up_param_1440p.bin"

else
    ADD_FROM_FW "param" "param" "up_param_1080p.bin"
fi