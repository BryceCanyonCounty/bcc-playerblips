-- Stolen from vorp_admin slimmed down to what I'm using
local VorpCore = {}
TriggerEvent("getCore", function(core)
    VorpCore = core
end)

RegisterServerEvent('mwg_playerblips:GetPlayers')
AddEventHandler('mwg_playerblips:GetPlayers', function()
    local _source = source
    local players = GetPlayers()
    local data = {}

    for _, player in ipairs(players) do
        local playerPed = GetPlayerPed(player)

        if DoesEntityExist(playerPed) then
            local coords = GetEntityCoords(playerPed)
            local User = VorpCore.getUser(player)
            local Character = User.getUsedCharacter --get player info
            if Character.firstname then
                local playername = Character.firstname .. ' ' .. Character.lastname --player char name

                data[tostring(player)] = {
                    serverId = player,
                    x = coords.x,
                    y = coords.y,
                    z = coords.z,
                    name = GetPlayerName(player),
                    PlayerName = playername,
                }
            end
        end
    end
    TriggerClientEvent("mwg_playerblips:SendPlayers", _source, data)
end)
