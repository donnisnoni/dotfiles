#/usr/bin/fish

# Load Powerline
# set fish_function_path $fish_function_path "/home/don/.local/lib/python2.7/site-packages/powerline/bindings/fish"
# powerline-setup

# Extend PATH environment variable
set donexport GPG_TTY=(tty)

# Load icons-in-terminal
# source ~/.local/share/icons-in-terminal/icons.fish

# Aliases
alias gclone 		"git clone"
alias cdv			"cd /media/don/DEV/Projects/v/vlang"
alias r 			"reset"
alias emsdk_setup 	". /media/don/DEV/Apps/emsdk/emsdk_env.fish"
alias vup			"cdv && git checkout master && git pull --rebase && ./v -cc clang -prod ./cmd/v/v.v -o  v && ls -sh1 && cd -"
alias lampp_env		"set PATH /opt/lampp:/opt/lampp/bin:$PATH"
alias projects  	"cd /media/don/DEV/Projects/"
alias vprojects		"cd /media/don/DEV/Projects/v"
alias kernel_lists	"sudo dpkg --list | egrep -i --color 'linux-image|linux-headers'"
alias chrome_minimal "/opt/google/chrome/chrome --disable-3d-apis --disable-2d-canvas-clip-aa --disable-2d-canvas-image-chromium --disable-breakpad --disable-canvas-aa --start-maximized --disable-crash-reporter --disable-default-apps --disable-notifications --disable-sync --disable-webgl"
# --enable-leak-detection --minimal --native
# https://play.famobi.com/table-tennis-world-tour

# export VFLAGS="-cc tcc -cg"
export CC="clang"

export GPG_TTY=(tty)

# source /home/don/.local/share/omf/themes/default/fish_prompt.fish

# function fish_prompt
#     powerline-shell --shell bare $status
# end

function delete_all_exec
	find . -maxdepth 1 -type f -executable -delete 
end

# Load NVM
function load_nvm
	set NVM_DIR '/media/don/DEV/Apps/nvm'
	set PATH $NVM_DIR:$PATH	
end

set NODE_PATH /media/don/DEV/Apps/nvm/versions/node/v14.15.1/bin
#nvm use --delete-prefix v14.15.1
#set PATH $NODE_PATH:$PATH
#neofetch