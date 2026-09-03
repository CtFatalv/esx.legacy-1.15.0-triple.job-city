Config = {}

Config.Debug = false

Config.ClothingCost = 100
Config.BarberCost = 100
Config.TattooCost = 100
Config.SurgeonCost = 100

Config.ChargePerTattoo = true -- Charge players per tattoo. Config.TattooCost will become the cost of 1 tattoo. The cost can be overridden by adding `cost` key in shared/tattoos.lua for specific tattoos

-- Only set this to true if you're using rcore_tattoos
Config.RCoreTattoosCompatibility = false

Config.AsynchronousLoading = false -- Change this to false if you want the NUI data to load before displaying the appearance UI

Config.UseTarget = true

Config.TextUIOptions = {
    position = "left-center"
}

Config.NotifyOptions = {
    position = "top-right"
}

Config.OutfitCodeLength = 10

Config.UseRadialMenu = true
Config.UseOxRadial = false -- Set to true to use ox_lib radial menu, both this and UseRadialMenu must be true 

Config.EnablePedsForShops = true
Config.EnablePedsForClothingRooms = true
Config.EnablePedsForPlayerOutfitRooms = true

Config.EnablePedMenu = true
Config.PedMenuGroup = "group.admin"

Config.EnableJobOutfitsCommand = false -- Enables /joboutfits and /gangoutfits commands

Config.ShowNearestShopOnly = false
Config.HideRadar = false -- Hides the minimap while the appearance menu is open
Config.NearestShopBlipUpdateDelay = 10000

Config.InvincibleDuringCustomization = true

Config.PreventTrackerRemoval = true -- Disables "Scarf and Chains" section if the player has tracker
Config.TrackerClothingOptions = {
    drawable = 13,
    texture = 0
}

Config.NewCharacterSections = {
    Ped = true,
    HeadBlend = true,
    FaceFeatures = true,
    HeadOverlays = true,
    Components = true,
    Props = true,
    Tattoos = true
}

Config.GenderBasedOnPed = true

Config.AlwaysKeepProps = false

Config.PersistUniforms = true -- Keeps Job / Gang Outfits on player reconnects / logout
Config.OnDutyOnlyClothingRooms = false -- Set to `true` to make the clothing rooms accessible only to players who are On Duty

Config.BossManagedOutfits = false -- Allows Job / Gang bosses to manage their own job / gang outfits

Config.ReloadSkinCooldown = 5000

Config.AutomaticFade = false -- Enables automatic fading and hides the Fade section from Hair

Config.DisableComponents = {
    Masks = false,
    UpperBody = false,
    LowerBody = false,
    Bags = false,
    Shoes = false,
    ScarfAndChains = false,
    BodyArmor = false,
    Shirts = false,
    Decals = false,
    Jackets = false
}

Config.DisableProps = {
    Hats = false,
    Glasses = false,
    Ear = false,
    Watches = false,
    Bracelets = false
}

---@type string[]
Config.Aces = {} -- list of ace permissions used for blacklisting


Config.Blips = {
    ["clothing"] = {
        Show = true,
        Sprite = 366,
        Color = 47,
        Scale = 0.7,
        Name = "Magasin de vêtement",
    },
    ["barber"] = {
        Show = true,
        Sprite = 71,
        Color = 0,
        Scale = 0.7,
        Name = "Barbier",
    },
    ["tattoo"] = {
        Show = true,
        Sprite = 75,
        Color = 4,
        Scale = 0.7,
        Name = "Tattoeur",
    },
    ["surgeon"] = {
        Show = false,
        Sprite = 102,
        Color = 4,
        Scale = 0.7,
        Name = "Chirurgie esthétique",
    }
}

Config.TargetConfig = {
    ["clothing"] = {
        model = "s_f_m_shop_high",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-tshirt",
        label = "Magasin de vêtement",
        distance = 3
    },
    ["barber"] = {
        model = "s_m_m_hairdress_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-scissors",
        label = "Barbier",
        distance = 3
    },
    ["tattoo"] = {
        model = "u_m_y_tattoo_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-pen",
        label = "Tatoueur",
        distance = 3
    },
    ["surgeon"] = {
        model = "s_m_m_doctor_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-scalpel",
        label = "Chirurgie esthétique",
        distance = 3
    },
    ["clothingroom"] = {
        model = "mp_g_m_pros_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-sign-in-alt",
        label = "Garde robe",
        distance = 3
    },
    ["playeroutfitroom"] = {
        model = "mp_g_m_pros_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-sign-in-alt",
        label = "Garde robe",
        distance = 3
    },
}

Config.Stores = {
-- Boutique 1
    {
        type = "clothing",
        coords = vector4(1693.2, 4828.11, 42.04, 188.66),
        showBlip = true
    },
-- Boutique 2
    {
        type = "clothing",
        coords = vector4(-714.69, -147.43, 37.42, 124.27),
        showBlip = true
    },
-- Boutique 3
    {
        type = "clothing",
        coords = vector4(-1186.82, -767.90, 17.33, 121.85),
        showBlip = true
    },
-- Boutique 4
    {
        type = "clothing",
        coords = vector4(425.91, -801.03, 29.49, 177.79),
        showBlip = true
    },
-- Boutique 5
    {
        type = "clothing",
        coords = vector4(-164.89, -310.37, 39.73, 252.46),
        showBlip = true
    },
-- Boutique 6
    {
        type = "clothing",
        coords = vector4(75.39, -1398.28, 29.38, 6.73),
        showBlip = true
    },
-- Boutique 7
    {
        type = "clothing",
        coords = vector4(-827.39, -1075.93, 11.33, 294.31),
        showBlip = true
    },
-- Boutique 8
    {
        type = "clothing",
        coords = vector4(-1445.86, -231.13, 49.81, 52.34),
        showBlip = true
    },
-- Boutique 9
    {
        type = "clothing",
        coords = vector4(9.22, 6515.74, 31.88, 131.27),
        showBlip = true
    },
-- Boutique 10
    {
        type = "clothing",
        coords = vector4(617.62, 2768.44, 42.09, 187.96),
        showBlip = true
    },
-- Boutique 11
    {
        type = "clothing",
        coords = vector4(1191.61, 2710.91, 38.22, 269.96),
        showBlip = true
    },
-- Boutique 12
    {
        type = "clothing",
        coords = vector4(-3176.18, 1040.29, 20.86, 328.10),
        showBlip = true
    },
-- Boutique 13
    {
        type = "clothing",
        coords = vector4(-1105.52, 2707.79, 19.11, 317.19),
        showBlip = true
    },
-- Boutique 14
    {
        type = "clothing",
        coords = vector4(120.41, -227.60, 54.56, 335.14),
        showBlip = true
    },
    {
        type = "barber",
        coords = vector4(-814.22, -183.7, 37.57, 116.91),
        showBlip = true
    },
    {
        type = "barber",
        coords = vector4(136.78, -1708.4, 29.29, 144.19),
        showBlip = true
    },
    {
        type = "barber",
        coords = vector4(-1282.57, -1116.84, 6.99, 89.25),
        showBlip = true
    },
    {
        type = "barber",
        coords = vector4(1931.41, 3729.73, 32.84, 212.08),
        showBlip = true
    },
    {
        type = "barber",
        coords = vector4(1213.31, -473.05, 66.21, 75.78),
        showBlip = true
    },
    {
        type = "barber",
        coords = vector4(-33.02, -152.81, 57.08, 346.63),
        showBlip = true
    },
    {
        type = "barber",
        coords = vector4(-277.62, 6228.15, 31.70, 53.84),
        showBlip = true
    },
    {
        type = "tattoo",
        coords = vector4(1321.15, -1653.23, 52.28, 312.55),
        showBlip = true
    },
    {
        type = "tattoo",
        coords = vector4(-1156.09, -1426.55, 4.95, 300.42),
        showBlip = true
    },
    {
        type = "tattoo",
        coords = vector4(324.44, 179.27, 103.59, 66.75),
        showBlip = true
    },
    {
        type = "tattoo",
        coords = vector4(-3168.63, 1077.36, 20.83, 154.57),
        showBlip = true
    },
    {
        type = "tattoo",
        coords = vector4(1864.1, 3747.91, 33.03, 17.23),
        showBlip = true
    },
    {
        type = "tattoo",
        coords = vector4(-294.24, 6200.12, 31.49, 195.72),
        showBlip = true
    },
    {
        type = "surgeon",
        coords = vector4(298.78, -572.81, 43.26, 114.27),
        showBlip = true
    }
}


Config.ClothingRooms = {
    {
        job = "police",
        coords = vector4(459.72, -989.22, 30.69, 274.00)
    },
	{
        job = "taxi",
        coords = vector4(897.44, -162.66, 81.60, 331.22)
    },
    {
        job = "ambulance",
        coords = vector4(363.23, -1422.80, 32.94, 231.25)
    },
    {
        job = "nightclub",
        coords = vector4(104.85, -1303.51, 28.77, 297.54)
    },
    {
        job = "mechanic",
        coords = vector4(-321.13, -138.04, 39.01, 73.96)
    }
}

Config.PlayerOutfitRooms = {
    -- Sample outfit room config
--[[    {
        job = "police",
        coords = vector4(287.28, -573.41, 43.16, 79.61),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(284.83, -574.01, 43.16),
            vector3(286.33, -570.03, 43.16),
            vector3(290.33, -571.74, 43.16),
            vector3(289.0, -574.75, 43.16)
        },
        citizenIDs = {
            "BHH65156"
        }
    }]]--
}


Config.Outfits = {
    ["police"] = {
        ["Male"] = {
            {
                name = "Short Sleeve",
                outfitData = {
                    ["pants"] = {item = 24, texture = 0}, -- bas du corps
                    ["arms"] = {item = 19, texture = 0}, -- haut du corps
                    ["t-shirt"] = {item = 58, texture = 0}, -- T Shirt
                    ["vest"] = {item = 0, texture = 0}, -- inconnu
                    ["torso2"] = {item = 55, texture = 0}, -- vestes
                    ["shoes"] = {item = 51, texture = 0}, -- Chaussure
                    ["accessory"] = {item = 0, texture = 0}, -- echarpes et chaine
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = -1, texture = -1}, -- chapeaux
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 0, texture = 0} -- Mask
                },
                grades = {0, 1, 2, 3, 4},
            },
            {
                name = "Trooper Tan",
                outfitData = {
                    ["pants"] = {item = 24, texture = 0}, -- bas du corps
                    ["arms"] = {item = 20, texture = 0}, -- haut du corps
                    ["t-shirt"] = {item = 58, texture = 0}, -- T Shirt
                    ["vest"] = {item = 0, texture = 0}, -- inconnu
                    ["torso2"] = {item = 317, texture = 3}, -- vestes
                    ["shoes"] = {item = 51, texture = 0}, -- Chaussure
                    ["accessory"] = {item = 0, texture = 0}, -- echarpes et chaine
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = 58, texture = 0}, -- chapeaux
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 0, texture = 0} -- Mask
                },
                grades = {0, 1, 2, 3, 4},
            },
            {
                name = "Long Sleeve",
                outfitData = {
                    ["pants"] = {item = 24, texture = 0}, -- bas du corps
                    ["arms"] = {item = 20, texture = 0}, -- haut du corps
                    ["t-shirt"] = {item = 58, texture = 0}, -- T Shirt
                    ["vest"] = {item = 0, texture = 0}, -- inconnu
                    ["torso2"] = {item = 317, texture = 0}, -- vestes
                    ["shoes"] = {item = 51, texture = 0}, -- Chaussure
                    ["accessory"] = {item = 0, texture = 0}, -- echarpes et chaine
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = -1, texture = -1}, -- chapeaux
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 0, texture = 0} -- Mask
                },
                grades = {1, 2, 3, 4},
            },
            {
                name = "Trooper Black",
                outfitData = {
                    ["pants"] = {item = 24, texture = 0}, -- bas du corps
                    ["arms"] = {item = 20, texture = 0}, -- haut du corps
                    ["t-shirt"] = {item = 58, texture = 0}, -- T Shirt
                    ["vest"] = {item = 0, texture = 0}, -- inconnu
                    ["torso2"] = {item = 317, texture = 8}, -- vestes
                    ["shoes"] = {item = 51, texture = 0}, -- Chaussure
                    ["accessory"] = {item = 0, texture = 0}, -- echarpes et chaine
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = 58, texture = 3}, -- chapeaux
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 0, texture = 0} -- Mask
                },
                grades = {2, 3, 4},
            },
            {
                name = "SWAT",
                outfitData = {
                    ["pants"] = {item = 130, texture = 1}, -- bas du corps
                    ["arms"] = {item = 172, texture = 0}, -- haut du corps
                    ["t-shirt"] = {item = 15, texture = 0}, -- T Shirt
                    ["vest"] = {item = 15, texture = 2}, -- inconnu
                    ["torso2"] = {item = 336, texture = 3}, -- vestes
                    ["shoes"] = {item = 24, texture = 0}, -- Chaussure
                    ["accessory"] = {item = 133, texture = 0}, -- echarpes et chaine
                    ["hat"] = {item = 150, texture = 0}, -- chapeaux
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 52, texture = 0} -- Mask
                },
                grades = {3, 4},
            }
        },
        ["Female"] = {
            {
                name = "Short Sleeve",
                outfitData = {
                    ["pants"] = {item = 133, texture = 0}, -- bas du corps
                    ["arms"] = {item = 31, texture = 0}, -- haut du corps
                    ["t-shirt"] = {item = 35, texture = 0}, -- T Shirt
                    ["vest"] = {item = 34, texture = 0}, -- inconnu
                    ["torso2"] = {item = 48, texture = 0}, -- vestes
                    ["shoes"] = {item = 52, texture = 0}, -- Chaussure
                    ["accessory"] = {item = 0, texture = 0}, -- echarpes et chaine
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = 0, texture = 0}, -- chapeaux
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 0, texture = 0} -- Mask
                },
                grades = {0, 1, 2, 3, 4},
            },
            {
                name = "Trooper Tan",
                outfitData = {
                    ["pants"] = {item = 133, texture = 0}, -- bas du corps
                    ["arms"] = {item = 31, texture = 0}, -- haut du corps
                    ["t-shirt"] = {item = 35, texture = 0}, -- T Shirt
                    ["vest"] = {item = 34, texture = 0}, -- inconnu
                    ["torso2"] = {item = 327, texture = 3}, -- vestes
                    ["shoes"] = {item = 52, texture = 0}, -- Chaussure
                    ["accessory"] = {item = 0, texture = 0}, -- echarpes et chaine
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = 0, texture = 0}, -- chapeaux
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 0, texture = 0} -- Mask
                },
                grades = {0, 1, 2, 3, 4},
            },
            {
                name = "Long Sleeve",
                outfitData = {
                    ["pants"] = {item = 133, texture = 0}, -- bas du corps
                    ["arms"] = {item = 31, texture = 0}, -- haut du corps
                    ["t-shirt"] = {item = 35, texture = 0}, -- T Shirt
                    ["vest"] = {item = 34, texture = 0}, -- inconnu
                    ["torso2"] = {item = 327, texture = 0}, -- vestes
                    ["shoes"] = {item = 52, texture = 0}, -- Chaussure
                    ["accessory"] = {item = 0, texture = 0}, -- echarpes et chaine
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = 0, texture = 0}, -- chapeaux
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 0, texture = 0} -- Mask
                },
                grades = {1, 2, 3, 4},
            },
            {
                name = "Trooper Black",
                outfitData = {
                    ["pants"] = {item = 133, texture = 0}, -- bas du corps
                    ["arms"] = {item = 31, texture = 0}, -- haut du corps
                    ["t-shirt"] = {item = 35, texture = 0}, -- T Shirt
                    ["vest"] = {item = 34, texture = 0}, -- inconnu
                    ["torso2"] = {item = 327, texture = 8}, -- vestes
                    ["shoes"] = {item = 52, texture = 0}, -- Chaussure
                    ["accessory"] = {item = 0, texture = 0}, -- echarpes et chaine
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = 0, texture = 0}, -- chapeaux
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 0, texture = 0} -- Mask
                },
                grades = {2, 3, 4},
            },
            {
                name = "SWAT",
                outfitData = {
                    ["pants"] = {item = 135, texture = 1}, -- bas du corps
                    ["arms"] = {item = 213, texture = 0}, -- haut du corps
                    ["t-shirt"] = {item = 0, texture = 0}, -- T Shirt
                    ["vest"] = {item = 17, texture = 2}, -- inconnu
                    ["torso2"] = {item = 327, texture = 8}, -- vestes
                    ["shoes"] = {item = 52, texture = 0}, -- Chaussure
                    ["accessory"] = {item = 102, texture = 0}, -- echarpes et chaine
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["hat"] = {item = 149, texture = 0}, -- chapeaux
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["mask"] = {item = 35, texture = 0} -- Mask
                },
                grades = {3, 4},
            }
        }
    },
    ["taxi"] = {
        ["Male"] = {
            {
                -- Outfits
                name = "Worker",
                outfitData = {
                    ["pants"]       = { item = 28, texture = 0},  -- bas du corps
                    ["arms"]        = { item = 1, texture = 0},  -- haut du corps
                    ["t-shirt"]     = { item = 31, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- inconnu
                    ["torso2"]      = { item = 294, texture = 0},  -- vestes
                    ["shoes"]       = { item = 10, texture = 0},  -- Chaussure
                    ["accessory"]   = { item = 0, texture = 0},  -- echarpes et chaine
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 12, texture = -1},  -- chapeaux
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                },
                grades = {0, 1, 2, 3, 4},
            }
        },
        ["Female"] = {
            {
                name = "Worker",
                outfitData = {
                    ["pants"]       = { item = 57, texture = 2},  -- bas du corps
                    ["arms"]        = { item = 0, texture = 0},  -- haut du corps
                    ["t-shirt"]     = { item = 34, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- inconnu
                    ["torso2"]      = { item = 105, texture = 7},  -- vestes
                    ["shoes"]       = { item = 8, texture = 5},  -- Chaussure
                    ["accessory"]   = { item = 11, texture = 3},  -- echarpes et chaine
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = -1, texture = -1},  -- chapeaux
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                },
                grades = {0, 1, 2, 3, 4},
            }
        }
    },
    ["ambulance"] = {
        ["Male"] = {
            {
                name = "T-Shirt",
                outfitData = {
                    ["arms"] = {item = 85, texture = 0}, -- haut du corps
                    ["t-shirt"] = {item = 129, texture = 0}, -- T-Shirt
                    ["torso2"] = {item = 250, texture = 0}, -- vestes
                    ["vest"] = {item = 0, texture = 0}, -- inconnu
                    ["decals"] = {item = 58, texture = 0}, -- Decals
                    ["accessory"] = {item = 127, texture = 0}, -- Neck
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["pants"] = {item = 96, texture = 0}, -- bas du corps
                    ["shoes"] = {item = 54, texture = 0}, -- Chaussure
                    ["mask"] = {item = 121, texture = 0}, -- Mask
                    ["hat"] = {item = 122, texture = 0}, -- chapeaux
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["ear"] = {item = 0, texture = 0} -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4},
            },
            {
                name = "Polo",
                outfitData = {
                    ["arms"] = {item = 90, texture = 0}, -- haut du corps
                    ["t-shirt"] = {item = 15, texture = 0}, -- T-Shirt
                    ["torso2"] = {item = 249, texture = 0}, -- vestes
                    ["vest"] = {item = 0, texture = 0}, -- inconnu
                    ["decals"] = {item = 57, texture = 0}, -- Decals
                    ["accessory"] = {item = 126, texture = 0}, -- Neck
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["pants"] = {item = 96, texture = 0}, -- bas du corps
                    ["shoes"] = {item = 54, texture = 0}, -- Chaussure
                    ["mask"] = {item = 121, texture = 0}, -- Mask
                    ["hat"] = {item = 122, texture = 0}, -- chapeaux
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["ear"] = {item = 0, texture = 0} -- Ear accessories
                },
                grades = {2, 3, 4},
            },
            {
                name = "Doctor",
                outfitData = {
                    ["arms"] = {item = 93, texture = 0}, -- haut du corps
                    ["t-shirt"] = {item = 32, texture = 3}, -- T-Shirt
                    ["torso2"] = {item = 31, texture = 7}, -- vestes
                    ["vest"] = {item = 0, texture = 0}, -- inconnu
                    ["decals"] = {item = 0, texture = 0}, -- Decals
                    ["accessory"] = {item = 126, texture = 0}, -- Neck
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["pants"] = {item = 28, texture = 0}, -- bas du corps
                    ["shoes"] = {item = 10, texture = 0}, -- Chaussure
                    ["mask"] = {item = 0, texture = 0}, -- Mask
                    ["hat"] = {item = -1, texture = 0}, -- chapeaux
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["ear"] = {item = 0, texture = 0} -- Ear accessories
                },
                grades = {3, 4},
            }
        },
        ["Female"] = {
            {
                name = "T-Shirt",
                outfitData = {
                    ["arms"] = {item = 109, texture = 0}, -- haut du corps
                    ["t-shirt"] = {item = 159, texture = 0}, -- T-Shirt
                    ["torso2"] = {item = 258, texture = 0}, -- vestes
                    ["vest"] = {item = 0, texture = 0}, -- inconnu
                    ["decals"] = {item = 66, texture = 0}, -- Decals
                    ["accessory"] = {item = 97, texture = 0}, -- Neck
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["pants"] = {item = 99, texture = 0}, -- bas du corps
                    ["shoes"] = {item = 55, texture = 0}, -- Chaussure
                    ["mask"] = {item = 121, texture = 0}, -- Mask
                    ["hat"] = {item = 121, texture = 0}, -- chapeaux
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["ear"] = {item = 0, texture = 0} -- Ear accessories
                },
                grades = {0, 1, 2, 3, 4},
            },
            {
                name = "Polo",
                outfitData = {
                    ["arms"] = {item = 105, texture = 0}, -- haut du corps
                    ["t-shirt"] = {item = 13, texture = 0}, -- T-Shirt
                    ["torso2"] = {item = 257, texture = 0}, -- vestes
                    ["vest"] = {item = 0, texture = 0}, -- inconnu
                    ["decals"] = {item = 65, texture = 0}, -- Decals
                    ["accessory"] = {item = 96, texture = 0}, -- Neck
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["pants"] = {item = 99, texture = 0}, -- bas du corps
                    ["shoes"] = {item = 55, texture = 0}, -- Chaussure
                    ["mask"] = {item = 121, texture = 0}, -- Mask
                    ["hat"] = {item = 121, texture = 0}, -- chapeaux
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["ear"] = {item = 0, texture = 0} -- Ear accessories
                },
                grades = {2, 3, 4},
            },
            {
                name = "Doctor",
                outfitData = {
                    ["arms"] = {item = 105, texture = 0}, -- haut du corps
                    ["t-shirt"] = {item = 39, texture = 3}, -- T-Shirt
                    ["torso2"] = {item = 7, texture = 1}, -- vestes
                    ["vest"] = {item = 0, texture = 0}, -- inconnu
                    ["decals"] = {item = 0, texture = 0}, -- Decals
                    ["accessory"] = {item = 96, texture = 0}, -- Neck
                    ["bag"] = {item = 0, texture = 0}, -- Bag
                    ["pants"] = {item = 34, texture = 0}, -- bas du corps
                    ["shoes"] = {item = 29, texture = 0}, -- Chaussure
                    ["mask"] = {item = 0, texture = 0}, -- Mask
                    ["hat"] = {item = -1, texture = 0}, -- chapeaux
                    ["glass"] = {item = 0, texture = 0}, -- Glasses
                    ["ear"] = {item = 0, texture = 0} -- Ear accessories
                },
                grades = {3, 4},
            }
        }
    },
    ["nightclub"] = {
        ["Male"] = {
            {
                -- Outfits
                name = "Barman",
                outfitData = {
                    ["pants"]       = { item = 28, texture = 2},  -- bas du corps
                    ["arms"]        = { item = 40, texture = 0},  -- haut du corps
                    ["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- inconnu
                    ["torso2"]      = { item = 40, texture = 0},  -- vestes
                    ["shoes"]       = { item = 38, texture = 4},  -- Chaussure
                    ["accessory"]   = { item = 0, texture = 0},  -- echarpes et chaine
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 0, texture = -1},  -- chapeaux
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    ["chain_1"]     = { item = 118, texture = 0},  -- Chain
                },
                grades = {0, 1, 2, 3},
            },
            {
                name = "Danceur/se_1",
                outfitData = {
                    ["pants"]       = { item = 61, texture = 9},  -- bas du corps
                    ["arms"]        = { item = 40, texture = 0},  -- haut du corps
                    ["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- inconnu
                    ["torso2"]      = { item = 15, texture = 0},  -- vestes
                    ["shoes"]       = { item = 16, texture = 9},  -- Chaussure
                    ["accessory"]   = { item = 0, texture = 0},  -- echarpes et chaine
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 0, texture = 0},  -- chapeaux
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    ["chain_1"]     = { item = 118, texture = 0},  -- Chain
                },
                grades = {0, 1, 2, 3},
            },
            {
                name = "Danceur/se_2",
                outfitData = {
                    ["pants"]       = { item = 4, texture = 0},  -- bas du corps
                    ["arms"]        = { item = 14, texture = 0},  -- haut du corps
                    ["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- inconnu
                    ["torso2"]      = { item = 62, texture = 0},  -- vestes
                    ["shoes"]       = { item = 34, texture = 0},  -- Chaussure
                    ["accessory"]   = { item = 0, texture = 0},  -- echarpes et chaine
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 0, texture = 0},  -- chapeaux
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    ["chain_1"]     = { item = 118, texture = 0},  -- Chain
                },
                grades = {0, 1, 2, 3},
            },
            {
                name = "Danceur/se_3",
                outfitData = {
                    ["pants"]       = { item = 4, texture = 0},  -- bas du corps
                    ["arms"]        = { item = 15, texture = 0},  -- haut du corps
                    ["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- inconnu
                    ["torso2"]      = { item = 15, texture = 0},  -- vestes
                    ["shoes"]       = { item = 34, texture = 0},  -- Chaussure
                    ["accessory"]   = { item = 0, texture = 0},  -- echarpes et chaine
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 0, texture = 0},  -- chapeaux
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    ["chain_1"]     = { item = 118, texture = 0},  -- Chain
                },
                grades = {0, 1, 2, 3},
            },
            {
                name = "Danceur/se_4",
                outfitData = {
                    ["pants"]       = { item = 61, texture = 5},  -- bas du corps
                    ["arms"]        = { item = 15, texture = 0},  -- haut du corps
                    ["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- inconnu
                    ["torso2"]      = { item = 15, texture = 0},  -- vestes
                    ["shoes"]       = { item = 34, texture = 0},  -- Chaussure
                    ["accessory"]   = { item = 0, texture = 0},  -- echarpes et chaine
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 0, texture = 0},  -- chapeaux
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    ["chain_1"]     = { item = 118, texture = 0},  -- Chain
                },
                grades = {0, 1, 2, 3},
            },
            {
                name = "Danceur/se_5",
                outfitData = {
                    ["pants"]       = { item = 15, texture = 0},  -- bas du corps
                    ["arms"]        = { item = 15, texture = 0},  -- haut du corps
                    ["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- inconnu
                    ["torso2"]      = { item = 15, texture = 0},  -- vestes
                    ["shoes"]       = { item = 34, texture = 0},  -- Chaussure
                    ["accessory"]   = { item = 0, texture = 0},  -- echarpes et chaine
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 0, texture = 0},  -- chapeaux
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    ["chain_1"]     = { item = 118, texture = 0},  -- Chain
                },
                grades = {0, 1, 2, 3},
            },
            {
                name = "Danceur/se_6",
                outfitData = {
                    ["pants"]       = { item = 81, texture = 0},  -- bas du corps
                    ["arms"]        = { item = 15, texture = 0},  -- haut du corps
                    ["t-shirt"]     = { item = 3, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- inconnu
                    ["torso2"]      = { item = 15, texture = 0},  -- vestes
                    ["shoes"]       = { item = 34, texture = 0},  -- Chaussure
                    ["accessory"]   = { item = 0, texture = 0},  -- echarpes et chaine
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 0, texture = 0},  -- chapeaux
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    ["chain_1"]     = { item = 118, texture = 0},  -- Chain
                },
                grades = {0, 1, 2, 3},
            },
            {
                name = "Danceur/se_7",
                outfitData = {
                    ["pants"]       = { item = 61, texture = 9},  -- bas du corps
                    ["arms"]        = { item = 40, texture = 0},  -- haut du corps
                    ["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- inconnu
                    ["torso2"]      = { item = 15, texture = 0},  -- vestes
                    ["shoes"]       = { item = 16, texture = 9},  -- Chaussure
                    ["accessory"]   = { item = 0, texture = 0},  -- echarpes et chaine
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 0, texture = 0},  -- chapeaux
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    ["chain_1"]     = { item = 118, texture = 0},  -- Chain
                },
                grades = {0, 1, 2, 3},
            }
        },
        ["Female"] = {
            {
                name = "Barman",
                outfitData = {
                    ["pants"]       = { item = 44, texture = 4},  -- bas du corps
                    ["arms"]        = { item = 5, texture = 0},  -- haut du corps
                    ["t-shirt"]     = { item = 3, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- inconnu
                    ["torso2"]      = { item = 8, texture = 2},  -- vestes
                    ["shoes"]       = { item = 0, texture = 0},  -- Chaussure
                    ["accessory"]   = { item = 0, texture = 0},  -- echarpes et chaine
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 0, texture = 0},  -- chapeaux
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    ["chain_1"]     = { item = 0, texture = 2},  -- Chain
                },
                grades = {0, 1, 2, 3},
            },
			{
                name = "Danceur/se_1",
                outfitData = {
                    ["pants"]       = { item = 22, texture = 0},  -- bas du corps
                    ["arms"]        = { item = 4, texture = 0},  -- haut du corps
                    ["t-shirt"]     = { item = 3, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- inconnu
                    ["torso2"]      = { item = 22, texture = 0},  -- vestes
                    ["shoes"]       = { item = 18, texture = 0},  -- Chaussure
                    ["accessory"]   = { item = 0, texture = 0},  -- echarpes et chaine
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 0, texture = 0},  -- chapeaux
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    ["chain_1"]     = { item = 61, texture = 1},  -- Chain
                },
                grades = {0, 1, 2, 3},
            },
            {
                name = "Danceur/se_2",
                outfitData = {
                    ["pants"]       = { item = 20, texture = 2},  -- bas du corps
                    ["arms"]        = { item = 4, texture = 0},  -- haut du corps
                    ["t-shirt"]     = { item = 3, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- inconnu
                    ["torso2"]      = { item = 22, texture = 2},  -- vestes
                    ["shoes"]       = { item = 18, texture = 2},  -- Chaussure
                    ["accessory"]   = { item = 0, texture = 0},  -- echarpes et chaine
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 0, texture = 0},  -- chapeaux
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    ["chain_1"]     = { item = 0, texture = 0},  -- Chain
                },
                grades = {0, 1, 2, 3},
            },
            {
                name = "Danceur/se_3",
                outfitData = {
                    ["pants"]       = { item = 19, texture = 1},  -- bas du corps
                    ["arms"]        = { item = 15, texture = 0},  -- haut du corps
                    ["t-shirt"]     = { item = 3, texture = 2},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- inconnu
                    ["torso2"]      = { item = 22, texture = 1},  -- vestes
                    ["shoes"]       = { item = 19, texture = 3},  -- Chaussure
                    ["accessory"]   = { item = 0, texture = 0},  -- echarpes et chaine
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 0, texture = 0},  -- chapeaux
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    ["chain_1"]     = { item = 0, texture = 0},  -- Chain
                },
                grades = {0, 1, 2, 3},
            },
            {
                name = "Danceur/se_4",
                outfitData = {
                    ["pants"]       = { item = 63, texture = 11},  -- bas du corps
                    ["arms"]        = { item = 15, texture = 0},  -- haut du corps
                    ["t-shirt"]     = { item = 3, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- inconnu
                    ["torso2"]      = { item = 82, texture = 0},  -- vestes
                    ["shoes"]       = { item = 41, texture = 11},  -- Chaussure
                    ["accessory"]   = { item = 0, texture = 0},  -- echarpes et chaine
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 0, texture = 0},  -- chapeaux
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    ["chain_1"]     = { item = 0, texture = 0},  -- Chain
                },
                grades = {0,1,2,3},
            },
            {
                name = "Danceur/se_5",
                outfitData = {
                    ["pants"]       = { item = 63, texture = 2},  -- bas du corps
                    ["arms"]        = { item = 15, texture = 0},  -- haut du corps
                    ["t-shirt"]     = { item = 3, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- inconnu
                    ["torso2"]      = { item = 15, texture = 0},  -- vestes
                    ["shoes"]       = { item = 41, texture = 2},  -- Chaussure
                    ["accessory"]   = { item = 0, texture = 0},  -- echarpes et chaine
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 0, texture = 0},  -- chapeaux
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    ["chain_1"]     = { item = 0, texture = 0},  -- Chain
                },
                grades = {0, 1, 2, 3},
            },
            {
                name = "Danceur/se_6",
                outfitData = {
                    ["pants"]       = { item = 63, texture = 10},  -- bas du corps
                    ["arms"]        = { item = 15, texture = 0},  -- haut du corps
                    ["t-shirt"]     = { item = 3, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- inconnu
                    ["torso2"]      = { item = 18, texture = 3},  -- vestes
                    ["shoes"]       = { item = 41, texture = 10},  -- Chaussure
                    ["accessory"]   = { item = 0, texture = 0},  -- echarpes et chaine
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 0, texture = 0},  -- chapeaux
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    ["chain_1"]     = { item = 0, texture = 0},  -- Chain
                },
                grades = {0, 1, 2, 3},
            },
            {
                name = "Danceur/se_7",
                outfitData = {
                    ["pants"]       = { item = 63, texture = 6},  -- bas du corps
                    ["arms"]        = { item = 15, texture = 0},  -- haut du corps
                    ["t-shirt"]     = { item = 3, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- inconnu
                    ["torso2"]      = { item = 111, texture = 6},  -- vestes
                    ["shoes"]       = { item = 41, texture = 6},  -- Chaussure
                    ["accessory"]   = { item = 0, texture = 0},  -- echarpes et chaine
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 0, texture = 0},  -- chapeaux
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                    ["chain_1"]     = { item = 0, texture = 0},  -- Chain
                },
                grades = {0, 1, 2, 3},
            }
        }
    },
    ["mechanic"] = {
        ["Male"] = {
            {
                -- Outfits
                name = "Worker",
                outfitData = {
                    ["pants"]       = { item = 28, texture = 0},  -- bas du corps
                    ["arms"]        = { item = 1, texture = 0},  -- haut du corps
                    ["t-shirt"]     = { item = 31, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- inconnu
                    ["torso2"]      = { item = 294, texture = 0},  -- vestes
                    ["shoes"]       = { item = 10, texture = 0},  -- Chaussure
                    ["accessory"]   = { item = 0, texture = 0},  -- echarpes et chaine
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 12, texture = -1},  -- chapeaux
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                },
                grades = {0, 1, 2, 3, 4},
            }
        },
        ["Female"] = {
            {
                name = "Worker",
                outfitData = {
                    ["pants"]       = { item = 57, texture = 2},  -- bas du corps
                    ["arms"]        = { item = 0, texture = 0},  -- haut du corps
                    ["t-shirt"]     = { item = 34, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- inconnu
                    ["torso2"]      = { item = 105, texture = 7},  -- vestes
                    ["shoes"]       = { item = 8, texture = 5},  -- Chaussure
                    ["accessory"]   = { item = 11, texture = 3},  -- echarpes et chaine
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = -1, texture = -1},  -- chapeaux
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                },
                grades = {0, 1, 2, 3, 4},
            }
        }
    },
}

Config.InitialPlayerClothes = {
    Male = {
        Model = "mp_m_freemode_01",
        Components = {
            {
                component_id = 0, -- Face
                drawable = 0,
                texture = 0
            },
            {
                component_id = 1, -- Mask
                drawable = 0,
                texture = 0
            },
            {
                component_id = 2, -- Hair
                drawable = 0,
                texture = 0
            },
            {
                component_id = 3, -- Upper Body
                drawable = 0,
                texture = 0
            },
            {
                component_id = 4, -- Lower Body
                drawable = 0,
                texture = 0
            },
            {
                component_id = 5, -- Bag
                drawable = 0,
                texture = 0
            },
            {
                component_id = 6, -- Chaussure
                drawable = 0,
                texture = 0
            },
            {
                component_id = 7, -- Scarf & Chains
                drawable = 0,
                texture = 0
            },
            {
                component_id = 8, -- Shirt
                drawable = 0,
                texture = 0
            },
            {
                component_id = 9, -- Body Armor
                drawable = 0,
                texture = 0
            },
            {
                component_id = 10, -- Decals
                drawable = 0,
                texture = 0
            },
            {
                component_id = 11, -- vestes
                drawable = 0,
                texture = 0
            }
        },
        Props = {
            {
                prop_id = 0, -- chapeaux
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 1, -- Glasses
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 2, -- Ear
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 6, -- Watch
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 7, -- Bracelet
                drawable = -1,
                texture = -1
            }
        },
        Hair = {
            color = 0,
            highlight = 0,
            style = 0,
            texture = 0
        }
    },
    Female = {
        Model = "mp_f_freemode_01",
        Components = {
            {
                component_id = 0, -- Face
                drawable = 0,
                texture = 0
            },
            {
                component_id = 1, -- Mask
                drawable = 0,
                texture = 0
            },
            {
                component_id = 2, -- Hair
                drawable = 0,
                texture = 0
            },
            {
                component_id = 3, -- Upper Body
                drawable = 0,
                texture = 0
            },
            {
                component_id = 4, -- Lower Body
                drawable = 0,
                texture = 0
            },
            {
                component_id = 5, -- Bag
                drawable = 0,
                texture = 0
            },
            {
                component_id = 6, -- Chaussure
                drawable = 0,
                texture = 0
            },
            {
                component_id = 7, -- Scarf & Chains
                drawable = 0,
                texture = 0
            },
            {
                component_id = 8, -- Shirt
                drawable = 0,
                texture = 0
            },
            {
                component_id = 9, -- Body Armor
                drawable = 0,
                texture = 0
            },
            {
                component_id = 10, -- Decals
                drawable = 0,
                texture = 0
            },
            {
                component_id = 11, -- vestes
                drawable = 0,
                texture = 0
            }
        },
        Props = {
            {
                prop_id = 0, -- chapeaux
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 1, -- Glasses
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 2, -- Ear
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 6, -- Watch
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 7, -- Bracelet
                drawable = -1,
                texture = -1
            }
        },
        Hair = {
            color = 0,
            highlight = 0,
            style = 0,
            texture = 0
        }
    }
}