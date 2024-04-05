if status is-interactive
    set EDITOR /usr/bin/vi
    fish_add_path -g ~/.cargo/bin
    fish_add_path -g ~/.local/bin

    #
    # zoxide
    #

    # When set to 1, z will print the matched directory before navigating to it.
    set _ZO_ECHO 1
    zoxide init fish | source
end
