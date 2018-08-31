# setup-mac

Setup Mac for Development

## Usage

```
curl -LSfs https://raw.githubusercontent.com/yaeda/setup-mac/master/install.sh | bash
```

## Notice

**Proxy**

If you need, set proxy before the above command.

```
export http_proxy <HOST>:<PORT>
export https_proxy <HOST>:<PORT>
```

**Apple ID**

If you use High Sierra, open App Store.app and singin with Apple ID at first.
Because `mas signin` doesn't work on High Sierra.

## Optional Setup

**iTerm2**

1. Launch iTerm2
1. Change preferences location

**Visual Studio Code**

1. Launch Visual Studio Code
1. `SHIFT` + ⌥ + `D` (or `SHIFT` + ⌘ + `P` > `Sync: Download Settings`)
1. Follow instruction

**Divvy**

1. Open Divvy.app
1. Follow instruction (enable accessibility)

**Japanese Input**

1. Go `System Preference` > `Keyboard` > `Input Sources`
1. Change Input Source (use google-ime-japanese)
1. needs restart

**Google IME Setting**

1. Open Google Japanese Input Preference.app
1. Change punctuation style

**Disable ^Space hotkeys**

1. Go `System Preference` > `Keyboard` > `Shortcuts` > `Input Source`
1. Disable `^Space` and `^⌥Space`

**Set ssh key to GitHub**

1. Copy public key `cat ~/.ssh/id_rsa_github_tyaeda_gmail.pub | pbcopy` and add key to the GitHub
1. Create `~/.ssh/config`

**GitHub with Proxy**

Create ~/.ssh/config like below.

```
Host github.com
  HostName ssh.github.com
  User git
  Port 443
  ProxyCommand connect -H <HOST>:<PORT> %h %p
```
