function fish_prompt

  # Cache exit status
  set -l last_status $status

  # Set color for variables in prompt
  set -l normal (set_color normal)
  set -l white (set_color FFFFFF)
  set -l turquoise (set_color 5fdfff)
  set -l orange (set_color df5f00)
  set -l hotpink (set_color df005f)
  set -l blue (set_color blue)
  set -l limegreen (set_color 87ff00)
  set -l purple (set_color af5fff)
  set -l red (set_color e70e0e)

  # Configure __fish_git_prompt
  set -g __fish_git_prompt_char_stateseparator ' '
  set -g __fish_git_prompt_color 5fdfff
  set -g __fish_git_prompt_color_flags df5f00
  set -g __fish_git_prompt_color_prefix white
  set -g __fish_git_prompt_color_suffix white
  set -g __fish_git_prompt_showdirtystate true
  set -g __fish_git_prompt_showuntrackedfiles true
  set -g __fish_git_prompt_showstashstate true

  # FIXME: below var causes rendering issues with fish v3.2.0
  set -g __fish_git_prompt_show_informative_status true 


  # Only calculate once, to save a few CPU cycles when displaying the prompt
  if not set -q __fish_prompt_hostname
    # set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
    set -g __fish_prompt_hostname $orange(hostname|cut -d . -f 1)(set_color normal)
  end
  if not set -q __fish_prompt_char
    if [ (id -u) -eq 0 ]
      set -g __fish_prompt_char (set_color red)'λ'(set_color normal)
    else  
      set -g __fish_prompt_char 'λ'
    end
  end
  
  # change `at` to `ssh` when an interactive ssh session is present
  if [ "$SSH_TTY" = "" ]
    set -g location at
    # set -g __fish_prompt_hostname (set_color orange)(hostname|cut -d . -f 1)
  else # connected via ssh
    if [ "$TERM" = "xterm-256color-italic" -o "$TERM" = "tmux-256color" ]
      set -g location (echo -e "\e[3mssh\e[23m")
      # set -g ssh_hostname (echo -e $blue$__fish_prompt_hostname)
      set -g __fish_prompt_hostname $blue(hostname|cut -d . -f 1)(set_color normal)
    else
      set -g location ssh
      # set -g ssh_hostname (echo -e $blue$__fish_prompt_hostname)
      set -g __fish_prompt_hostname $blue(hostname|cut -d . -f 1)(set_color normal)
    end
  end

  if [ (id -u) -eq 0 ]
    # top line > Superuser
    echo -n $red'╭─'$hotpink$USER $white$location $__fish_prompt_hostname$white' in '$limegreen(pwd)$turquoise
    __fish_git_prompt " (%s)"
    echo
    # bottom line > Superuser
    echo -n $red'╰'
    echo -n $red'─'$__fish_prompt_char $normal
  else # top line > non superuser's
    echo -n $white'╭─'$hotpink$USER $white$location $__fish_prompt_hostname$white' in '$limegreen(pwd)$turquoise
    __fish_git_prompt " (%s)"
    echo
    # bottom line > non superuser's
    echo -n $white'╰'
    echo -n $white'─'$__fish_prompt_char $normal
  end
  
  # NOTE: disable `VIRTUAL_ENV_DISABLE_PROMPT` in `config.fish`
  # see:  https://virtualenv.pypa.io/en/latest/reference/#envvar-VIRTUAL_ENV_DISABLE_PROMPT
  # support for virtual env name
  if set -q VIRTUAL_ENV
      echo -n "($turquoise"(basename "$VIRTUAL_ENV")"$white)"
  end
end

