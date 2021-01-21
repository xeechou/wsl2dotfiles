export XDG_DATA_DIRS=${HOME}/.local/share/flatpak/exports/share/applications:/var/lib/flatpak/exports/share/applications:/usr/share

export GEM_HOME="$HOME/.local/share/gems"
export npm_config_prefix=~/.node_modules
export CARGO_HOME="$HOME/.cargo"
#this script is loaded again by pesudo terminal, a easy test you can do here is
#testing if any of the variable is already set

#export path, here we find the appending path that we want
export PATH_DEV=$HOME/.bin:$HOME/.node_modules/bin:$GEM_HOME/bin:$CARGO_HOME/bin
if ! [[ $PATH =~ "${PATH_DEV}.*" ]] ; then
    export PATH=$PATH_DEV:$PATH
fi

export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
export XDG_RUNTIME_DIR=${HOME}/.xdg_runtime

# setting those variables only if xwindow is not using
if [ -z ${DISPLAY} ] ; then

    export XDG_SESSION_TYPE=wayland
    export MOZ_ENABLE_WAYLAND=1 #for firefox
    ## qt
    export QT_QPA_PLATFORM=wayland
    export QT_WAYLAND_FORCE_DPI=physical
    export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
    ## EFL
    export ECORE_EVAS_ENGINE=wayland_egl
    export ELM_ENGINE=wayland_egl
    ## SDL
    export SDL_VIDEODRIVER=wayland
fi
