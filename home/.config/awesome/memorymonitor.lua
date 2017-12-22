-------------------------------------------------
-- CPU Widget for Awesome Window Manager
-- Shows the current CPU utilization
-- More details could be found here:
-- https://github.com/streetturtle/awesome-wm-widgets/tree/master/cpu-widget

-- @author Pavel Makhov
-- @copyright 2017 Pavel Makhov
-------------------------------------------------
local beautiful = require("beautiful")
local watch = require("awful.widget.watch")
local tooltip = require("awful.tooltip")
local wibox = require("wibox")

local memorymonitor_widget = wibox.widget {
    max_value = 1,
    thickness = 4,
    start_angle = 4.71238898, -- 2pi*3/4
    forced_height = 17,
    forced_width = 17,
    bg = "#ffffff11",
    paddings = 2,
    widget = wibox.container.arcchart,
    -- widget = wibox.widget.textbox,
}

-- mirros and pushs up a bit
local memory_widget = wibox.container.margin(wibox.container.mirror(memorymonitor_widget, {horizontal = true}), 6, 6, 2, 2)

local tip = tooltip({
  objects = { memorymonitor_widget },
  text = "Memory Usage",
})

watch("free | grep '^Mem:'", 1,
    function(widget, stdout, _,_,_)
        local total,used = stdout:match('(%d+)%s+(%d+)')
        local percentage = tonumber(used)/tonumber(total);
        
        widget.value = percentage
        widget.text = percentage

        if percentage > 0.8 then
            widget.colors = { beautiful.widget_red }
        else
            widget.colors = { beautiful.widget_main_color }
        end
    end,
    memorymonitor_widget
)

return memory_widget