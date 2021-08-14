---------------------------------------
---------- CREATE BY WERSTAN ----------
---------------------------------------

ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
	TriggerEvent('ws_gps:removeGPS')

end)

local function sendNotification(message)
    SetNotificationTextEntry("String")
    AddTextComponentString(message)
    DrawNotification(true, false)
end

RegisterNetEvent('ws_gps:UseGPS')
AddEventHandler('ws_gps:UseGPS', function()
local playerPed = PlayerPedId()

	if not gps then
		gps = true
		DisplayRadar(true)
		sendNotification("~g~Vous avez allumer votre GPS")
	elseif gps then
		gps = false
		DisplayRadar(false)
		sendNotification("~r~Vous avez éteint votre GPS")
	end
end)

RegisterNetEvent('ws_gps:removeGPS')
AddEventHandler('ws_gps:removeGPS', function()
	DisplayRadar(false)
end)