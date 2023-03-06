fx_version 'adamant'

game 'gta5'

description 'ESX Addon Account to pefcl by dziksx'

lua54 'yes'


server_scripts {
	'@es_extended/imports.lua',
	'@oxmysql/lib/MySQL.lua',
	'server/classes/addonaccount.lua',
	'server/main.lua'
}

dependency 'es_extended'
