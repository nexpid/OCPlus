-- quick hotfix
local old
old = hookfunction(game.HttpGet, function(a, b)
    if b == "https://raw.githubusercontent.com/Gabe616/OCPlus/main/VERSION" then return "0.3-ALPHA" end

    return _G.oldhttpget(a, b)
end)
_G.oldhttpget = _G.oldhttpget or old

loadstring(game:HttpGet("https://raw.githubusercontent.com/Gabe616/OCPlus/main/script.lua"), "=OCPlus.0.3-ALPHA")()