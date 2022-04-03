local Framework, Spam = nil, false

RegisterNetEvent("esc_carkey:use", function(plate, model)
    if not Spam then
        for sayi, esc in pairs(GetGamePool('CVehicle')) do 
            local distance = #(GetEntityCoords(esc) - GetEntityCoords(PlayerPedId()))
            if distance <= Customize.LockRadius then
                if IsVehicleModel(esc, model) == 1 and Trim(GetVehicleNumberPlateText(esc)) == Trim(plate) then
                    Spam = true
                    animation(Customize.Animation)
                    if GetVehicleDoorLockStatus(esc) == 1 then
                        SetVehicleDoorsLocked(esc, 2)
                        PlayVehicleDoorCloseSound(esc, 1)
                        CarLights(esc, 2, 125)
                    elseif GetVehicleDoorLockStatus(esc) == 2 then
                        SetVehicleDoorsLocked(esc, 1)
                        PlayVehicleDoorOpenSound(esc, 0)
                        CarLights(esc, 1, 350)
                    end
                    Spam = false
                end
            end
        end
    end
end)


function CarLights(vehicle, number, wait)
	for i = 1, number do
        SetVehicleLights(vehicle, 2)
        Citizen.Wait(wait)
        SetVehicleLights(vehicle, 0)
        Citizen.Wait(wait)
    end
end

function animation(animation)
    RequestAnimDict(animation)
    while not HasAnimDictLoaded(animation) do Citizen.Wait(0)end
    TaskPlayAnim(PlayerPedId(), animation, "exit", 14.0, 10.0, -1, 48, 1, false, false, false)
end

function Trim(value)
    return (string.gsub(value, '^%s*(.-)%s*$', '%1'))
end