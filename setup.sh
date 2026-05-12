#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/Makkelmekkel/vim-settings.git"
REPO_DIR="$HOME/vim-settings"

# Clone repo if not already present
if [ ! -d "$REPO_DIR/.git" ]; then
    echo "Cloning vim-settings..."
    git clone "$REPO_URL" "$REPO_DIR"
else
    echo "Repo already present at $REPO_DIR"
fi

# Helper: back up an existing file/dir/symlink before symlinking
backup_and_link() {
    local target="$1"
    local link="$2"

    if [ -e "$link" ] || [ -L "$link" ]; then
        if [ -L "$link" ] && [ "$(readlink "$link")" = "$target" ]; then
            echo "Symlink $link already correct, skipping."
            return
        fi
        mv "$link" "${link}.bak"
        echo "Backed up existing $link to ${link}.bak"
    fi

    ln -s "$target" "$link"
    echo "Created symlink: $link -> $target"
}

backup_and_link "$REPO_DIR/.vimrc" "$HOME/.vimrc"
backup_and_link "$REPO_DIR/.vim"   "$HOME/.vim"

# Install vim-plug plugins headlessly
if command -v vim &>/dev/null; then
    echo "Installing vim plugins..."
    vim -es -u "$REPO_DIR/.vimrc" +PlugInstall +qall
    echo "Plugins installed."
else
    echo "vim not found — skipping plugin install."
fi

echo "Done."
