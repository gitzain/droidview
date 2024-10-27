# This needs to be done first:
#   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#   (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/<your username>/.zprofile          
#   eval "$(/opt/homebrew/bin/brew shellenv)"
#   brew install android-platform-tools 
# Attach the phone with the usb cable once. Then:
#   adb tcpip 5555

function cleanup {
  adb disconnect <ip address>
}
trap cleanup EXIT

PATH=/opt/homebrew/bin:/opt/homebrew/sbin
adb connect <ip address>
scrcpy --turn-screen-off --stay-awake