echo "******** testing adb root ********"
adbulk adb root &&
echo "******** adb root passed ********"

echo "******** testing adb push ********"
adbulk adb push test.txt /storage/emulated/0/Download &&
echo "******** adb push passed ********"

echo "******** testing adb push ********"
adbulk adb pull /storage/emulated/0/Download/test.txt &&
echo "******** adb pull passed ********"

echo "******** testing adb install ********"
adbulk adb install ~/Downloads/*.apk &&
echo "******** adb install passed ********"

echo "******** testing adb reboot ********"
adbulk adb reboot bootloader &&
echo "******** adb reboot passed ********"

sleep 10

echo "******** testing fastboot reboot ********"
adbulk fastboot reboot &&
echo "******** fastboot reboot passed ********"

# Testing invalid inputs

echo "******** testing false commands ********"
adbulk add reboot &&
echo "******** false commands passed ********"

echo "******** testing false arguments ********"
adbulk adb rebook &&
echo "******** false arguments passed ********"

