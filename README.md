# Player Blips

This script adds player blips client side so you know where other players are. (I don't recommend this on PvP)

Known Issues:
- If you reload the script while in game the current blips will remain on the map until client reload.
- If you click on the blip and it moves away it shows blip_name as the target of your waypoint.

Config Options
```lua
Config.Enable = true -- true enables player blips, false disables the script
Config.WaitTime = 0 -- Speed at which it updates the blips (Live update by default)
```