#!/bin/bash

SCRIPT_PATH="$HOME/devil_hacking.sh"

# If the script doesn't exist, create it
if [ ! -f "$SCRIPT_PATH" ]; then
    cat > "$SCRIPT_PATH" << 'EOF'
#!/bin/bash

clear

# Detect terminal width
TERM_WIDTH=$(tput cols)

# Adjust ASCII art for terminal width using 'fold' to wrap lines at terminal width
cat << 'BANNER_EOF' | fold -w $TERM_WIDTH
  _____             _ _   _    _            _    _              ⠀⠀  ⠀⢀⣀⣤⣤⣤⣤⣄⡀⠀⠀⠀⠀
 |  __ \           (_) | | |  | |          | |  (_)            ⠀  ⢀⣤⣾⣿⣾⣿⣿⣿⣿⣿⣷⣄⠀⠀
 | |  | | _____   ___| | | |__| | __ _  ___| | ___ _ __   __ _   ⢠⣾⣿⢛⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀
 | |  | |/ _ \ \ / / | | |  __  |/ _` |/ __| |/ / | '_ \ / _` |  ⣾⣯⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧
 | |__| |  __/\ V /| | | | |  | | (_| | (__|   <| | | | | (_| |  ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
 |_____/ \___| \_/ |_|_| |_|  |_|\__,_|\___|_|\_\_|_| |_|\__, |  ⣿⡿⠻⢿⣿⣿⣿⣿⣿⡿⠻⢿⡿⢿⣿
                                                          __/ |  ⢸⡇⠀⠀⠉⠛⠛⣿⣿⠛⠛⠉⠀⠀⣿⡇
                                                         |___/   ⢸⣿⣀⠀⢀⣠⣴⡇⠹⣦⣄⡀⠀⣠⣿⡇
                                                              ⠀  ⠈⠻⠿⠿⣟⣿⣿⣦⣤⣼⣿⣿⠿⠿⠟⠀
                                                              ⠀⠀  ⠀⠀⠀⠸⡿⣿⣿⢿⡿⢿⠇⠀⠀⠀⠀
                                                              ⠀⠀⠀⠀   ⠀⠀⠀⠈
BANNER_EOF

EOF

    chmod +x "$SCRIPT_PATH"
fi

# Add the script to .bashrc if not already added
if ! grep -q "$SCRIPT_PATH" "$HOME/.bashrc"; then
    echo "bash $SCRIPT_PATH" >> "$HOME/.bashrc"
fi

# Add the script to .zshrc if .zshrc exists and the script isn't already added
if [ -f "$HOME/.zshrc" ] && ! grep -q "$SCRIPT_PATH" "$HOME/.zshrc"; then
    echo "bash $SCRIPT_PATH" >> "$HOME/.zshrc"
fi

# Execute the script to show the banner
bash "$SCRIPT_PATH"
EOF

    chmod +x "$SCRIPT_PATH"
fi

# Add the script to .bashrc if not already added
if ! grep -q "$SCRIPT_PATH" "$HOME/.bashrc"; then
    echo "bash $SCRIPT_PATH" >> "$HOME/.bashrc"
fi

# Add the script to .zshrc if .zshrc exists and the script isn't already added
if [ -f "$HOME/.zshrc" ] && ! grep -q "$SCRIPT_PATH" "$HOME/.zshrc"; then
    echo "bash $SCRIPT_PATH" >> "$HOME/.zshrc"
fi

# Execute the script to show the banner
bash "$SCRIPT_PATH"
