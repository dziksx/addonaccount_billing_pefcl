function CreateAddonAccount(name, money)
	local self = {}

	self.name  = name
	self.money = money

	function self.addMoney(m)
		self.money = self.money + m
		exports.pefcl:addBankBalanceByIdentifier(0, {
					amount = m,
					message = "Deposit to society account",
					identifier = name
				})
	end

	function self.removeMoney(m)
		self.money = self.money - m
		exports.pefcl:removeBankBalanceByIdentifier(0, {
					amount = m,
					message = "Withdraw from society account",
					identifier = name
				})
	end
	return self
end