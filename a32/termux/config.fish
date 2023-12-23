function fish_greeting
	echo -e '\e[6 q'
	neofetch
	fortune | cowsay
end

set -x PATH /data/data/com.termux/files/home/Apps/spring-3.1.2/bin $PATH
set -x PATH ~/go/bin $PATH
abbr u 'cd ../'
abbr uu 'cd ../../'
abbr uuu 'cd ../../..'
abbr up 'pkg upgrade'
abbr banno 'cd; cd ../usr/bin/p/'
set -x PYTHONSTARTUP "/data/data/com.termux/files/home/.pythonrc"
abbr j jobs
abbr sd 'cd /storage/3638-3333'
abbr rus 'cargo clean; cargo run'
abbr rhs 'runhaskell'
abbr hrm 'bash ~/scripts/clean.sh'
abbr du 'du -ha | sort -k1hr | head -n 20'
abbr d 'cd; cd d/repo'
abbr edit 'launch -a édi'
abbr o 'launch -a obs'
abbr ccc 'c'
abbr rs 'redis-server ~/../usr/etc/redis.conf'
abbr clp 'cd ~/d/repo/calypsodb'
abbr clps 'cd ~/storage/shared/Data/repo/calypsodb'
abbr wclps 'bash ~/scripts/inot.sh "d/repo/calypsodb" "storage/shared/Data/calypsodb"'
abbr gitconf 'git config --global --edit'
abbr vimconf 'cd; cd ~/.config/nvim/lua/nono'
abbr thanks 'clear;exit'
abbr gita 'git add .; git commit -m commit; git push origin main;'
abbr bs bullshit-generator
abbr starc 'nvim /data/data/com.termux/files/home/.config/starship.toml'
abbr a startarch
abbr CLS 'clear; exit; exit;'
abbr fc 'fortune | cowsay'
abbr l 'lsd -AX1'
abbr conf 'cd $HOME; nvim ./.config/fish/config.fish'
abbr py 'python3 -S'
abbr i 'pkg install'
abbr c echo\ -e\ \'\\e\[6\ q\'\;clear
abbr lzm 'cd /data/data/com.termux/files/home; cd ../usr/lib/Lazymux; python lazymux.py'
abbr vim nvim
abbr e exit
abbr usr 'cd /data/data/com.termux/files/home; cd ../usr/;ls'
abbr jou 'cd /data/data/com.termux/files/usr/rom/journal/'
abbr lcls 'clear; pwd; lsd -A'
abbr lg lazygit
abbr pipup 'python3 -m pip install --upgrade pip'
abbr ls 'lsd -AX'
abbr prdb 'cd /data/data/com.termux/files/home; cd storage/shared/Data/Webs/prdbms'
abbr hawk 'cd ../usr/lib/redhawk/RED_HAWK/'
abbr no 'cd /data/data/com.termux/files/home; cd storage/shared/Data/Webs/dev/nonomino'
abbr pgg 'pg_ctl -D $PREFIX/var/lib/postgresql'
abbr cur echo\ -e\ \'\\e\[6\ q\'
abbr rbr 'cd /data/data/com.termux/files/home; cd storage/shared/Data/Ruby'
abbr gitap 'git pull'
abbr show 'pkg show'
abbr cls echo\ -e\ \'\\e\[6\ q\'\;clear
abbr tree 'tree -d'
abbr wege 'curl -4 https://wttr.in/bangalore'
abbr bye 'clear;exit'
abbr A startarch
abbr u 'cd ../'
abbr uu 'cd ../../'
abbr uuu 'cd ../../..'
abbr up 'pkg upgrade'
abbr banno 'cd; cd ../usr/bin/p/'
abbr j jobs
abbr sd 'cd /storage/3638-3333'
abbr rus 'cargo clean; cargo run'
abbr rhs runhaskell
abbr hrm 'bash ~/scripts/clean.sh'
abbr du 'du -ha | sort -k1hr | head -n 20'
abbr d 'cd; cd d/repo'
abbr edit 'launch -a édi'
abbr o 'launch -a obs'
abbr ccc c
abbr rs 'redis-server ~/../usr/etc/redis.conf'
abbr clp 'cd ~/d/repo/calypsodb'
abbr clps 'cd ~/storage/shared/Data/repo/calypsodb'
abbr wclps 'bash ~/scripts/inot.sh "d/repo/calypsodb" "storage/shared/Data/calypsodb"'
abbr gitconf 'git config --global --edit'
abbr vimconf 'cd; cd ~/.config/nvim/lua/nono'
