if status is-interactive
    # Commands to run in interactive sessions can go here
end
function fish_greeting
echo -e '\e[6 q'
neofetch
fortune | cowsay
starship init fish | source
end
