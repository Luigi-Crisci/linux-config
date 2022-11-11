# Install basic dependecies
sudo apt install -y build-essential \
	curl 

# Install ZSH
sudo apt install -y zsh
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Install poweshell10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
#Install plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install terminal emulator
sudo add-apt-repository -y ppa:aslatter/ppa
sudo apt install -y alacritty

# Useful tools for 
cargo install rm-improved \
  xcp \
  du-dust \
  ripgrep \
  fd-find \
  sd \
  procs \
  bottom --locked \
  topgrade --locked \
  tokei \
  bat --locked

cp .aliases .zshrc $HOME
mkdir -p $HOME/.config/alacritty
cp alacritty.yml $HOME/.config/alacritty/