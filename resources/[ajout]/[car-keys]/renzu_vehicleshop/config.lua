Config = {}
Config.Locale = "en"
Config.Mysql = 'oxmysql' -- "ghmattisql", "mysql-async", "oxmysql"
Config.framework = 'ESX' -- ESX or QBCORE
Config.UsePopUI = false -- Create a Thread for checking playercoords and Use POPUI to Trigger Event, set this to false if using rayzone. Popui is originaly built in to RayZone -- DOWNLOAD https://github.com/renzuzu/renzu_popui
Config.Quickpick = false -- if false system will create a garage shell and spawn every vehicle you preview
Config.EnableTestDrive = true
Config.PlateSpace = true -- enable / disable plate spaces (compatibility with esx 1.1?)
Config.SaveJob = true -- this config is to save the value to owned_vehicles.job column
Config.Licensed = false -- Enable Driver Licensed Checker
Config.DisplayCars = true -- enable display of cars
Config.Marker = true -- use draw marker and Iscontrollpress native , popui will not work if this is true

Config.category = true -- true = voir par catégorie // false = voir par marque
-- VEHICLE THUMBNAILS IMAGE
-- this is standalone
Config.CustomImg = false -- if true your Config.CustomImgColumn IMAGE url will be used for each vehicles else, the imgs/uploads/MODEL.jpg
Config.CustomImgColumn = 'imglink' -- db column name
-- this is standalone
-- Config.use_renzu_vehthumb -- Config.CustomImg must be false
Config.use_renzu_vehthumb = false -- use vehicle thumb generation script
Config.RgbColor = true -- your framework or garage must support custom colors ex. https://github.com/renzuzu/renzu_garage

-- CARKEYS --
--EXTRA
Config.UseArenaSpawn = false -- will use custom location for spawning vehicle in quickpick == false
-- MAIN
VehicleShop = {
    ['pdm'] = { -- same with name
        name = "pdm", --LEGION
        title = "Concessionnaire",
        icon = 'https://i.ibb.co/v44KNf3K/pdm.png',
        type = 'car',
        job = 'all',
        default_garage = 'A',
        Dist = 4, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 595, scale = 0.7},
        Blipss = true,
        npc = 'cs_paper',
        shop_x = -56.9579150391, 
        shop_y = -1098.7921826172,
        shop_z = 26.422359466553, -- coordinates for this garage
        shop_h = 26.420000000,
        spawn_x = -32.283363342285,
        spawn_y = -1091.0841064453,
        spawn_z = 25.749485015869,
        heading = 340.23065185547, -- Vehicle spawn location,
        displaycars = {
            [1] = {model = 'jester3', value = 100000, coord = vector4(-47.427722930908,-1101.3747558594,25.714616775513,341.64694213867)},
            [2] = {model = 'fmj', value = 1000000, coord = vector4(-44.736125946045,-1094.1976318359,25.748092651367,158.2547454834)},
            [3] = {model = 'adder', value = 1000000, coord = vector4(-40.32751083374,-1095.6105957031,26.009906768799,158.58676147461)},
            [4] = {model = 'zentorno', value = 1000000, coord = vector4(-43.318450927734,-1102.1627197266,25.758722305298,340.29724121094)},
        }
    },

    ['Police Vehicle Shop'] = { -- same with name
        name = "Police Vehicle Shop", --MRPD police shop
        title = "Police Vehicle Shop",
        icon = 'https://i.ibb.co/v44KNf3K/pdm.png',
        job = 'police',
        type = 'car',
        default_garage = 'Police Garage',
        Dist = 10, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 662, scale = 0.7},
        npc = 'cs_paper',
        shop_x = 464.59,
        shop_y = -1013.17,
        shop_z = 28.07, -- coordinates for this garage
        shop_h = 185.00,
        spawn_x = 449.27224731445,
        spawn_y = -1025.3255615234,
        spawn_z = 27.905115127563,
        heading = 2.6015937328339, -- Vehicle spawn location
        plateprefix = 'LSPD', -- carefull using this, maximum should be 4, recommended is 3, use this only for limited vehicles, if you use this parameter in other shop, you might have a limited plates available, ex. LSPD1234 (max char of plate is 8) it means you only have 9999 vehicles possible with this LSPD
        shop = { -- if not vehicle is setup in Database SQL, we will use this
			{shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='police',name="Stanier Police Cruiser", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='police2',name="Buffalo Police Cruiser", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='police3',name="Interceptor Police Cruiser", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='police4',name="Stanier Unmarked Cruiser", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='police5',name="Stanier LE Cruiser", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='polgauntlet',name="Gauntlet Interceptor", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='poldominator10',name="Dominator FX Interceptor", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='polimpaler5',name="Impaler SZ Cruiser", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='polimpaler6',name="Impaler LX Cruiser", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='polfaction2',name="Outreach Faction", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='polgreenwood',name="Greenwood Cruiser", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='polbuffalo',name="Buffalo Cruiser", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='polbuffalo6',name="Buffalo EVX Cruiser", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='polcoquette4',name="Coquette D10 Pursuit", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='poldorado',name="Dorado Cruiser", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='polcaracara',name="Caracara Pursuit", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='polterminus',name="Terminus Patrol", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='policet',name="Police Transporter", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='policet3',name="Police Transport 3", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='policeb',name="Police Bike", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='policeb2',name="Money Fronts Police Bike", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='polignus',name="Ignus Pursuit", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='pranger',name="Park Ranger", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='sheriff',name="Sheriff Cruiser", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='sheriff2',name="Sheriff SUV", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='fbi',name="Buffalo FIB", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='fbi2',name="SUV FIB", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='pbus',name="Prison Bus", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='riot',name="Police Riot", grade = 4},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=0,model='riot2',name="RCV", grade = 4},
        },
    },

    ['Police Plane Shop'] = { -- same with name
        name = "Police Plane Shop", --MRPD police shop
        title = "Police Plane Shop",
        icon = 'https://i.ibb.co/v44KNf3K/pdm.png',
        job = 'police',
        type = 'air',
        default_garage = 'Police Plane Garage',
        Dist = 10, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 662, scale = 0.7},
        npc = 'cs_paper',
        shop_x = 439.17,
        shop_y = -995.83,
        shop_z = 43.69,
        shop_h = 275.00,
        spawn_x = 449.21,
        spawn_y = -981.27,
        spawn_z = 44.08,
        heading = 90.0, -- Vehicle spawn location
        plateprefix = 'LSPD', -- carefull using this, maximum should be 4, recommended is 3, use this only for limited vehicles, if you use this parameter in other shop, you might have a limited plates available, ex. LSPD1234 (max char of plate is 8) it means you only have 9999 vehicles possible with this LSPD
        shop = { -- if not vehicle is setup in Database SQL, we will use this
            {shop='Police Plane Shop',brand='Police',stock=50,price=0,model='polmav',name="Police", grade = 4},
        },
    },

    ['Ambumance Vehicle Shop'] = { -- same with name
        name = "Ambumance Vehicle Shop", --MRPD police shop
        title = "Ambumance Vehicle Shop",
        icon = 'https://i.ibb.co/v44KNf3K/pdm.png',
        job = 'ambulance',
        type = 'car',
        default_garage = 'Ambumance Garage',
        Dist = 10, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 662, scale = 0.7},
        npc = 'cs_paper',
        shop_x = 408.17,
        shop_y = -1413.37,
        shop_z = 29.40,
        shop_h = 190.0,
        spawn_x = 408.11,
        spawn_y = -1420.44,
        spawn_z = 29.22,
        heading = 229.31, -- Vehicle spawn location
        plateprefix = 'EMS', -- carefull using this, maximum should be 4, recommended is 3, use this only for limited vehicles, if you use this parameter in other shop, you might have a limited plates available, ex. LSPD1234 (max char of plate is 8) it means you only have 9999 vehicles possible with this LSPD
        shop = { -- if not vehicle is setup in Database SQL, we will use this
            {shop='Ambumance Vehicle Shop',brand='Ambulance',stock=50,price=0,model='ambulance',name="Ambulance", grade = 3},
        },
    },

    ['Ambumance Plane Shop'] = { -- same with name
        name = "Ambumance Plane Shop", --MRPD police shop
        title = "Ambumance Plane Shop",
        icon = 'https://i.ibb.co/v44KNf3K/pdm.png',
        job = 'ambulance',
        type = 'air',
        default_garage = 'Ambumance Plane Garage',
        Dist = 10, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 662, scale = 0.7},
        npc = 'cs_paper',
        shop_x = 287.21,
        shop_y = -1442.63,
        shop_z = 46.51,
        shop_h = 26.420000000,
        spawn_x = 299.34,
        spawn_y = -1453.33,
        spawn_z = 46.90,
        heading = 140.0, -- Vehicle spawn location
        plateprefix = 'EMS', -- carefull using this, maximum should be 4, recommended is 3, use this only for limited vehicles, if you use this parameter in other shop, you might have a limited plates available, ex. LSPD1234 (max char of plate is 8) it means you only have 9999 vehicles possible with this LSPD
        shop = { -- if not vehicle is setup in Database SQL, we will use this
            {shop='Ambumance Plane Shop',brand='Ambulance',stock=50,price=0,model='polmav',name="Ambulance", grade = 3},
        },
    },

    ['Taxi Vehicle Shop'] = { -- same with name
        name = "Taxi Vehicle Shop", --MRPD police shop
        title = "Taxi Vehicle Shop",
        icon = 'https://i.ibb.co/v44KNf3K/pdm.png',
        job = 'taxi',
        type = 'car',
        default_garage = 'Taxi Vehicle Garage',
        Dist = 10, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 662, scale = 0.7},
        npc = 'cs_paper',
        shop_x = 899.42,
        shop_y = -177.16,
        shop_z = 73.84,
        shop_h = 220.56,
        spawn_x = 902.46,
        spawn_y = -183.90,
        spawn_z = 73.49,
        heading = 330.00, -- Vehicle spawn location
        plateprefix = 'TAXI', -- carefull using this, maximum should be 4, recommended is 3, use this only for limited vehicles, if you use this parameter in other shop, you might have a limited plates available, ex. LSPD1234 (max char of plate is 8) it means you only have 9999 vehicles possible with this LSPD
        shop = { -- if not vehicle is setup in Database SQL, we will use this
            {shop='Taxi Vehicle Shop',brand='Taxi',stock=50,price=0,model='taxi',name="Taxi", grade = 4},
        },
    },

    -- BOAT shop
    ['Yacht Club'] = { -- same with name
        name = "Yacht Club", --LEGION
        type = 'boat', -- type of shop
        title = "Yacht Club",
        icon = 'https://i.ibb.co/v44KNf3K/pdm.png',
        job = 'all',
        default_garage = 'Boat Garage A',
        Dist = 10, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 410, scale = 0.7},
        npc = 'cs_paper',
        Blipss = true,
        shop_x = -806.86,
        shop_y = -1373.83,
        shop_z = 5.15, -- coordinates for this garage
        shop_h = 26.420000000,
        spawn_x = -818.69775390625,
        spawn_y = -1420.5775146484,
        spawn_z = 0.12045155465603,
        heading = 178.27006530762, -- Vehicle spawn location
        shop = { -- if not vehicle is setup in Database SQL, we will use this
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='dinghy3',name="Dinghy 3"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='dinghy',name="Dinghy"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='tropic',name="Tropic"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='tropic2',name="Tropic 2"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='toro2',name="Toro 2"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='toro',name="Toro"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='dinghy4',name="Dinghy 4"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='squalo',name="Squalo"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='seashark2',name="Seashark 2"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='seashark3',name="Seashark 3"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='seashark',name="Seashark"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='jetmax',name="Jetmax"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='speeder',name="Speeder"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='speeder2',name="Speeder 2"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='avisa',name="Avisa"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='suntrap',name="Suntrap"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='dinghy2',name="Dinghy 2"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='submersible',name="Submersible"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='longfin',name="Longfin"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='submersible2',name="Submersible 2"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='tug',name="Tug"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='marquis',name="Marquis"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=0,model='dinghy5',name="Dinghy 5"},
        },
    },
    -- PLANE SHOP
    ['Devin Weston Avion'] = { -- same with name
        name = "Devin Weston", --LEGION
        title = "Devin Weston",
        icon = 'https://i.ibb.co/v44KNf3K/pdm.png',
        type = 'air', -- type of shop
        job = 'all',
        default_garage = 'Plane Hangar A',
        Dist = 10, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 423, scale = 0.7},
        npc = 'cs_paper',
        Blipss = true,
        shop_x = -916.04522705078,
        shop_y = -3025.2377929688,
        shop_z = 13.945063591003, -- coordinates for this garage
        shop_h = 26.420000000,
        spawn_x = -985.01806640625,
        spawn_y = -3005.4670410156,
        spawn_z = 14.783501625061,
        heading = 54.631553649902, -- Vehicle spawn location
        shop = { -- if not vehicle is setup in Database SQL, we will use this
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='alphaz1',name="Alpha-Z1"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='strikeforce',name="Strikeforce"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='cuban800',name="Cuban 800"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='duster',name="Duster"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='duster2',name="Duster 2"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='howard',name="Howard NX-25"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='luxor',name="Luxor"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='luxor2',name="Luxor Deluxe"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='stunt',name="Stunt Plane"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='mammatus',name="Mammatus"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='miljet',name="Miljet"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='mogul',name="Mogul"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='nimbus',name="Nimbus"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='nokota',name="Nokota"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='rogue',name="Rogue"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='seabreeze',name="Sea Breeze"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='shamal',name="Shamal"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='streamer216',name="Streamer 216"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='titan2',name="Titan 2"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='tula',name="Tula"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='microlight',name="Microlight"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='velum',name="Velum"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='vestra',name="Vestra"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='besra',name="Besra"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='raiju',name="Raiju"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='hydra',name="Hydra"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='lazer',name="Lazer"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='pyro',name="Pyro"},
            {shop='Devin Weston Avion',brand='Propeller Type',stock=50,price=0,model='molotok',name="Molotok"},
        },
    },
    -- Heli SHOP
    ['Devin Weston Helicoptere'] = { -- same with name
        name = "Devin Weston Helicoptere", --LEGION
        title = "Devin Weston Helicoptere",
        icon = 'https://i.ibb.co/v44KNf3K/pdm.png',
        type = 'air', -- type of shop
        job = 'all',
        default_garage = 'Plane Hangar B',
        Dist = 10, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 423, scale = 0.7},
        npc = 'cs_paper',
        Blipss = true,
        shop_x = -1147.82,
        shop_y = -2825.31,
        shop_z = 13.95, -- coordinates for this garage
        shop_h = 148.13,
        spawn_x = -1178.43,
        spawn_y = -2845.71,
        spawn_z = 14.34,
        heading = 150.00, -- Vehicle spawn location
        shop = { -- if not vehicle is setup in Database SQL, we will use this
            {shop='Devin Weston Helicoptere',brand='Propeller Type',stock=50,price=0,model='annihilator',name="Annihilator"},
            {shop='Devin Weston Helicoptere',brand='Propeller Type',stock=50,price=0,model='buzzard',name="Buzzard"},
            {shop='Devin Weston Helicoptere',brand='Propeller Type',stock=50,price=0,model='buzzard2',name="Buzzard 2"},
            {shop='Devin Weston Helicoptere',brand='Propeller Type',stock=50,price=0,model='cargobob',name="Cargobob"},
            {shop='Devin Weston Helicoptere',brand='Propeller Type',stock=50,price=0,model='conada',name="Conada"},
            {shop='Devin Weston Helicoptere',brand='Propeller Type',stock=50,price=0,model='cargobob5',name="Cargobob 5"},
            {shop='Devin Weston Helicoptere',brand='Propeller Type',stock=50,price=0,model='hunter',name="Hunter"},
            {shop='Devin Weston Helicoptere',brand='Propeller Type',stock=50,price=0,model='frogger',name="Frogger"},
            {shop='Devin Weston Helicoptere',brand='Propeller Type',stock=50,price=0,model='havok',name="Havok"},
            {shop='Devin Weston Helicoptere',brand='Propeller Type',stock=50,price=0,model='maverick2',name="Maverick 2"},
            {shop='Devin Weston Helicoptere',brand='Propeller Type',stock=50,price=0,model='maverick',name="Maverick"},
            {shop='Devin Weston Helicoptere',brand='Propeller Type',stock=50,price=0,model='savage',name="Savage"},
            {shop='Devin Weston Helicoptere',brand='Propeller Type',stock=50,price=0,model='seasparrow',name="Sea Sparrow"},
            {shop='Devin Weston Helicoptere',brand='Propeller Type',stock=50,price=0,model='supervolito',name="Super Volito"},
            {shop='Devin Weston Helicoptere',brand='Propeller Type',stock=50,price=0,model='supervolito2',name="Super Volito 2"},
            {shop='Devin Weston Helicoptere',brand='Propeller Type',stock=50,price=0,model='swift',name="Swift"},
            {shop='Devin Weston Helicoptere',brand='Propeller Type',stock=50,price=0,model='swift2',name="Swift 2"},
            {shop='Devin Weston Helicoptere',brand='Propeller Type',stock=50,price=0,model='valkyrie',name="Valkyrie"},
            {shop='Devin Weston Helicoptere',brand='Propeller Type',stock=50,price=0,model='volatus',name="Volatus"},
            {shop='Devin Weston Helicoptere',brand='Propeller Type',stock=50,price=0,model='conada2',name="Conada 2"},
        },
    },
}

Config.EnableVehicleSelling = false -- allow your user to sell the vehicle and deletes it from database
Config.RefundPercent = 70 -- 70% (percentage from original value)
Refund = {
    ['pdm'] = { -- same with name
        name = "pdm", --LEGION
        job = 'all',
        Dist = 10, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 728, scale = 0.5},
        Blipss = true,
        shop_x = -45.81,
        shop_y = -1082.62,
        shop_z = 25.48, -- coordinates for selling / refunding the vehicle
    },
}

lib = nil

function TryOxLib(file)
    local fcall = function()
        local name = ('%s.lua'):format(file)
        local content = LoadResourceFile('ox_lib',name)
        local f, err = load(content)
        return f()
    end
    _, ret = pcall(fcall,false)
    return ret
end