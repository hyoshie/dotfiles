# Function
function cvim() {
	command nvim $@ && clear
}

function gre() {
	command grep --color=auto -E $1 -r1 $2
}

function mkcd() {
	command mkdir -pv $1 && cd $1
}

function myleak() {
	while [ 1 ]
	do
		leaks $1
		sleep 1
	done
}

function msleak() {
	while [ 1 ]
	do
		leaks minishell
		sleep 1
	done
}

function msproc() {
	while [ 1 ]
	do
		pgrep -l minishell
		sleep 1
	done
}

function mskill() {
	pkill minishell
}


function grepc() {
	LANG=C grep --color -r -n\
		--exclude-dir='.git' \
		--exclude-dir='.svn' \
		--include='*.h' \
		--include='*.hpp' \
		--include='*.m' \
		--include='*.c' \
		--include='*.cc' \
		--include='*.cpp' \
		"$1" .
}

function greph() {
	LANG=C grep --color -r -n\
		--exclude-dir='.git' \
		--exclude-dir='.svn' \
		--include='*.h' \
		--include='*.hpp' \
		"$1" .
}

function pynt() {
	python -c "print('$1' * $2)"
}

function gensh() {
	shellscript=$1
	touch $shellscript
	chmod 744 $shellscript
	echo "#!/bin/bash" >> $shellscript
	echo >> $shellscript
	echo "echo hello!" >> $shellscript
}

function cprev() {
	cp -r ~/review/utils/$1 mytest
}

