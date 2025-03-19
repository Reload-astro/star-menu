local Decimals = 4
local Clock = os.clock()

local default_color = Color3.fromRGB(79, 155, 255)
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Reload-astro/star-menu/refs/heads/main/source.lua'))({
    cheatname = 'Example',
    gamename = '[Menu Library]',
    fileext = '.cfg',
    logo = '140593867166824',
    icon = '140593867166824',
    Accent = default_color
})

local ui = {window = nil, sections = {}, tabs = {}}

ui.window = Library:New({Size = UDim2.new(0, 600, 0, 500)})

ui.window:Seperator({Name = 'Combat'})
ui.tabs['legit'] = ui.window:Page({
    Name = 'Legit',
    Icon = 'http://www.roblox.com/asset/?id=6023426921'
})
ui.sections['legit_main'] = ui.tabs['legit']:Section({
    Name = 'Main',
    Side = 'Left',
    Size = 427
})

ui.tabs['rage'] = ui.window:Page({
    Name = 'Rage',
    'http://www.roblox.com/asset/?id=6023426921'
})

ui.window:Seperator({Name = 'Visuals'})
ui.tabs['world'] = ui.window:Page({
    Name = 'World',
    Icon = 'http://www.roblox.com/asset/?id=6034684930'
})

ui.tabs['view'] = ui.window:Page({
    Name = 'View',
    Icon = 'http://www.roblox.com/asset/?id=6031075931'
})

ui.window:Seperator({Name = 'Player'})
ui.tabs['movement'] = ui.window:Page({
    Name = 'Movement',
    Icon = 'http://www.roblox.com/asset/?id=6034754445'
})

ui.tabs['anti_aim'] = ui.window:Page({
    Name = 'Anti Aim',
    Icon = 'http://www.roblox.com/asset/?id=14760676189'
})

ui.window:Seperator({Name = 'Settings'})
ui.tabs['settings'] = ui.window:Page({
    Name = 'Settings',
    Icon = 'http://www.roblox.com/asset/?id=6031280882'
})

ui.sections['legit_main']:Toggle({
    Name = 'Example Toggle',
    Flag = 'example_toggle'
})

ui.sections['legit_main']:Keybind({
    Flag = 'example_keybind',
    Name = 'Example Keybind',
    Default = Enum.KeyCode.Q,
    Mode = 'Toggle'
})

ui.sections['legit_main']:Slider({
    Name = 'Example Slider',
    Flag = 'example_slider',
    Default = 1,
    Minimum = 0,
    Maximum = 100,
    Decimals = 0.01,
    Ending = '%'
})

ui.sections['legit_main']:List({
    Name = 'Example Listbox',
    Flag = 'example_listbox',
    Options = {'One', 'Two', 'Three', 'Four'},
    Default = 'One'
})

ui.sections['legit_main']:Colorpicker({
    Name = 'Example Colorpicker',
    Flag = 'example_colorpicker',
    Default = default_color
})

Library:Configs(ui.tabs['settings'])

local Time = (string.format("%."..tostring(Decimals).."f", os.clock() - Clock))
Library:Notification(("Loaded In "..tostring(Time)), 6)
