local enableVoteKick = ui.add_checkbox("Enable Vote Kick", false)
local enableLog = ui.add_checkbox("Enable Kick Log", false)
local lastVoteTime = -30

local function getRandomTeammateExcludeFriends()
    local localPlayer = entity_list.get_local_player()
    if not localPlayer then return nil end

    local teammates = {}
    for i = 1, 64 do
        local entity = entity_list.get_client_entity(i)
        if entity and entity:is_player() and entity:get_team_number() == localPlayer:get_team_number() and not entity:is_steam_friend() and entity:get_index() ~= localPlayer:get_index() then
            table.insert(teammates, entity)
        end
    end

    if #teammates > 0 then
        return teammates[math.random(#teammates)]
    end
    return nil
end

local function callVoteKick()
    local localPlayer = entity_list.get_local_player()
    if not localPlayer or not engine.is_connected() then return end

    if not server.is_valve_server() or not enableVoteKick:get() then return end
    
    local teammate = getRandomTeammateExcludeFriends()
    if teammate then
        local userId = pr.get_user_id(teammate:get_index())
        if userId and userId > 0 then
            if enableLog:get() then
                local playerName = teammate:get_name()
                console.log("Attempting to votekick: " .. playerName)
            end
            
            console.exec("callvote kick " .. tostring(userId))
            lastVoteTime = client.get_realtime()
        end
    end
end

local function onTick()
    if client.get_realtime() - lastVoteTime >= 30 then
        if engine.is_connected() then
            callVoteKick()
        end
    end
end

callbacks.register("pre_move", onTick)

local cred = ui.add_label("made by repulse")