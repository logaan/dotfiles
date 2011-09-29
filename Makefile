install:
	mv ~/.vimrc ~/.vimrc.backup
	ln -s `pwd`/vimrc ~/.vimrc
	mv ~/.vim ~/.vim.backup
	ln -s `pwd`/vim ~/.vim

