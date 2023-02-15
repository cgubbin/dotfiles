# Defined in /Users/folke/.config/fish/config.fish @ line 71
function update --description 'Update homebrew, fish'
    ~
    and echo "[update] Homebrew"
    and brew update
    and brew upgrade

    and echo "[update] cleaning brew cache"
    and rm -rfv (brew --cache) # brew cleanup -s doesn't remove everythin
    and brew cleanup -s
    and brew bundle dump --describe --force

    and echo "[update] Rustup"
    and rustup update

    and echo "[update] Cargo"
    and cargo install-update -a

    and echo "[update] tldr"
    and command tldr -u

    and echo "[update] tmux"
    and tmux_update

    and echo "[update] fish"
    # and fisher update
    and fish_update_completions
end
