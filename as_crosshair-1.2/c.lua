local crosshairEnabled = true

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if crosshairEnabled then
            local playerPed = PlayerPedId()
            if IsPlayerFreeAiming(PlayerId()) then
                HideHudComponentThisFrame(14) 
            end
        end
    end
end)

RegisterCommand('celownik_wlacz', function()
    crosshairEnabled = true
    ESX.ShowNotification('Ju turn on croszair.')
end, false)

RegisterCommand('celownik_wylacz', function()
    crosshairEnabled = false
    ESX.ShowNotification('Ju turn oww croszair.')
end, false)
