---------------------------------------
---------- CREATE BY WERSTAN ----------
---------------------------------------


ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

ESX.RegisterUsableItem('gps', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('ws_gps:UseGPS', source)
end)


print('Devellopper par Werstan')