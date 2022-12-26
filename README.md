# OCPlus Addons
User-generated addons for OCPlus! (Fire will rewrite this later to look better)  
Check out [example.lua](/example.lua) for an example of an addon.

## Reference
- [How To Submit](#how-to-submit)
- [Addon Documentation](#Addon-documentation)
    - [Addon](#addon--object)
    - [Addon.title](#addontitle--string)
    - [Addon.description](#addondescription--string)
    - [Addon.version](#addonversion--float)
    - [Addon.addonVersion](#addonaddonversion--string)
    - [Addon.author](#addonauthor--int)
    - [Addon.settings](#addonsettings--dictionary)
        - [Setting](#setting--object)
        - [Setting.name](#settingname--string)
        - [Setting.id](#settingid--string)
        - [Setting.type](#settingtype--string)
        - [Setting.description](#settingdescription--string)
        - [Setting.choose?](#settingchoose--string)
    - [Addon.data](#addondata--dictionary)
    - [Addon.run](#addonrun--runner)
        - [Runner](#runner--object)
        - [Runner.start](#runnerstart--function)
        - [Runner.update](#runnerupdate--function)
        - [Runner.stop](#runnerstop--function)
    - [Util](#util--object)
    - [Util.data](#utildata--object)
    - [Util.run](#utilrun--runner)
    - [Util.log](#utillog--functionmessage--any)
    - [Util.warn](#utilwarn--functionmessage--any)
    - [Util.error](#utilerror--functionmessage--any)
    - [Util.addEvent](#utiladdevent--functionid--string-event--rbxscriptconnection--nil)
    - [Util.removeEvent](#utilremoveevent--functionid--string--rbxscriptconnectionnil)
    - [Util.removeAllEvents](#utilremoveallevents--function--nil)
- [Help Out](#help-out)

## How To Submit
Currently, there is no way to submit an addon.

## Addon Documentation
### `Addon :: object`
The Addon object
### `Addon.title :: string`
The Addon's visible title
### `Addon.description :: string`
The Addon's description
### `Addon.version :: float`
The Addon's version
### `Addon.addonVersion :: string`
The Addon's structure version
### `Addon.author :: int`
The Addon's author user ID
### `Addon.settings :: Setting[]`
Array of Setting objects  
​  
### `Setting :: object`
The Setting object
### `Setting.name :: string`
Visual name of the setting
### `Setting.id :: string`
Hidden ID of the setting
### `Setting.type :: string`
The type of the setting
### `Setting.description :: string`
The description of the setting
### `Setting.choose? :: string?`
Available options for the setting.  
(Only used for the setting type `choose`)  
​  
### `Addon.data :: object`
An object of the Addon's save data (must be JSON friendly!)
### `Addon.run :: Runner`
Dictionary containing the Addon's runner functions  
​  
### `Runner :: object`
The Runner object. All runner functions are surrounded by `pcall()` and errors logged with `Util.error`.
### `Runner.start :: function`
The function that gets ran when the addon is enabled.
Passed arguments:
- **[Util](#util--object)** — The Addon's Util object
### `Runner.update :: function`
The function that gets ran when a setting is changed.
Passed arguments:
- **[Util](#util--object)** — The Addon's Util object
- **key** — The Setting's ID that was changed.
### `Runner.stop :: function`
The function that gets ran when the addon is disabled or the script is reloaded.
Passed arguments:
- **[Util](#util--object)** — The Addon's Util object  
​  
### `Util :: object`
The Util object
### `Util.data :: object`
The [Addon.data](#addondata--object) object
### `Util.run :: Runner`
The [Addon.run](#addonrun--runner) object
### `Util.log :: function(message :: any)`
Logs a message to the console with the addon's name prepended.
### `Util.warn :: function(message :: any)`
Warns a message to the console with the addon's name prepended.
### `Util.error :: function(message :: any)`
Errors a message to the console with the addon's name prepended.
### `Util.addEvent :: function(id :: string, event :: RBXScriptConnection) => nil`
Used for safely registering addon-only events
### `Util.removeEvent :: function(id :: string) => RBXScriptConnection|nil`
Removes an addon-only event and returns it
### `Util.removeAllEvents :: function() => nil`
Removes all of the addon-only events. Automatically runs with [Runner.stop](#runnerstop--function).

## Help Out
Do you feel like something is missing, or just want to help out? Create an issue/pull request!