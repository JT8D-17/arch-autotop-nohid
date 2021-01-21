#! /bin/bash
# Credit: Ric Klare, https://askubuntu.com/a/1026527
#PowerTOP auto-tune
echo "--> 1. Starting Powertop autotuning..."
powertop --auto-tune
#HID devices
echo "--> 2. Grabbing HID devices..."
HIDDEVICES=$(ls /sys/bus/usb/drivers/usbhid | grep -oE '^[0-9]+-[0-9\.]+' | sort -u)
echo "--> 3. Disabling powersaving for HID devices..."
for i in $HIDDEVICES; do
  echo -n "Re-enabling " | cat - /sys/bus/usb/devices/$i/product
  echo 'on' > /sys/bus/usb/devices/$i/power/control
  #echo 'on' | sudo tee /sys/bus/usb/devices/$i/power/control
done
