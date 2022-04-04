# Path to Oh My Fish install.
set -q XDG_DATA_HOME
and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
or set -gx OMF_PATH "$HOME/.local/share/omf"
set fish_greeting

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# set PATH $HOME/.rbenv/bin $PATH
# set PATH $HOME/.rbenv/shims $PATH

# Ubuntu

# set --export ANDROID $HOME/Android;

# set --export ANDROID_HOME $ANDROID/Sdk;
# set -gx PATH $ANDROID_HOME/tools $PATH;
# #set -gx PATH $ANDROID_HOME/usr/local/opt/android-sdk $PATH;
# set -gx PATH $ANDROID_HOME/platform-tools $PATH;


# ----------------------------------




# set --export (pwd)/flutter/bin $PATH
set -gx PATH $PATH $HOME/.deno/bin
set -gx PATH $PATH $HOME/flutter/bin
set -gx PATH $PATH $HOME/flutter/.pub-cache/bin

set -gx PATH $PATH $HOME/.pub-cache/bin

# set -gx PATH="$PATH":"$HOME/.pub-cache/bin"

set --export ANDROID $HOME/Library/Android;

set --export ANDROID_HOME $ANDROID/sdk;
set -gx PATH $ANDROID_HOME/tools $PATH;
#set -gx PATH $ANDROID_HOME/usr/local/opt/android-sdk $PATH;
set -gx PATH $ANDROID_HOME/platform-tools $PATH;

function mvim
  open -a 'macvim' .
end

function web
  open -a /Applications/WebStorm.app .
end

function dk
  cd ~/Desktop
end

function dg
  cd ~/Documents/GitHub
end

function serve
  yarn serve
end

function gpull
  git pull origin master
end

function gpush
  git push origin 
end
