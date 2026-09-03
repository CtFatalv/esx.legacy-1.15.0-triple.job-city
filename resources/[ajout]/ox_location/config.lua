Config = {}

Config.plaque = "LOCATION"

Config.blip = {
    label = 'Location de véhicules',
    sprite = 811,
    colour = 2,
    scale = 0.5,
}

Config.npc = {
    {
        name = "Sud de la ville",
        skin = "a_m_y_eastsa_02", 
        coord = vector4(-959.93, -2701.92, 12.83, 116.42), 
        spawn_vehicule = vector4(-961.90, -2704.96, 13.83, 75.0)
    },
    {
        name = "Sandy Shores",
        skin = "a_m_y_eastsa_02", 
        coord = vector4(-253.98, -970.84, 30.22, 170.00), 
        spawn_vehicule = vector4(-235.61, -984.77, 28.62, 160.00)
    },
    {
        name = "Paleto Bay",
        skin = "a_m_y_eastsa_02", 
        coord = vector4(96.13, 6363.04, 30.36, 22.67), 
        spawn_vehicule = vector4(94.94, 6372.73, 30.61, 11.33)
    },
}

Config.vehicules = {
    {
        model = 'bmx',
        price = 50,
        label = 'BMX',
        icon = 'fas fa-bicycle',
        img = 'https://gtacars.net/images/4596bd7f7aab3d7e1d537ea929b239e4'
    },
    {
        model = 'cruiser',
        price = 150,
        label = 'Cruiser',
        icon = 'fas fa-bicycle',
        img = 'https://gtacars.net/images/9ba8ac906e802139d944306a9b93c9f1'
    },
    {
        model = 'faggio',
        price = 300,
        label = 'Faggio',
        icon = 'fas fa-motorcycle',
        img = 'https://gtacars.net/images/490d53928ed54a3b2c656681ab98159c'
    },
}