fx_version 'adamant'

game 'gta5'

description 'ESX Billing to pefcl by dziksx'

lua54 'yes'

version '1.6.0'

shared_script '@es_extended/imports.lua'

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua'
}

dependency 'es_extended'
