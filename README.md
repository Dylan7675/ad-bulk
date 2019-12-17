# ad-bulk

This is an adb and fastboot wrapper to iteratively run commands on multiple devices. Adb and fastboot seems to lack options for running commands for multiple connected devices... So I've worked on this wrapper tool to provide that fuctionality.

## Prerequisites

1. A Unix based system: macOS or Linux
2. [Android Platform-Tools](https://developer.android.com/studio/releases/platform-tools)

## Installing

1. Follow the link provided above to download Android Platform-Tools.

2. Open a terminal.

3. In your home directory, make a bin directory to hold your executable programs.
```
mkdir ~/bin
```

4. Unzip Platform-Tools in your Downloads directory.
```
unzip ~/Downloads/platform-tools_your-ver.zip
```

5. Move all files from the extracted directory to your new bin directory.
```
mv ~/Downloads/platform-tools/* ~/bin
```

6. Clone this directory.
```
git@github.com:Dylan7675/adbulk.git
```

7. Make a symbolic link from the repository to the bin directory.
```
ln -s ~/ad-bulk/adbulk ~/bin
```

8. Give read and execution rights to all files in the bin directory.
```
sudo chmod 555 ~/bin/*
```

9. Open your .bashrc or .bash_profile(macOS) file.
```
nano ~/.bashrc
```
    or
```
nano ~/.bash_profile
```

10. Add the following to the bottom of the file
```
export Path Line
```

11. Refresh your .bashrc / .bash_profile file
```
. .bashrc
```
    or
```
. .bash_profile
```

## Using adbulk

Listed below are the supported commands used with this tool.

#### bootloader

The bootloader command is used to reboot into the boot loader from android.

```
adbulk bootloader
```

......
