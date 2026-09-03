fx_version 'cerulean'
games { 'gta5' }
lua54 'yes'


server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'config.lua',
    'server.lua'
}

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'config.lua',
    'client.lua'
}

shared_scripts { '@es_extended/imports.lua', '@ox_lib/init.lua', 'config.lua' }

dependencies { 'ox_lib' }