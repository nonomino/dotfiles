function rb
    if test (count $argv) -lt 1
        echo -e "Not enough arguments for ruby!\nUsage: rb COMMAND ARGS..."
        return 1
    end

    set command $argv[1]
    set --erase argv[1]

    if test -z "$argv"
        mise x ruby -- $command
    else
        mise x ruby -- $command $argv
    end
end

function py
    if test (count $argv) -lt 1
        echo -e "Not enough arguments for python!\nUsage: py COMMAND ARGS..."
        return 1
    end

    set command $argv[1]    
    set --erase argv[1]

    if test -z "$argv"
        mise x python -- $command
    else        
        mise x python -- $command $argv
    end
end

function v
    set command nvim    
	#    set --erase argv[1]

    if test -z "$argv"
        mise x neovim -- $command
    else        
        mise x neovim -- $command $argv
    end
end

