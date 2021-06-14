ESX = nil


Citizen.CreateThread(function()
    while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(0)
    end
end)


RegisterCommand('abrir', function(source, args, rawCommand)
    if (args[1] ~= nil) then
        local vehicle = GetVehiclePedIsUsing(GetPlayerPed(-1))
        local puerta = tonumber(args[1])
        if puerta == 1 then
            SetVehicleDoorOpen(vehicle, 0, false, false)
        elseif puerta == 2 then
            SetVehicleDoorOpen(vehicle, 1, false, false)
        elseif puerta == 3 then
            SetVehicleDoorOpen(vehicle, 2, false, false)
        elseif puerta == 4 then
            SetVehicleDoorOpen(vehicle, 3, false, false)
        elseif puerta == 5 then
            SetVehicleDoorOpen(vehicle, 4, false, false)
        elseif puerta == 6 then
            SetVehicleDoorOpen(vehicle, 5, false, false)
		else
            ESX.ShowNotification('No hay mas puertas para abrir.')
	    end
    end
end)

RegisterCommand('cerrar', function(source, args, rawCommand)
    if (args[1] ~= nil) then
        local vehicle = GetVehiclePedIsUsing(GetPlayerPed(-1))
        local puerta = tonumber(args[1])
        if puerta == 1 then
            SetVehicleDoorShut(vehicle, 0, false)
        elseif puerta == 2 then
            SetVehicleDoorShut(vehicle, 1, false)
        elseif puerta == 3 then
            SetVehicleDoorShut(vehicle, 2, false)
        elseif puerta == 4 then
            SetVehicleDoorShut(vehicle, 3, false)
        elseif puerta == 5 then
            SetVehicleDoorShut(vehicle, 4, false)
        elseif puerta == 6 then
            SetVehicleDoorShut(vehicle, 5, false)
		else
            ESX.ShowNotification('No hay mas puertas para cerrar.')
	    end
    end
end)