function gita
	set branch "main"
	set message "commit"

	if not test -d .git
		echo "Error: Current directory is not a git repository."
		return 1
	end

	if test (count $argv) -ge 1
		set branch $argv[1]
	end

	if test (count $argv) -ge 2
		set message (string join ' '  $argv[2..-1])
	end

	if test $branch = "main"
		echo -n "Branch not provided. Push to main? (y/n): "
		read -l response
		if test $response != "y"
			echo "Abort."
			return 1
		end
	end

	git add .
	git commit -m "$message"
	git push origin "$branch"
end