export PWD=`pwd`
export NAME_CHECK_SCRIPT=bash_sync_git_checker.sh
export NOW=`date '+%y%m%d_%H%M'`
export CONTENT=`cat ~/.bash_profile`
export PWD=`pwd`

init:
	echo "$(NOW)"
	-mv ~/.bash_profile ./_backup/.bash_profile_$(NOW)
	cp bash/.bash_profile ~/.bash_profile
	echo "cd $(PWD) && sh $(NAME_CHECK_SCRIPT) && cd ~/ && tree -L 1 ./ \n\n$(CONTENT)" > ~/.bash_profile
	cat bash/.bash_footer >> ~/.bash_profile
	echo "alias S='cd $(PWD)'" >> ~/.bash_profile
	cp bash/.bash_aliases ~/.bash_aliases
init-zsh:
	make init
	mv ~/.bash_profile ~/.zprofile

# ---
install-ubuntu:
	@cat ./.system/requirements.system | xargs sudo apt-get install -y

install-mac:
	brew install tree

# ---
clean:
	rm _backup/.bash_profile*
	rm _backup/.zsh_profile*

check:
	-@find ~/.bashrc
	-@find ~/.bash_aliases
	-@find ~/.bash_profile
	-@find ~/.zshrc
	-@find ~/.zsh_profile

# ---
export UNAME:=`uname`
export OS_MAC:=Darwin
check-os:
	echo $(UNAME)
	@if test "$(UNAME)" = Linux;\
		then echo "$(UNAME)" is Linux;\
	else echo "$(UNAME)" is Mac;\
	fi