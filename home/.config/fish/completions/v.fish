set -l v_commands up run build repl symlink test-compiler test fmt doc translate create

# o
complete -c v -s o -r -d 'Write output to <file>'

# -g
complete -c v -e -f -s g -d 'Generate debugging information in the backtraces. Add *V* line numbers to the generated executable'

# -cg
complete -c v -f -o cg -d 'Same as -g, but add *C* line numbers to the generated executable instead of *V* line numbers'

# -keep_c 
complete -c v -f -o keep_c -d 'Do NOT remove the generated .tmp.c files after compilation'

# -show_c_cmd  
complete -c v -f -o show_c_cmd -d 'Print the full C compilation command and how much time it took. See also `-verbose`'

# -cc
complete -c v -f -o cc -x -a 'clang gcc tcc' -r -d 'Specify which C compiler you want to use as a C backend'

# -cflags
complete -c v -f -o cflags -r -d 'Pass additional C flags to the C backend compiler'

# up
complete -c v -f -n '__fish_use_subcommand' -a up -d 'Update the V compiler'

# run
complete -c v -r -n '__fish_use_subcommand' -a run -d 'Build and execute the V program in .v file'

# build
complete -c v -r -n '__fish_use_subcommand' -a build -d 'Compile a module into an object file'

# repl
complete -c v -f -n '__fish_use_subcommand' -a repl -d 'Run the V REPL'

# symlink
complete -c v -n '__fish_use_subcommand' -a symlink -d 'Symlinks the current V executable to /usr/local/bin/v'

# test compiler
complete -c v -n '__fish_use_subcommand' -a test-compiler -d 'Run all V test files, and compile all V examples'

# test
complete -c v -n '__fish_use_subcommand' -a test -r -d 'Run all V test files located in the folder and its subfolders'

# fmt
complete -c v -n '__fish_use_subcommand'           -a fmt  -d 'Formats the given V source files, and prints their formatted source to stdout'
complete -c v -n '__fish_seen_subcommand_from fmt' -s c    -d 'Check if file is already formatted'
complete -c v -n '__fish_seen_subcommand_from fmt' -o diff -d 'Display only diffs between the formatted source and the original source'
complete -c v -n '__fish_seen_subcommand_from fmt' -s l    -d 'List files whose formatting differs from vfmt'
complete -c v -n '__fish_seen_subcommand_from fmt' -s w    -d 'Write result to (source) file(s) instead of to stdout'

# doc
complete -c v -n '__fish_use_subcommand' -a doc -d 'Run vdoc over the source code and produce documentation'

# translate
complete -c v -n '__fish_use_subcommand' -a translate -d 'Translates C to V'

# create
complete -c v -f -n '__fish_use_subcommand and not -r' -a create -d 'Create a new v project interactively'

# output
complete -c v -n 'not __fish_use_subcommand' -s o -r -d 'Write output to <file>'

# help
complete -c v -f -n '__fish_use_subcommand' -a help -d 'Prints help information'
complete -c v -f -n 'not __fish_use_subcommand' -s h -d 'Prints help information'

# version
complete -c v -f -n '__fish_use_subcommand' -a version -d 'Display compiler version and git hash of the compiler source'
complete -c v -f -n 'not __fish_use_subcommand' -s v -d 'Display compiler version and git hash of the compiler source'

# prod
complete -c v -o prod -d 'Build an optimized executable'

# verbose
complete -c v -f -o verbose -d 'Produce a verbose log about what the compiler is doing, where it seeks for files and so on'

# live 
complete -c v -f -o live -d 'Enable hot code reloading (required by functions marked with [live])'

# os
complete -c v -f -o os -x -a 'linux mac windows msvc' -d 'Produce an executable for the selected OS'

# shared
complete -c v -o shared -d 'Build a shared library'

# stats
complete -c v -o stats -d 'Show additional stats when compiling/running tests'

# cache
complete -c v -o cache -d 'Turn on usage of the precompiled module cache'

# obfuscate
complete -c v -o cache -d 'Obfuscate the resulting binary'

# compress
complete -c v -o compress -d 'Compress the resulting binary'

# search
complete -c v -n '__fish_use_subcommand' -a search -r -d 'Search the https://vpm.vlang.io/ module repository for matching modules and shows their details'

# install
complete -c v -n '__fish_use_subcommand' -a install -r -d 'Install a user module from https://vpm.vlang.io/'

# update
complete -c v -n '__fish_use_subcommand' -a update -r -d 'Updates an already installed module, or ALL installed modules at once, when no module name is given'

# remove
complete -c v -n '__fish_use_subcommand' -a remove -r -d 'Removes an installed module, or ALL installed modules at once, when no module name is given'

# Completions for v cmds that takes file arguments
complete -c v -n '__fish_seen_subcommand_from build compile fmt install run test ' -x -a '(
            __fish_complete_suffix .v
    )' --description ''
