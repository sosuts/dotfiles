# if status is-interactive
# end

# Appearance
set theme_color_scheme nord


function fish_prompt
    __vsc_fish_prompt
    __vsc_fish_cmd_start
    # add newline
    echo -e "\n"
end

# Path
fish_add_path ~/bin

# abbreviations for git
abbr --add g git
# atcoder
abbr --add ojs "oj submit main.py -l 5055 -y --no-open"
abbr --add ojt "oj test -c 'python main.py'"
abbr --add generate_random_input "oj generate-input 'python generate.py'"
abbr --add generate_random_test "oj generate-output -c 'python naive.py'"
# docker
abbr --add d docker
abbr --add di docker image
abbr --add dis docker images
abbr --add dc docker container
abbr --add dp docker compose
abbr --add dl docker logs
# clipboard
abbr --add clip xsel --clipboard --input
abbr --add c chezmoi

function generate_random_case
    generate_random_input $argv
    generate_random_test
end
