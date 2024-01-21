palette=("${@}")

dest_dir="$HOME/.config/gtk-4.0"
dest_file="gtk.css"

output="$(cat << THEME
@define-color accent_bg_color #${palette[8]};
@define-color accent_fg_color #${palette[0]};
@define-color accent_color #${palette[8]};

@define-color destructive_bg_color #${palette[4]}; 
@define-color destructive_fg_color #${palette[0]};
@define-color destructive_color #${palette[4]};

@define-color success_bg_color #${palette[5]};
@define-color success_fg_color #${palette[1]};
@define-color success_color #${palette[5]};

@define-color warning_bg_color #${palette[6]};
@define-color warning_fg_color #${palette[1]};
@define-color warning_color #${palette[6]};

@define-color error_bg_color #${palette[4]};
@define-color error_fg_color #${palette[1]};
@define-color error_color #${palette[4]};

@define-color window_bg_color #${palette[0]};
@define-color window_fg_color #${palette[1]};

@define-color view_bg_color #${palette[0]};
@define-color view_fg_color #${palette[1]};

@define-color headerbar_bg_color #${palette[12]};
@define-color headerbar_fg_color #${palette[1]};
@define-color headerbar_backdrop_color #${palette[12]};
@define-color headerbar_shade_color #${palette[12]};

@define-color card_bg_color #${palette[12]};
@define-color card_fg_color #${palette[1]};
@define-color card_shade_color #${palette[12]};

@define-color popover_bg_color #${palette[12]};
@define-color popover_fg_color #${palette[1]};

.top-bar {
    background: #${palette[12]};
    color: #${palette[1]};
}
placessidebar {
    background-color: #${palette[12]};
    color: #${palette[1]};
}
.navigation-sidebar {
    background-color: #${palette[12]};
    color: #${palette[1]};
}

windowcontrols {
  border-spacing: 6px;
  padding: 0 10px;
}

windowcontrols:not(.empty).start:dir(ltr), windowcontrols:not(.empty).end:dir(rtl) {
  margin-right: 8px;
}

windowcontrols:not(.empty).start:dir(rtl), windowcontrols:not(.empty).end:dir(ltr) {
  margin-left: 8px;
}

headerbar.titlebar windowcontrols {
  border-spacing: 6px;
}

windowcontrols button > image {
  padding: 0;
  margin: 0;
  background-color: transparent;
  background-image: none;
}

windowcontrols button.close, windowcontrols button.maximize, windowcontrols button.minimize {
  min-width: 16px;
  min-height: 16px;
  margin: 8px 0;
  padding: 4px 0;
  background-position: center;
  background-repeat: no-repeat;
  background-size: 16px 16px;
}

windowcontrols button.close, windowcontrols button.close:hover, windowcontrols button.close:focus, windowcontrols button.close:active, windowcontrols button.close:backdrop, windowcontrols button.maximize, windowcontrols button.maximize:hover, windowcontrols button.maximize:focus, windowcontrols button.maximize:active, windowcontrols button.maximize:backdrop, windowcontrols button.minimize, windowcontrols button.minimize:hover, windowcontrols button.minimize:focus, windowcontrols button.minimize:active, windowcontrols button.minimize:backdrop {
  border-color: transparent;
  background-color: transparent;
  background-image: none;
  box-shadow: none;
  color: transparent;
}

windowcontrols button.close:backdrop, windowcontrols button.maximize:backdrop, windowcontrols button.minimize:backdrop {
  opacity: 1;
}

windowcontrols button.close {
  background-image: -gtk-scaled(url("assets/titlebutton-close-dark.png"), url("assets/titlebutton-close-dark@2.png"));
}

windowcontrols button.close:backdrop {
  background-image: -gtk-scaled(url("assets/titlebutton-close-backdrop-dark.png"), url("assets/titlebutton-close-backdrop-dark@2.png"));
}

windowcontrols button.close:backdrop:hover {
  background-image: -gtk-scaled(url("assets/titlebutton-close-backdrop-hover-dark.png"), url("assets/titlebutton-close-backdrop-hover-dark@2.png"));
}

windowcontrols button.close:hover {
  background-image: -gtk-scaled(url("assets/titlebutton-close-hover-dark.png"), url("assets/titlebutton-close-hover-dark@2.png"));
}

windowcontrols button.close:active {
  background-image: -gtk-scaled(url("assets/titlebutton-close-active-dark.png"), url("assets/titlebutton-close-active-dark@2.png"));
}

windowcontrols button.maximize {
  background-image: -gtk-scaled(url("assets/titlebutton-maximize-dark.png"), url("assets/titlebutton-maximize-dark@2.png"));
}

windowcontrols button.maximize:backdrop {
  background-image: -gtk-scaled(url("assets/titlebutton-maximize-backdrop-dark.png"), url("assets/titlebutton-maximize-backdrop-dark@2.png"));
}

windowcontrols button.maximize:backdrop:hover {
  background-image: -gtk-scaled(url("assets/titlebutton-maximize-backdrop-hover-dark.png"), url("assets/titlebutton-maximize-backdrop-hover-dark@2.png"));
}

windowcontrols button.maximize:hover {
  background-image: -gtk-scaled(url("assets/titlebutton-maximize-hover-dark.png"), url("assets/titlebutton-maximize-hover-dark@2.png"));
}

windowcontrols button.maximize:active {
  background-image: -gtk-scaled(url("assets/titlebutton-maximize-active-dark.png"), url("assets/titlebutton-maximize-active-dark@2.png"));
}

windowcontrols button.minimize {
  background-image: -gtk-scaled(url("assets/titlebutton-minimize-dark.png"), url("assets/titlebutton-minimize-dark@2.png"));
}

windowcontrols button.minimize:backdrop {
  background-image: -gtk-scaled(url("assets/titlebutton-minimize-backdrop-dark.png"), url("assets/titlebutton-minimize-backdrop-dark@2.png"));
}

windowcontrols button.minimize:backdrop:hover {
  background-image: -gtk-scaled(url("assets/titlebutton-minimize-backdrop-hover-dark.png"), url("assets/titlebutton-minimize-backdrop-hover-dark@2.png"));
}

windowcontrols button.minimize:hover {
  background-image: -gtk-scaled(url("assets/titlebutton-minimize-hover-dark.png"), url("assets/titlebutton-minimize-hover-dark@2.png"));
}

windowcontrols button.minimize:active {
  background-image: -gtk-scaled(url("assets/titlebutton-minimize-active-dark.png"), url("assets/titlebutton-minimize-active-dark@2.png"));
}

.fullscreen windowcontrols button.maximize, .maximized windowcontrols button.maximize {
  background-image: -gtk-scaled(url("assets/titlebutton-restore-dark.png"), url("assets/titlebutton-restore-dark@2.png"));
}

.fullscreen windowcontrols button.maximize:backdrop, .maximized windowcontrols button.maximize:backdrop {
  background-image: -gtk-scaled(url("assets/titlebutton-restore-backdrop-dark.png"), url("assets/titlebutton-restore-backdrop-dark@2.png"));
}

.fullscreen windowcontrols button.maximize:backdrop:hover, .maximized windowcontrols button.maximize:backdrop:hover {
  background-image: -gtk-scaled(url("assets/titlebutton-restore-backdrop-hover-dark.png"), url("assets/titlebutton-restore-backdrop-hover-dark@2.png"));
}

.fullscreen windowcontrols button.maximize:hover, .maximized windowcontrols button.maximize:hover {
  background-image: -gtk-scaled(url("assets/titlebutton-restore-hover-dark.png"), url("assets/titlebutton-restore-hover-dark@2.png"));
}

.fullscreen windowcontrols button.maximize:active, .maximized windowcontrols button.maximize:active {
  background-image: -gtk-scaled(url("assets/titlebutton-restore-active-dark.png"), url("assets/titlebutton-restore-active-dark@2.png"));
}
THEME
)"

printf '%s' "$output" > "${dest_dir}/${dest_file}"

gsettings set org.gnome.desktop.background picture-uri "file://${palette[13]}"
gsettings set org.gnome.desktop.interface icon-theme "${palette[14]}"
gsettings set org.gnome.desktop.interface cursor-theme "${palette[15]}"
gsettings set org.gnome.desktop.interface gtk-theme "${palette[16]}"
gsettings set org.gnome.desktop.wm.preferences theme "${palette[16]}"
dconf write /org/gnome/shell/extensions/user-theme/name "'${palette[16]}'"
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/palette "['#${palette[0]}', '#${palette[4]}', '#${palette[5]}', '#${palette[6]}', '#${palette[7]}', '#${palette[8]}', '#${palette[9]}', '#${palette[1]}', '#${palette[11]}', '#${palette[4]}', '#${palette[5]}', '#${palette[6]}', '#${palette[7]}', '#${palette[8]}', '#${palette[9]}', '#${palette[1]}']"
