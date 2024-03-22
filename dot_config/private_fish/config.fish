if status is-interactive
    alias ojs='oj s main.py -l 5055 --no-open -y'
    alias ojt='oj test -c "python3 main.py"'
end
source "$HOME/.rye/env.fish"
set PATH "/home/sosuke/python/competitive-programming/.venv/bin:$PATH"
