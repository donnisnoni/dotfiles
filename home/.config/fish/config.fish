#/usr/bin/fish

# Extend PATH environment variable
set donexport GPG_TTY=(tty)

# Load icons-in-terminal
# source ~/.local/share/icons-in-terminal/icons.fish

# Aliases
alias gclone 		"git clone"
alias cdv			"cd ~/Projects/v/vlang"
alias r 			"reset"
alias emsdk_setup 	". /media/don/DEV/Apps/emsdk/emsdk_env.fish"
alias vup			"cdv && git checkout master && git pull --rebase && ./v -cc clang -prod ./cmd/v/v.v -o  v && ls -sh1 && cd -"
alias lampp_env		"set PATH /opt/lampp:/opt/lampp/bin:$PATH"
alias projects  	"cd ~/Projects/"
alias vprojects		"cd ~/Projects/v"
alias kernel_lists	"sudo dpkg --list | egrep -i --color 'linux-image|linux-headers'"
alias start_mysql	"sudo /opt/lampp/lampp startmysql"
alias stop_mysql	"sudo /opt/lampp/lampp stopmysql"

# export VFLAGS="-cc tcc -cg"
export CC="clang"

export GPG_TTY=(tty)


function delete_all_exec
	find . -maxdepth 1 -type f -executable -delete 
end


set NODE_PATH /media/don/DEV/Apps/node/node-v15.7.0-linux-x64/bin
set PATH $NODE_PATH:$PATH
set NPM_DIR /media/don/DEV/Apps/node/node-v15.7.0-linux-x64/lib/node_modules/npm
