pkill gpg-agent ; pkill ssh-agent

# For 1Password
# [ -n "$(op account list)" ] && op signout --all

[ "$SHLVL" = 1 ] && [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
