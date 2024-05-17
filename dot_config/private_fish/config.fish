# Commands to run in interactive sessions can go here
# if status is-interactive
# end

# Appearance
set theme_color_scheme nord

# Path
fish_add_path ~/bin
# export PATH="/home/sosuke/competitive-programming/.venv/bin:$PATH"
# source "$HOME/.rye/env.fish"

# pnpm
set -gx PNPM_HOME "/home/sosuke/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# abbreviations
abbr --add g git
abbr --add ll "ls -al"
abbr --add ojs "oj submit main.py -l 5055 -y --no-open"
abbr --add ojt "oj test -c 'python main.py'"
abbr --add generate_random_input "oj generate-input 'python generate.py'"
abbr --add generate_random_test "oj generate-output -c 'python naive.py'"
# create a function that chain generate_random_input and generate_random_test.
# the function will take one argument -n. -n is the number of test cases.
# example: generate_random_case -n 10
function generate_random_case
    generate_random_input $argv
    generate_random_test
end
