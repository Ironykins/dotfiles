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
    widget = wibox.container.arcchart
}

-- mirros and pushs up a bit
local memory_widget = wibox.container.margin(wibox.container.mirror(memorymonitor_widget, {horizontal = true}), 6, 6, 2, 2)
local volumeInfo = {0,0,0};

local tip = tooltip({
  objects = { memorymonitor_widget },
  text = "Memory Usage",
  timer_function = function() 
      return ("<u><b>Memory Usage</b></u>\n<b>Used:</b> " .. math.floor((volumeInfo[1] * 100)+0.5)
              .. "%\n<b>Cached:</b> " .. math.floor((volumeInfo[2] * 100)+0.5)
              .. "%\n<b>Free:</b> " .. math.floor((volumeInfo[3] * 100) + 0.5) .. "%"
        )
  end
})

watch("free | grep '^Mem:'", 1,
    function(widget, stdout, _,_,_)
        local total,used,free,shared,cache,available = 
        stdout:match('(%d+)%s+(%d+)%s+(%d+)%s+(%d+)%s+(%d+)%s+(%d+)')
        local usedPercent = tonumber(used)/tonumber(total);
        local cachePercent = tonumber(cache)/tonumber(total);
        local freePercent = tonumber(free)/tonumber(total);
        
        volumeInfo = {usedPercent,cachePercent,freePercent}
        widget.values = {usedPercent,cachePercent}
        widget.colors = { "#EEEEEE", "#AAAAAA" }
    end,
    memorymonitor_widget
)

return memory_widget