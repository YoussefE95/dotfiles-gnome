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

@define-color view_bg_color #${palette[12]};
@define-color view_fg_color #${palette[1]};

@define-color headerbar_bg_color #${palette[0]};
@define-color headerbar_fg_color #${palette[1]};
@define-color headerbar_backdrop_color @window_bg_color;
@define-color headerbar_shade_color #${palette[0]};


@define-color card_bg_color #${palette[12]};
@define-color card_fg_color #${palette[1]};
@define-color card_shade_color #${palette[12]};

@define-color popover_bg_color #${palette[12]};
@define-color popover_fg_color #${palette[1]};
THEME
)"

printf '%s' "$output" > "${dest_dir}/${dest_file}"

gsettings set org.gnome.desktop.background picture-uri "file://${palette[13]}"
gsettings set org.gnome.desktop.background picture-uri-dark "file://${palette[13]}"
gsettings set org.gnome.desktop.interface icon-theme "${palette[14]}"
gsettings set org.gnome.desktop.interface cursor-theme "${palette[15]}"
gsettings set org.gnome.desktop.interface gtk-theme "${palette[16]}"
gsettings set org.gnome.desktop.wm.preferences theme "${palette[16]}"

dconf write /org/gnome/shell/extensions/user-theme/name "'${palette[16]}'"
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/palette "['#${palette[0]}', '#${palette[4]}', '#${palette[5]}', '#${palette[6]}', '#${palette[7]}', '#${palette[8]}', '#${palette[9]}', '#${palette[1]}', '#${palette[11]}', '#${palette[4]}', '#${palette[5]}', '#${palette[6]}', '#${palette[7]}', '#${palette[8]}', '#${palette[9]}', '#${palette[1]}']"
