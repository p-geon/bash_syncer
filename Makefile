export PWD=`pwd`
export NAME_CHECK_SCRIPT=bash_sync_git_checker.sh
export NOW=`date '+%y%m%d_%H%M'`
export CONTENT=`cat ~/.bash_profile`
export PWD=`pwd`

init:
	echo "$(NOW)"
	-mv ~/.bash_profile ./_backup/.bash_profile_$(NOW)
	cp bash/.bash_profile ~/.bash_profile
	echo "cd $(PWD) && sh $(NAME_CHECK_SCRIPT) && cd - && tree -L 1 ./ \n\n$(CONTENT)" > ~/.bash_profile
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

# ---

conda-install:
	curl -L -o miniconda.sh https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
	bash miniconda.sh -b -p ${HOME}/.miniconda
	echo export PATH="${HOME}/.miniconda/bin:$${PATH}" >> $${HOME}/.bashrc
	souce $${HOME}/.bashrc
	
ENVNAME = envname
conda-create: ## 
	conda create -n ${ENVNAME} python=3.8

conda-torch-gpu:
	conda install pytorch torchvision torchaudio cudatoolkit=10.2 -c pytorch
conda-tensorflow-gpu:
	conda install tensorflow=2.4.1=gpu_py38h8a7d6ce_0
