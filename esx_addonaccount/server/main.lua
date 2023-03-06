
AddEventHandler('esx_addonaccount:getSharedAccount', function(name, cb)
	cb(GetSharedAccount(name))
end)

function GetSharedAccount(name)
	local SharedAccounts = {}
	local identifier = string.gsub(name, "society_", "")
	local money = exports.pefcl:getTotalBankBalanceByIdentifier(0, identifier)

	SharedAccounts[name] = CreateAddonAccount(identifier, money.data)
	return SharedAccounts[name]
end
