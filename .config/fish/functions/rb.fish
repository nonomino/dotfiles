# Define function 'rb' that calls 'mise x ruby --' with additional arguments
function rb
    if test (count $argv) -lt 1
        echo -e "Not enough arguments!\nUsage: rb COMMAND ARGS..."
        return 1
    end

    # Extract the command after 'mise x ruby --'
    set command $argv[1]

    # Remove the first argument (command) from $argv
    set --erase argv[1]

    # Check if $argv is empty
    if test -z "$argv"
        mise x ruby -- $command
    else
        # Pass the remaining arguments to the command
        mise x ruby -- $command $argv
    end
end
