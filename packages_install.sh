# Install main package
echo 'Install basic package'
sudo apt-get update && sudo apt-get install curl wget python3-dev ibus-unikey -y

#Ibus-Unikey
echo 'Ibus Unikey'
sudo add-apt-repository ppa:ubuntu-vn/ppa

# VsCode
echo 'Install VsCode'
curl -L https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
echo 'deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main' | sudo tee /etc/apt/sources.list.d/vscode.list


# nodejs
echo 'Install NodeJS'
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

# yarn
echo 'Install Yarn'
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - \
&& echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# NVIM
echo 'Install NeoVIM'
echo 'deb http://ppa.launchpad.net/neovim-ppa/stable/ubuntu zesty main' | sudo tee /etc/apt/sources.list.d/neovim.list \
&& sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 9DBB0BE9366964F134855E2255F96FCF8231B6DD

# Git
echo 'Install Git'
sudo add-apt-repository ppa:git-core/ppa -y


# Install all
echo 'Install all package'
sudo apt-get update && sudo apt-get install -y zsh code nodejs yarn neovim git

#Restart ibus unikey
echo 'Restart ibus unikey'
ibus restart

# Oh my zsh
echo 'Install on my zsh'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


