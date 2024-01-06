link:
	ln -vsf ${PWD}/vimrc ${HOME}/.vimrc
	ln -vsf ${PWD}/bashrc ${HOME}/.bashrc
	ln -vsf ${PWD}/bash_aliases ${HOME}/.bash_aliases
	ln -vsf ${PWD}/inputrc ${HOME}/.inputrc
	ln -vsf ${PWD}/tmux.conf ${HOME}/.tmux.conf

clean:
	rm -rf ${HOME}/.vimrc
	rm -rf ${HOME}/.bashrc
	rm -rf ${HOME}/.bash_aliases
	rm -rf ${HOME}/.inputrc
	rm -rf ${HOME}/.tmux.conf

