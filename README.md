1. download and install vscode.rpm
2. enable rpm-fusion

```bash
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf config-manager --enable fedora-cisco-openh264
```

3. install gstreamer1-plugins-bad-free-extras gstreamer1-plugin-openh264 vlc youtube-dl telegram-desktop

```bash
sudo dnf install -y gstreamer1-plugins-bad-free-extras gstreamer1-plugin-openh264 vlc youtube-dl
```

4. install keepassxc git cargo fish btop python3-pip

```bash
sudo dnf install -y git keepassxc cargo fish btop
git config --global user.name nutthawit
git config --global user.name rosllarr
git config --global user.email rosllarr@tutanota.com
```

5. install fzf (all answer 'Y')

```bash
# https://github.com/junegunn/fzf?tab=readme-ov-file#using-git

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

6. cargo install bat eza ripgrep zoxide

```bash
cargo install bat eza ripgrep zoxide
```

7. copy config.fish and fish_variables
8. copy functions (ls.fish, tree.fish)

```bash
cp -r ~/projects/personal/fedora-plasma6-setup/home/.config/fish/ ~/.config/
```

9. create new konsole profile with fish as default shell (/usr/bin/fish)

10. install fisher

```bash
# https://github.com/jorgebucaran/fisher?tab=readme-ov-file#installation

curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
```

10. install nerdfonts

```bash
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git ~/.nerd-fonts
bash ~/.nerd-fonts/install.sh
```

11. install podman

```bash
sudo dnf install podman -y
```

12. install google-chrome-stable

```bash
sudo dnf install fedora-workstation-repositories -y
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install -y google-chrome-stable
```

13. install openfortivpn nmap

```bash
sudo dnf install -y openfortivpn nmap
```

14. enable flathub & install insomnia telegram

```bash
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo --user
flatpak install flathub rest.insomnia.Insomnia --user
flatpak install flathub org.telegram.desktop --user
```

15. fix telegram font on flathub

```bash
# https://github.com/flatpak/flatpak/issues/5425#issuecomment-1748980566

cd ~/.var/app/org.telegram.desktop/config
mkdir -p fontconfig/conf.d
cd fontconfig/conf.d
cp /etc/fonts/conf.d/*.conf ./
# Restart Telegram
```

16. install dependencies for tor browser

```bash
sudo dnf install dbus-glib
```

<!-- 11. install group virtualization and install package vagrant -->
<!-- 13. install docker -->
