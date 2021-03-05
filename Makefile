PWD=`pwd`
NAME_CHECK_SCRIPT=bash_sync_git_checker.sh
NOW=`date '+%y%m%d_%H%M'`
CONTENT=`cat ~/.bash_profile`

init:
	@echo "$(NOW)"
	-@mv ~/.bash_profile ./_backup/.bash_profile_$(NOW)
	@cp .bash_profile ~/.bash_profile
	@echo "cd $(PWD) && sh $(NAME_CHECK_SCRIPT)\n\n$(CONTENT) && cd ~/" > ~/.bash_profile
	@cat .bash_footer >> ~/.bash_profile
	@cat ~/.bash_profile

# ---
clean:
	rm _backup/.bash_profile*

check:
	-@find ~/.bashrc
	-@find ~/.bash_aliases
	-@find ~/.bash_profile
	-@find ~/.zshrc
	-@find ~/.zsh_profile
