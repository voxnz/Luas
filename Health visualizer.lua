

local credit = ui.add_label("---Target Health Visualized---")




local label = ui.add_label("-~+ESP+~-")


local enableScript = ui.add_checkbox("Name", false)
local targetColorOpacity = ui.add_slider("Name Opacity", 255, 0, 255)


local function hsvToRGB(h, s, v, a)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then r, g, b = v, t, p
    elseif i == 1 then r, g, b = q, v, p
    elseif i == 2 then r, g, b = p, v, t
    elseif i == 3 then r, g, b = p, q, v
    elseif i == 4 then r, g, b = t, p, v
    elseif i == 5 then r, g, b = v, p, q
    end

    return r * 255, g * 255, b * 255, a * 255
end


local function update_target_color()
    if not enableScript:get() then
        return
    end

    local localPlayer = entity_list.get_local_player()
    if not localPlayer or not localPlayer:is_alive() then return end

    local targetIndex = client.get_current_target()
    if targetIndex == nil then return end

    local target = entity_list.get_client_entity(targetIndex)
    if target and target:is_alive() and target:get_team_number() ~= localPlayer:get_team_number() then
        if target:is_player() then
            local penis = ui.get('Visuals', 'Main', 'Esp', 'Default Target ESP', 'Name Color')
            local health_percentage = target:get_health() / target:get_max_health()
            local hue = health_percentage * 120 / 360 
            local saturation = 1
            local value = 1
            local opacity = targetColorOpacity:get() / 255
            local r, g, b, a = hsvToRGB(hue, saturation, value, opacity)
            penis:set(color(r, g, b, a))
        end
    end
end

callbacks.register("paint", function()
    update_target_color()
end)



local enableScript = ui.add_checkbox("Left Health Bar", false)
local targetColorOpacity = ui.add_slider("Left Health Bar Opacity", 255, 0, 255)


local function hsvToRGB(h, s, v, a)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then r, g, b = v, t, p
    elseif i == 1 then r, g, b = q, v, p
    elseif i == 2 then r, g, b = p, v, t
    elseif i == 3 then r, g, b = p, q, v
    elseif i == 4 then r, g, b = t, p, v
    elseif i == 5 then r, g, b = v, p, q
    end

    return r * 255, g * 255, b * 255, a * 255
end


local function update_target_color()
    if not enableScript:get() then
        return
    end

    local localPlayer = entity_list.get_local_player()
    if not localPlayer or not localPlayer:is_alive() then return end

    local targetIndex = client.get_current_target()
    if targetIndex == nil then return end

    local target = entity_list.get_client_entity(targetIndex)
    if target and target:is_alive() and target:get_team_number() ~= localPlayer:get_team_number() then
        if target:is_player() then
            local penis = ui.get('Visuals', 'Main', 'Esp', 'Default Target ESP', 'Health Color')
            local health_percentage = target:get_health() / target:get_max_health()
            local hue = health_percentage * 120 / 360
            local saturation = 1
            local value = 1
            local opacity = targetColorOpacity:get() / 255
            local r, g, b, a = hsvToRGB(hue, saturation, value, opacity)
            penis:set(color(r, g, b, a))
        end
    end
end

callbacks.register("paint", function()
    update_target_color()
end)

local enableScript = ui.add_checkbox("Top Health Bar", false)
local targetColorOpacity = ui.add_slider("Top Health Bar Opacity", 255, 0, 255)


local function hsvToRGB(h, s, v, a)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then r, g, b = v, t, p
    elseif i == 1 then r, g, b = q, v, p
    elseif i == 2 then r, g, b = p, v, t
    elseif i == 3 then r, g, b = p, q, v
    elseif i == 4 then r, g, b = t, p, v
    elseif i == 5 then r, g, b = v, p, q
    end

    return r * 255, g * 255, b * 255, a * 255
end


local function update_target_color()
    if not enableScript:get() then
        return 
    end

    local localPlayer = entity_list.get_local_player()
    if not localPlayer or not localPlayer:is_alive() then return end

    local targetIndex = client.get_current_target()
    if targetIndex == nil then return end

    local target = entity_list.get_client_entity(targetIndex)
    if target and target:is_alive() and target:get_team_number() ~= localPlayer:get_team_number() then
        if target:is_player() then
            local penis = ui.get('Visuals', 'Main', 'Esp', 'Default Target ESP', 'Top Health Color')
            local health_percentage = target:get_health() / target:get_max_health()
            local hue = health_percentage * 120 / 360
            local saturation = 1
            local value = 1
            local opacity = targetColorOpacity:get() / 255
            local r, g, b, a = hsvToRGB(hue, saturation, value, opacity)
            penis:set(color(r, g, b, a))
        end
    end
end

callbacks.register("paint", function()
    update_target_color()
end)



local enableScript = ui.add_checkbox("Health Text", false)
local targetColorOpacity = ui.add_slider("Health Text Opacity", 255, 0, 255)

local function hsvToRGB(h, s, v, a)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then r, g, b = v, t, p
    elseif i == 1 then r, g, b = q, v, p
    elseif i == 2 then r, g, b = p, v, t
    elseif i == 3 then r, g, b = p, q, v
    elseif i == 4 then r, g, b = t, p, v
    elseif i == 5 then r, g, b = v, p, q
    end

    return r * 255, g * 255, b * 255, a * 255 
end


local function update_target_color()
    if not enableScript:get() then
        return
    end

    local localPlayer = entity_list.get_local_player()
    if not localPlayer or not localPlayer:is_alive() then return end

    local targetIndex = client.get_current_target()
    if targetIndex == nil then return end

    local target = entity_list.get_client_entity(targetIndex)
    if target and target:is_alive() and target:get_team_number() ~= localPlayer:get_team_number() then
        if target:is_player() then
            local penis = ui.get('Visuals', 'Main', 'Esp', 'Default Target ESP', 'Health Text Color')
            local health_percentage = target:get_health() / target:get_max_health()
            local hue = health_percentage * 120 / 360
            local saturation = 1
            local value = 1
            local opacity = targetColorOpacity:get() / 255
            local r, g, b, a = hsvToRGB(hue, saturation, value, opacity)
            penis:set(color(r, g, b, a))
        end
    end
end

callbacks.register("paint", function()
    update_target_color()
end)



local enableScript = ui.add_checkbox("Skeleton", false)
local targetColorOpacity = ui.add_slider("Skeleton Opacity", 255, 0, 255)


local function hsvToRGB(h, s, v, a)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then r, g, b = v, t, p
    elseif i == 1 then r, g, b = q, v, p
    elseif i == 2 then r, g, b = p, v, t
    elseif i == 3 then r, g, b = p, q, v
    elseif i == 4 then r, g, b = t, p, v
    elseif i == 5 then r, g, b = v, p, q
    end

    return r * 255, g * 255, b * 255, a * 255 
end


local function update_target_color()
    if not enableScript:get() then
        return 
    end

    local localPlayer = entity_list.get_local_player()
    if not localPlayer or not localPlayer:is_alive() then return end

    local targetIndex = client.get_current_target()
    if targetIndex == nil then return end

    local target = entity_list.get_client_entity(targetIndex)
    if target and target:is_alive() and target:get_team_number() ~= localPlayer:get_team_number() then
        if target:is_player() then
            local penis = ui.get('Visuals', 'Main', 'Esp', 'Default Target ESP', 'Skeleton Color')
            local health_percentage = target:get_health() / target:get_max_health()
            local hue = health_percentage * 120 / 360
            local saturation = 1
            local value = 1
            local opacity = targetColorOpacity:get() / 255
            local r, g, b, a = hsvToRGB(hue, saturation, value, opacity)
            penis:set(color(r, g, b, a))
        end
    end
end

callbacks.register("paint", function()
    update_target_color()
end)




local label = ui.add_label("-~+CHAMS+~-")



local enableScript = ui.add_checkbox("Material Cham", false)
local targetColorOpacity = ui.add_slider("Material Opacity", 255, 0, 255)


local function hsvToRGB(h, s, v, a)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then r, g, b = v, t, p
    elseif i == 1 then r, g, b = q, v, p
    elseif i == 2 then r, g, b = p, v, t
    elseif i == 3 then r, g, b = p, q, v
    elseif i == 4 then r, g, b = t, p, v
    elseif i == 5 then r, g, b = v, p, q
    end

    return r * 255, g * 255, b * 255, a * 255
end


local function update_target_color()
    if not enableScript:get() then
        return 
    end

    local localPlayer = entity_list.get_local_player()
    if not localPlayer or not localPlayer:is_alive() then return end

    local targetIndex = client.get_current_target()
    if targetIndex == nil then return end

    local target = entity_list.get_client_entity(targetIndex)
    if target and target:is_alive() and target:get_team_number() ~= localPlayer:get_team_number() then
        if target:is_player() then
            local penis = ui.get('Visuals', 'Main', 'Chams', 'Default Target Chams', 'Player Material Color')
            local health_percentage = target:get_health() / target:get_max_health()
            local hue = health_percentage * 120 / 360
            local saturation = 1
            local value = 1
            local opacity = targetColorOpacity:get() / 255
            local r, g, b, a = hsvToRGB(hue, saturation, value, opacity)
            penis:set(color(r, g, b, a))
        end
    end
end

callbacks.register("paint", function()
    update_target_color()
end)

local enableScript = ui.add_checkbox("Overlay Cham", false)
local targetColorOpacity = ui.add_slider("Overlay Opacity", 255, 0, 255)


local function hsvToRGB(h, s, v, a)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then r, g, b = v, t, p
    elseif i == 1 then r, g, b = q, v, p
    elseif i == 2 then r, g, b = p, v, t
    elseif i == 3 then r, g, b = p, q, v
    elseif i == 4 then r, g, b = t, p, v
    elseif i == 5 then r, g, b = v, p, q
    end

    return r * 255, g * 255, b * 255, a * 255 
end


local function update_target_color()
    if not enableScript:get() then
        return d
    end

    local localPlayer = entity_list.get_local_player()
    if not localPlayer or not localPlayer:is_alive() then return end

    local targetIndex = client.get_current_target()
    if targetIndex == nil then return end

    local target = entity_list.get_client_entity(targetIndex)
    if target and target:is_alive() and target:get_team_number() ~= localPlayer:get_team_number() then
        if target:is_player() then
            local idk = ui.get('Visuals', 'Main', 'Chams', 'Default Target Chams', 'Player Overlay Color')
            local health_percentage = target:get_health() / target:get_max_health()
            local hue = health_percentage * 120 / 360
            local saturation = 1
            local value = 1
            local opacity = targetColorOpacity:get() / 255
            local r, g, b, a = hsvToRGB(hue, saturation, value, opacity)
            idk:set(color(r, g, b, a))
        end
    end
end

callbacks.register("paint", function()
    update_target_color()
end)



local label = ui.add_label("-~+GLOW+~-")


local enableScript = ui.add_checkbox("Blur Glow", false)
local targetColorOpacity = ui.add_slider("Blur Glow Opacity", 255, 0, 255)


local function hsvToRGB(h, s, v, a)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then r, g, b = v, t, p
    elseif i == 1 then r, g, b = q, v, p
    elseif i == 2 then r, g, b = p, v, t
    elseif i == 3 then r, g, b = p, q, v
    elseif i == 4 then r, g, b = t, p, v
    elseif i == 5 then r, g, b = v, p, q
    end

    return r * 255, g * 255, b * 255, a * 255 
end


local function update_target_color()
    if not enableScript:get() then
        return 
    end

    local localPlayer = entity_list.get_local_player()
    if not localPlayer or not localPlayer:is_alive() then return end

    local targetIndex = client.get_current_target()
    if targetIndex == nil then return end

    local target = entity_list.get_client_entity(targetIndex)
    if target and target:is_alive() and target:get_team_number() ~= localPlayer:get_team_number() then
        if target:is_player() then
            local idk = ui.get('Visuals', 'Main', 'Glow', 'Default Target Glow', 'Blur Color')
            local health_percentage = target:get_health() / target:get_max_health()
            local hue = health_percentage * 120 / 360 
            local saturation = 1
            local value = 1
            local opacity = targetColorOpacity:get() / 255
            local r, g, b, a = hsvToRGB(hue, saturation, value, opacity)
            idk:set(color(r, g, b, a))
        end
    end
end

callbacks.register("paint", function()
    update_target_color()
end)




local enableScript = ui.add_checkbox("Stencil Glow", false)
local targetColorOpacity = ui.add_slider("Stencil Glow Opacity", 255, 0, 255)

local function hsvToRGB(h, s, v, a)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then r, g, b = v, t, p
    elseif i == 1 then r, g, b = q, v, p
    elseif i == 2 then r, g, b = p, v, t
    elseif i == 3 then r, g, b = p, q, v
    elseif i == 4 then r, g, b = t, p, v
    elseif i == 5 then r, g, b = v, p, q
    end

    return r * 255, g * 255, b * 255, a * 255 
end


local function update_target_color()
    if not enableScript:get() then
        return 
    end

    local localPlayer = entity_list.get_local_player()
    if not localPlayer or not localPlayer:is_alive() then return end

    local targetIndex = client.get_current_target()
    if targetIndex == nil then return end

    local target = entity_list.get_client_entity(targetIndex)
    if target and target:is_alive() and target:get_team_number() ~= localPlayer:get_team_number() then
        if target:is_player() then
            local idk = ui.get('Visuals', 'Main', 'Glow', 'Default Target Glow', 'Stencil Color')
            local health_percentage = target:get_health() / target:get_max_health()
            local hue = health_percentage * 120 / 360 
            local saturation = 1
            local value = 1
            local opacity = targetColorOpacity:get() / 255
            local r, g, b, a = hsvToRGB(hue, saturation, value, opacity)
            idk:set(color(r, g, b, a))
        end
    end
end

callbacks.register("paint", function()
    update_target_color()
end)


local label = ui.add_label("-~+BACKTRACK CHAMS+~-")




local enableScript = ui.add_checkbox("Backtrack material", false)
local targetColorOpacity = ui.add_slider("BT material Opacity", 255, 0, 255)

local function hsvToRGB(h, s, v, a)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then r, g, b = v, t, p
    elseif i == 1 then r, g, b = q, v, p
    elseif i == 2 then r, g, b = p, v, t
    elseif i == 3 then r, g, b = p, q, v
    elseif i == 4 then r, g, b = t, p, v
    elseif i == 5 then r, g, b = v, p, q
    end

    return r * 255, g * 255, b * 255, a * 255 
end


local function update_target_color()
    if not enableScript:get() then
        return 
    end

    local localPlayer = entity_list.get_local_player()
    if not localPlayer or not localPlayer:is_alive() then return end

    local targetIndex = client.get_current_target()
    if targetIndex == nil then return end

    local target = entity_list.get_client_entity(targetIndex)
    if target and target:is_alive() and target:get_team_number() ~= localPlayer:get_team_number() then
        if target:is_player() then
            local repulse = ui.get('Visuals', 'Main', 'Chams', 'Default Target Chams', 'Backtrack Material Color')
            local health_percentage = target:get_health() / target:get_max_health()
            local hue = health_percentage * 120 / 360
            local saturation = 1
            local value = 1
            local opacity = targetColorOpacity:get() / 255
            local r, g, b, a = hsvToRGB(hue, saturation, value, opacity)
            repulse:set(color(r, g, b, a))
        end
    end
end

callbacks.register("paint", function()
    update_target_color()
end)





local enableScript = ui.add_checkbox("Backtrack Overlay", false)
local targetColorOpacity = ui.add_slider("BT Overlay Opacity", 255, 0, 255)

local function hsvToRGB(h, s, v, a)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then r, g, b = v, t, p
    elseif i == 1 then r, g, b = q, v, p
    elseif i == 2 then r, g, b = p, v, t
    elseif i == 3 then r, g, b = p, q, v
    elseif i == 4 then r, g, b = t, p, v
    elseif i == 5 then r, g, b = v, p, q
    end

    return r * 255, g * 255, b * 255, a * 255 
end


local function update_target_color()
    if not enableScript:get() then
        return
    end

    local localPlayer = entity_list.get_local_player()
    if not localPlayer or not localPlayer:is_alive() then return end

    local targetIndex = client.get_current_target()
    if targetIndex == nil then return end

    local target = entity_list.get_client_entity(targetIndex)
    if target and target:is_alive() and target:get_team_number() ~= localPlayer:get_team_number() then
        if target:is_player() then
            local repulse = ui.get('Visuals', 'Main', 'Chams', 'Default Target Chams', 'Backtrack Overlay Color')
            local health_percentage = target:get_health() / target:get_max_health()
            local hue = health_percentage * 120 / 360 
            local saturation = 1
            local value = 1
            local opacity = targetColorOpacity:get() / 255
            local r, g, b, a = hsvToRGB(hue, saturation, value, opacity)
            repulse:set(color(r, g, b, a))
        end
    end
end

callbacks.register("paint", function()
    update_target_color()
end)




local label = ui.add_label("-~+BACKTRACK GLOW+~-")



local enableScript = ui.add_checkbox("Backtrack Blur", false)
local targetColorOpacity = ui.add_slider("Backtrack Blur Opacity", 255, 0, 255)

local function hsvToRGB(h, s, v, a)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then r, g, b = v, t, p
    elseif i == 1 then r, g, b = q, v, p
    elseif i == 2 then r, g, b = p, v, t
    elseif i == 3 then r, g, b = p, q, v
    elseif i == 4 then r, g, b = t, p, v
    elseif i == 5 then r, g, b = v, p, q
    end

    return r * 255, g * 255, b * 255, a * 255 
end


local function update_target_color()
    if not enableScript:get() then
        return 
    end

    local localPlayer = entity_list.get_local_player()
    if not localPlayer or not localPlayer:is_alive() then return end

    local targetIndex = client.get_current_target()
    if targetIndex == nil then return end

    local target = entity_list.get_client_entity(targetIndex)
    if target and target:is_alive() and target:get_team_number() ~= localPlayer:get_team_number() then
        if target:is_player() then
            local repulse = ui.get('Visuals', 'Main', 'Glow', 'Default Target Glow', 'Backtrack Blur Color')
            local health_percentage = target:get_health() / target:get_max_health()
            local hue = health_percentage * 120 / 360
            local saturation = 1
            local value = 1
            local opacity = targetColorOpacity:get() / 255
            local r, g, b, a = hsvToRGB(hue, saturation, value, opacity)
            repulse:set(color(r, g, b, a))
        end
    end
end

callbacks.register("paint", function()
    update_target_color()
end)








local enableScript = ui.add_checkbox("Backtrack Stencil", false)
local targetColorOpacity = ui.add_slider("Backtrack Stencil Opacity", 255, 0, 255)


local function hsvToRGB(h, s, v, a)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then r, g, b = v, t, p
    elseif i == 1 then r, g, b = q, v, p
    elseif i == 2 then r, g, b = p, v, t
    elseif i == 3 then r, g, b = p, q, v
    elseif i == 4 then r, g, b = t, p, v
    elseif i == 5 then r, g, b = v, p, q
    end

    return r * 255, g * 255, b * 255, a * 255 
end


local function update_target_color()
    if not enableScript:get() then
        return 
    end

    local localPlayer = entity_list.get_local_player()
    if not localPlayer or not localPlayer:is_alive() then return end

    local targetIndex = client.get_current_target()
    if targetIndex == nil then return end

    local target = entity_list.get_client_entity(targetIndex)
    if target and target:is_alive() and target:get_team_number() ~= localPlayer:get_team_number() then
        if target:is_player() then
            local repulse = ui.get('Visuals', 'Main', 'Glow', 'Default Target Glow', 'Backtrack Stencil Color')
            local health_percentage = target:get_health() / target:get_max_health()
            local hue = health_percentage * 120 / 360 
            local saturation = 1
            local value = 1
            local opacity = targetColorOpacity:get() / 255
            local r, g, b, a = hsvToRGB(hue, saturation, value, opacity)
            repulse:set(color(r, g, b, a))
        end
    end
end

callbacks.register("paint", function()
    update_target_color()
end)

local label = ui.add_label("-~+ATTACHMENTS+~-")


local enableScript = ui.add_checkbox("Weapon Blur", false)
local targetColorOpacity = ui.add_slider("Weapon Blur Opacity", 255, 0, 255)


local function hsvToRGB(h, s, v, a)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then r, g, b = v, t, p
    elseif i == 1 then r, g, b = q, v, p
    elseif i == 2 then r, g, b = p, v, t
    elseif i == 3 then r, g, b = p, q, v
    elseif i == 4 then r, g, b = t, p, v
    elseif i == 5 then r, g, b = v, p, q
    end

    return r * 255, g * 255, b * 255, a * 255
end


local function update_target_color()
    if not enableScript:get() then
        return
    end

    local localPlayer = entity_list.get_local_player()
    if not localPlayer or not localPlayer:is_alive() then return end

    local targetIndex = client.get_current_target()
    if targetIndex == nil then return end

    local target = entity_list.get_client_entity(targetIndex)
    if target and target:is_alive() and target:get_team_number() ~= localPlayer:get_team_number() then
        if target:is_player() then
            local repulse = ui.get('Visuals', 'Main', 'Glow', 'Default Target Glow', 'Weapon Blur Color')
            local health_percentage = target:get_health() / target:get_max_health()
            local hue = health_percentage * 120 / 360
            local saturation = 1
            local value = 1
            local opacity = targetColorOpacity:get() / 255
            local r, g, b, a = hsvToRGB(hue, saturation, value, opacity)
            repulse:set(color(r, g, b, a))
        end
    end
end

callbacks.register("paint", function()
    update_target_color()
end)





local enableScript = ui.add_checkbox("Weapon Stencil", false)
local targetColorOpacity = ui.add_slider("Weapon Stencil Opacity", 255, 0, 255)


local function hsvToRGB(h, s, v, a)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then r, g, b = v, t, p
    elseif i == 1 then r, g, b = q, v, p
    elseif i == 2 then r, g, b = p, v, t
    elseif i == 3 then r, g, b = p, q, v
    elseif i == 4 then r, g, b = t, p, v
    elseif i == 5 then r, g, b = v, p, q
    end

    return r * 255, g * 255, b * 255, a * 255 
end


local function update_target_color()
    if not enableScript:get() then
        return 
    end

    local localPlayer = entity_list.get_local_player()
    if not localPlayer or not localPlayer:is_alive() then return end

    local targetIndex = client.get_current_target()
    if targetIndex == nil then return end

    local target = entity_list.get_client_entity(targetIndex)
    if target and target:is_alive() and target:get_team_number() ~= localPlayer:get_team_number() then
        if target:is_player() then
            local repulse = ui.get('Visuals', 'Main', 'Glow', 'Default Target Glow', 'Weapon Stencil Color')
            local health_percentage = target:get_health() / target:get_max_health()
            local hue = health_percentage * 120 / 360 
            local saturation = 1
            local value = 1
            local opacity = targetColorOpacity:get() / 255
            local r, g, b, a = hsvToRGB(hue, saturation, value, opacity)
            repulse:set(color(r, g, b, a))
        end
    end
end

callbacks.register("paint", function()
    update_target_color()
end)





local enableScript = ui.add_checkbox("Cosmetic Blur", false)
local targetColorOpacity = ui.add_slider("Cosmetic Blur Opacity", 255, 0, 255)


local function hsvToRGB(h, s, v, a)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then r, g, b = v, t, p
    elseif i == 1 then r, g, b = q, v, p
    elseif i == 2 then r, g, b = p, v, t
    elseif i == 3 then r, g, b = p, q, v
    elseif i == 4 then r, g, b = t, p, v
    elseif i == 5 then r, g, b = v, p, q
    end

    return r * 255, g * 255, b * 255, a * 255
end


local function update_target_color()
    if not enableScript:get() then
        return 
    end

    local localPlayer = entity_list.get_local_player()
    if not localPlayer or not localPlayer:is_alive() then return end

    local targetIndex = client.get_current_target()
    if targetIndex == nil then return end

    local target = entity_list.get_client_entity(targetIndex)
    if target and target:is_alive() and target:get_team_number() ~= localPlayer:get_team_number() then
        if target:is_player() then
            local repulse = ui.get('Visuals', 'Main', 'Glow', 'Default Target Glow', 'Cosmetic Blur Color')
            local health_percentage = target:get_health() / target:get_max_health()
            local hue = health_percentage * 120 / 360 
            local saturation = 1
            local value = 1
            local opacity = targetColorOpacity:get() / 255
            local r, g, b, a = hsvToRGB(hue, saturation, value, opacity)
            repulse:set(color(r, g, b, a))
        end
    end
end

callbacks.register("paint", function()
    update_target_color()
end)










local enableScript = ui.add_checkbox("Cosmetic Stencil", false)
local targetColorOpacity = ui.add_slider("Cosmetic Stencil Opacity", 255, 0, 255)

local function hsvToRGB(h, s, v, a)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then r, g, b = v, t, p
    elseif i == 1 then r, g, b = q, v, p
    elseif i == 2 then r, g, b = p, v, t
    elseif i == 3 then r, g, b = p, q, v
    elseif i == 4 then r, g, b = t, p, v
    elseif i == 5 then r, g, b = v, p, q
    end

    return r * 255, g * 255, b * 255, a * 255 
end


local function update_target_color()
    if not enableScript:get() then
        return 
    end

    local localPlayer = entity_list.get_local_player()
    if not localPlayer or not localPlayer:is_alive() then return end

    local targetIndex = client.get_current_target()
    if targetIndex == nil then return end

    local target = entity_list.get_client_entity(targetIndex)
    if target and target:is_alive() and target:get_team_number() ~= localPlayer:get_team_number() then
        if target:is_player() then
            local repulse = ui.get('Visuals', 'Main', 'Glow', 'Default Target Glow', 'Cosmetic Stencil Color')
            local health_percentage = target:get_health() / target:get_max_health()
            local hue = health_percentage * 120 / 360
            local saturation = 1
            local value = 1
            local opacity = targetColorOpacity:get() / 255
            local r, g, b, a = hsvToRGB(hue, saturation, value, opacity)
            repulse:set(color(r, g, b, a))
        end
    end
end

callbacks.register("paint", function()
    update_target_color()
end)



local credit = ui.add_label("Made by repulse")