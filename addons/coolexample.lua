local RS = game:GetService("RunService")

return {
    id = "coolexample",
    title = "Cool Example Addon",
    description = "A very cool addon which does absolutely nothing.",
    version = 1.0,
    author = 304346361,
    github = "https://raw.githubusercontent.com/Gabe616/OCPlus/main/addons/coolexample.lua",
    icon = "11176073563",
    settings = {
        {
            name = "Be Cool",
            id = "cool",
            type = "toggle",
            description = "Makes the addon 200% cooler."
        },
        {
            name = "Do Cool Thing",
            id = "coolkb",
            type = "keybind",
            description = "The key to press to do cool thing."
        },
        {
            name = "Cool Type",
            id = "coolsw",
            type = "choose",
            description = "Type of coolness",
            choose = {"Meh", "Very Cool"}
        },
    },
    data = {
        cool = false,
        coolkb = "Return", -- Keybinds are saved as strings so they can be saved to a JSON file
        coolsw = "Meh"
    },
    run = {
        start = function(Util)
            Util.log("Enabled!")
            Util.run.update(Util)
        end,
        input = function(Util, input)
            if input.KeyCode.Name == Util.data.coolkb then
                Util.log("Pressed the swag key!")
            end
        end,
        update = function(Util, key)
            if key then -- Called by addon manager
                Util.log(("%s has been changed to %s!"):format(key, tostring(Util.data[key])))
            end

            Util.removeEvent("coolness") -- Unregisters the coolness event
            if Util.data.cool then
                -- Registers coolness event again only if cool is set to true
                Util.addEvent("coolness", RS.RenderStepped:Connect(function()
                    Util.log(("Coolness currently set to: %s"):format(Util.data.coolsw))
                    -- This is just an example, do NOT do this! It will clog up the console
                end))
            end
        end,
        stop = function(Util)
            Util.log("Shutting down!")
            -- RenderStepped is automatically unregistered
        end
    },
}
