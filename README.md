# Installation
## Install required packages
```bash
sudo pacman -S git foot zsh eza stow tmux helix
```
## Clone repository
```bash
git clone https://github.com/Unkn0wnNPC/dotfiles.git
```
## Add files with stow
```bash
cd dotfiles;stow .
```
## Enable Keepass SSH Agent
```bash
systemctl enable --now --user ssh-agent.service
```
