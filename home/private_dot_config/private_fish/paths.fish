set -gx XDG_CONFIG_HOME    $HOME/.config
set -gx XDG_CACHE_HOME     $HOME/.cache/
set -gx XDG_DATA_HOME      $HOME/.local/share
set -gx XDG_STATE_HOME     $HOME/.local/state/
set -gx ANDROID_USER_HOME  $XDG_DATA_HOME/android
set -gx GRADLE_USER_HOME   $XDG_DATA_HOME/gradle
set -gx CARGO_HOME         $XDG_DATA_HOME/cargo
set -gx GNUPGHOME          $XDG_DATA_HOME/gnupg
set -gx SDKMAN_DIR         $XDG_DATA_HOME/sdkman
set -gx RUSTUP_HOME        $XDG_DATA_HOME/rustup
set -gx GNUPGHOME          $XDG_DATA_HOME/gnupg
set -gx HISTFILE           $XDG_STATE_HOME/bash/history
set -gx R_LIBS_USER        $HOME/Apps/R
fish_add_path ~/go/bin
fish_add_path $CARGO_HOME/bin
fish_add_path ~/.local/bin/
fish_add_path ~/.config/bin/
fish_add_path ~/Apps
fish_add_path /opt/lampp/
fish_add_path ~/.spicetify
mise activate fish | source
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
