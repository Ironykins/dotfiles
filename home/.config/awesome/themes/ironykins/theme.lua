  --_____                 _          _           
  --\_   \_ __ ___  _ __ | | ___   _(_)_ __  ___ 
   --/ /\/ '__/ _ \| '_ \| |/ / | | | | '_ \/ __|
--/\/ /_ | | | (_) | | | |   <| |_| | | | | \__ \
--\____/ |_|  \___/|_| |_|_|\_\\__, |_|_| |_|___/
                             --|___/             
   --_                                         
  --/_\__      _____  ___  ___  _ __ ___   ___ 
 --//_\\ \ /\ / / _ \/ __|/ _ \| '_ ` _ \ / _ \
--/  _  \ V  V /  __/\__ \ (_) | | | | | |  __/
--\_/ \_/\_/\_/ \___||___/\___/|_| |_| |_|\___|

--Based on Zenburn
local awful = require("awful")

theme = {}
theme.theme_dir = awful.util.getdir("config") .. "/themes/ironykins"

theme.font          = "sans 11"
theme.useless_gap = 1

theme.widget_red = "#FF0000"
theme.widget_main_color = "#EEEEEE"

theme.bg_normal = "#2F2F2F"
theme.bg_focus  = "#1E2320"
theme.bg_urgent = "#3F3F3F"
theme.bg_minimize   = "#444444"
theme.bg_systray    = theme.bg_normal

theme.fg_normal = "#DCDCCC"
theme.fg_focus  = "#F0DFAF"
theme.fg_urgent = "#CC9393"
theme.fg_minimize   = "#ffffff"

theme.border_width  = 2
theme.border_normal = "#3F3F3F"
theme.border_focus = "#009900"
theme.border_marked = "#CC9393"

--Let something else manage the wallpaper.
-- theme.wallpaper_cmd = { "hsetroot -solid '#000000'" }
theme.wallpaper = theme.theme_dir .. "/wallpaper.jpg"

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#3F3F3F"
theme.titlebar_bg_normal = "#3F3F3F"
-- }}}

theme.tasklist_bg_focus = "#002E00"
theme.tasklist_fg_focus = "#AFAFAF"
--theme.tasklist_disable_task_name = true

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- {{{ Taglist
theme.taglist_squares_sel   = theme.theme_dir .. "/taglist/squarefz.png"
theme.taglist_squares_unsel = theme.theme_dir .. "/taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = 15
theme.menu_width  = 100
-- }}}

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- {{{ Mouse finder
theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_normal = theme.theme_dir .. "/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = theme.theme_dir .. "/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = theme.theme_dir .. "/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = theme.theme_dir .. "/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = theme.theme_dir .. "/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = theme.theme_dir .. "/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = theme.theme_dir .. "/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = theme.theme_dir .. "/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = theme.theme_dir .. "/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = theme.theme_dir .. "/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = theme.theme_dir .. "/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = theme.theme_dir .. "/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = theme.theme_dir .. "/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = theme.theme_dir .. "/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = theme.theme_dir .. "/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme.theme_dir .. "/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = theme.theme_dir .. "/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = theme.theme_dir .. "/titlebar/maximized_focus_active.png"

-- }}}

-- You can use your own layout icons like this:
-- {{{ Layout
theme.layout_tile       = theme.theme_dir .. "/layouts/tile.png"
theme.layout_tileleft   = theme.theme_dir .. "/layouts/tileleft.png"
theme.layout_tilebottom = theme.theme_dir .. "/layouts/tilebottom.png"
theme.layout_tiletop    = theme.theme_dir .. "/layouts/tiletop.png"
theme.layout_fairv      = theme.theme_dir .. "/layouts/fairv.png"
theme.layout_fairh      = theme.theme_dir .. "/layouts/fairh.png"
theme.layout_spiral     = theme.theme_dir .. "/layouts/spiral.png"
theme.layout_dwindle    = theme.theme_dir .. "/layouts/dwindle.png"
theme.layout_max        = theme.theme_dir .. "/layouts/max.png"
theme.layout_fullscreen = theme.theme_dir .. "/layouts/fullscreen.png"
theme.layout_magnifier  = theme.theme_dir .. "/layouts/magnifier.png"
theme.layout_floating   = theme.theme_dir .. "/layouts/floating.png"
-- }}}

-- {{{ Misc
--theme.awesome_icon           = theme.theme_dir .. "/awesome-icon.png"
theme.awesome_icon           = theme.theme_dir .. "/foxico.png"
theme.menu_submenu_icon      = "/usr/share/awesome/themes/default/submenu.png"
theme.tasklist_floating_icon = "/usr/share/awesome/themes/default/tasklist/floatingw.png"
-- }}}

-- Define the icon theme for application icons. If not set then the icons 
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
--theme.icon_theme = nil

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
