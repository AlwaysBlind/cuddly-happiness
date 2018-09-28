.PHONY: zsh
zsh:
	sudo apt install git-core zsh
	sh -c "curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh"
	sudo apt install fonts-powerline
	sed -i 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"agnoster\"/g' ~/.zshrc
	# Then source ~/.zshrc
