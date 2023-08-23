yay -Syu

yay -S gnome-browser-connector gnome-terminal zsh ttf-hack ttf-hack-nerd ranger ueberzug neofetch nvtop htop discord dropbox neovim xclip expressvpn spotify-launcher spicetify-cli cmake extra-cmake-modules jq python-pipx bluez bluedevil nodejs npm
yay -R gnome-console

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ~/.zsh/zsh-history-substring-search

pipx install https://github.com/leovoel/BeautifulDiscord/archive/master.zip

sudo rm -rf ~/Documents ~/Music ~/Public ~/Videos ~/Templates ~/Pictures

sudo rsync -a .config .local .zshrc ~/
sudo cp .config/theme-setter/set-theme /usr/local/bin/
sudo cp .config/theme-setter/get-theme /usr/local/bin/

sudo systemctl enable bluetooth
sudo systemctl enable expressvpn

cd ~/ && dconf load -f / < ~/.config/saved_settings.dconf
# cd ~/ && dconf dump / > ~/.config/saved_settings.dconf

# set discord theme
# ~/.local/bin/beautifuldiscord --css ~/.config/beautifuldiscord.css

# set spotify theme
# spicetify config inject_css 1 replace_colors 1 overwrite_assets 1 inject_theme_js 1
# spicetify config current_theme Comfy
# spicetify config color_scheme dynamic
# spicetify backup apply
