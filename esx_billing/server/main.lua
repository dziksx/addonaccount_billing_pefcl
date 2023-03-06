RegisterServerEvent('esx_billing:sendBill')
AddEventHandler('esx_billing:sendBill', function(playerId, sharedAccountName, label, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	local xTarget = ESX.GetPlayerFromId(playerId)
	local firstname = xTarget.firstName or xTarget.get('firstName')
	local lastname = xTarget.lastName or xTarget.get('lastName')
	local to = (firstname..' '..lastname)
	local from = xPlayer.job.label
	sharedAccountName = string.gsub(sharedAccountName, "society_", "")
	amount = ESX.Math.Round(amount)								

	if amount > 0 and xTarget then
		TriggerEvent('esx_addonaccount:getSharedAccount', sharedAccountName, function(account)
			if account then
			exports.pefcl:createInvoice(source, { to = to, toIdentifier = xTarget.identifier, from = from, fromIdentifier = xPlayer.identifier, amount = amount, message = label, receiverAccountIdentifier = sharedAccountName})
					xTarget.showNotification(_U('received_invoice'))
			else
			exports.pefcl:createInvoice(source, { to = to, toIdentifier = xTarget.identifier, from = from, fromIdentifier = xPlayer.identifier, amount = amount, message = label})
					xTarget.showNotification(_U('received_invoice'))
			end
		end)
	end
end)
