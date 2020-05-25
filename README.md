# ad-bulk

This is an adb and fastboot wrapper to iteratively run commands on multiple devices. Adb and fastboot seems to lack options for running commands for multiple connected devices... So I've worked on this wrapper tool to provide that fuctionality.

## Prerequisites

1. A Unix based system: macOS or Linux
2. [Android Platform-Tools](https://developer.android.com/studio/releases/platform-tools)

## Installing

1. Follow the link provided above to download Android Platform-Tools.

2. Open a terminal.

3. In your home directory, make a bin directory to hold your executable programs.
```shell
mkdir ~/bin
```

4. Unzip Platform-Tools in your Downloads directory.
```shell
unzip ~/Downloads/platform-tools_your-ver.zip
```

5. Move all files from the extracted directory to your new bin directory.
```shell
mv ~/Downloads/platform-tools/* ~/bin
```

6. Clone this directory.
```shell
git@github.com:Dylan7675/ad-bulk.git
```

7. Make a symbolic link from the repository to the bin directory.
```shell
ln -s ~/ad-bulk/adbulk ~/bin
```

8. Give read and execution rights to all files in the bin directory.
```shell
sudo chmod 555 ~/bin/*
```

9. Open your .bashrc or .bash_profile(macOS) file.
```shell
nano ~/.bashrc
```
    or
```shell
nano ~/.bash_profile
```

10. Add the following to the bottom of the file.
```shell
export PATH=$PATH:~/.bin/
```

11. Refresh your .bashrc / .bash_profile file.
```shell
. .bashrc
```
    or
```shell
. .bash_profile
```

## Using adbulk

Use the adbulk command before any adb or fastboot commands to run them iteratively on multiple device. Some exclusions may apply ex: "adb devices" , "fastboot devices" , "adb shell", etc... Essentially any command that use for continued interactions on the device..

### Examples

adb push
```shell
adbulk adb push foo.txt
```

adb pull
```shell
adbulk adb pull bar.txt
```

adb install
```shell
adbulk adb install app.apk
```

adb reboot
```shell
adbulk adb reboot
```

adb root
```shell
adbulk adb root
```

fastboot -w
```shell
adbulk fastboot -w
```

fastboot reboot bootloader
```shell
adbulk fastboot reboot bootloader
```
