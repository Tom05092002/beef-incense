RegisterServerEvent('beef:thapnhang')
AddEventHandler('beef:thapnhang', function()
        exports.ox_inventory:RemoveItem(source, 'incense', 1)
end)

RegisterServerEvent('beef:lixi')
AddEventHandler('beef:lixi', function()
    local random = math.random(1, 100)
    if random < 50 then
        TriggerClientEvent('okokNotify:Alert', source, "Thông Báo", "Bạn đã nhận được x1 bao lì xì", 5000, 'success')
        exports.ox_inventory:AddItem(source, 'luckymoney', 1)
    elseif random > 50 then
        TriggerClientEvent('okokNotify:Alert', source, "Thông Báo", "Bạn chưa thành tâm nên chưa có lì xì !", 5000, 'error')
    end
end)

RegisterServerEvent('beef:sudunglixi')
AddEventHandler('beef:sudunglixi', function()
    local xPlayer  = ESX.GetPlayerFromId(source)
    local random = math.random(1, 100)
    if random < 5 then
        exports.ox_inventory:RemoveItem(source, 'luckymoney', 1)
        xPlayer.addMoney(1000000)
        TriggerClientEvent('okokNotify:Alert', source, "Thông Báo", "Bạn đã nhận được 1000000$", 5000, 'success')
    elseif random > 5 and random < 10 then
        exports.ox_inventory:RemoveItem(source, 'luckymoney', 1)
        xPlayer.addMoney (500000)
        TriggerClientEvent('okokNotify:Alert', source, "Thông Báo", "Bạn đã nhận được 500000$", 5000, 'success')
    elseif random > 10 and random < 30 then
        exports.ox_inventory:RemoveItem(source, 'luckymoney', 1)
        xPlayer.addMoney (50000)
        TriggerClientEvent('okokNotify:Alert', source, "Thông Báo", "Bạn đã nhận được 50000$", 5000, 'success')
    elseif random > 30 and random < 50 then 
        exports.ox_inventory:RemoveItem(source, 'luckymoney', 1)
        exports.ox_inventory:AddItem(source, 'water', 5)
        TriggerClientEvent('okokNotify:Alert', source, "Thông Báo", "Bạn đã nhận được x5 chai nước ", 5000, 'success')
    elseif random > 50 and random < 70 then 
        exports.ox_inventory:RemoveItem(source, 'luckymoney', 1)
        exports.ox_inventory:AddItem(source, 'burger', 5)
        TriggerClientEvent('okokNotify:Alert', source, "Thông Báo", "Bạn đã nhận được x5 bánh burger", 5000, 'success')
    elseif random > 70 and random < 100 then 
        exports.ox_inventory:RemoveItem(source, 'luckymoney', 1)
        TriggerClientEvent('okokNotify:Alert', source, "Thông Báo", "Chúc bạn may mắn lần sau kkk", 5000, 'success')
    end
end)