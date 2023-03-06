function CreateAddonAccount(name, money)
	local self = {}

	self.name  = name
	self.money = money

	function self.addMoney(m)
		self.money = self.money + m
		exports.pefcl:addBankBalanceByIdentifier(0, {
					amount = m,
					message = "Wp³acono na konto firmowe",
					identifier = name
				})
	end

	function self.removeMoney(m)
		self.money = self.money - m
		exports.pefcl:removeBankBalanceByIdentifier(0, {
					amount = m,
					message = "Wyp³acono z konta firmowego",
					identifier = name
				})
	end
	return self
end