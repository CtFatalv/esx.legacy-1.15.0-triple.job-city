Config = {}

Config.marchand = {
    {
		coord = vector4(54.99, -1739.13, 29.59, 57.63),
        npc = "g_m_y_salvagoon_01", 
        label = "Vente de recyclage", 
        blip = {
            visible = true,
            sprite = 467,
            color = 0,
            display = 4,
            scale = 0.7,
            name = "Vente de recyclage"
        }, 
        sellItems = {
            {item = "mustard", price = 48, currency = "money"},
            {item = "p_bucket", price = 48, currency = "money"},
            {item = "p_carton", price = 48, currency = "money"},
            {item = "p_filet", price = 48, currency = "money"},
            {item = "p_bouteille", price = 48, currency = "money"},
            {item = "p_kway", price = 48, currency = "money"},
            {item = "p_bottec", price = 48, currency = "money"},
        }
    },
    {
		coord = vector4(-2166.31, 5197.39, 16.88, 109.34),
        npc = "u_f_m_promourn_01", 
        label = "Vente de relique", 
        blip = {
            visible = true,
            sprite = 587,
            color = 24,
            display = 4,
            scale = 0.7,
            name = "Vente de relique"
        }, 
        sellItems = {
            {item = "collierperle", price = 10, currency = "money"},
            {item = "piecedor", price = 10, currency = "money"},
            {item = "statuette", price = 10, currency = "money"},
            {item = "petitcoffre", price = 10, currency = "money"},
            {item = "rhumancien", price = 10, currency = "money"},
        }
    },
    {
		coord = vector4(582.74, -419.89, 24.73, 72.98),
        npc = "a_m_y_motox_02", 
        label = "Vente de braquage", 
        blip = {
            visible = false,
            sprite = -1,
            color = -1,
            display = 4,
            scale = 0.5,
            name = ""
        }, 
        sellItems = {
            {item = "money_bank", price = 10, currency = "black_money"},
            {item = "lingotor_bank", price = 10, currency = "black_money"},
            {item = "boite_diamant", price = 10, currency = "black_money"},
        }
    },
    {
		coord = vector4(-679.48, 5833.97, 17.33, 138.63),
        npc = "s_m_m_linecook", 
        label = "Vente d'origine animal", 
        blip = {
            visible = true,
            sprite = 141,
            color = 1,
            display = 4,
            scale = 0.7,
            name = "Vente d'origine animal"
        }, 
        sellItems = {
            {item = "filetdepoulet", price = 10, currency = "money"},
            {item = "chickenbucket", price = 10, currency = "money"},
            {item = "croc_puma", price = 10, currency = "money"},
            {item = "defence_sanglier", price = 10, currency = "money"},
            {item = "corne_vache", price = 10, currency = "money"},
            {item = "bois_cerf", price = 10, currency = "money"},
            {item = "plume_faucon", price = 10, currency = "money"},
            {item = "plume_cormoran", price = 10, currency = "money"},
            {item = "plume_corbeau", price = 10, currency = "money"},
            {item = "plume_pigeon", price = 10, currency = "money"},
            {item = "plume_mouette", price = 10, currency = "money"},
            {item = "plume_poule", price = 10, currency = "money"},
            {item = "peau_rat", price = 10, currency = "money"},
            {item = "peau_lapin", price = 10, currency = "money"},
            {item = "peau_coyote", price = 10, currency = "money"},
            {item = "peau_puma", price = 10, currency = "money"},
            {item = "peau_cochon", price = 10, currency = "money"},
            {item = "peau_sanglier", price = 10, currency = "money"},
            {item = "peau_vache", price = 10, currency = "money"},
            {item = "peau_cerf", price = 10, currency = "money"},
            {item = "viande_faucon", price = 10, currency = "money"},
            {item = "viande_cormoran", price = 10, currency = "money"},
            {item = "viande_corbeau", price = 10, currency = "money"},
            {item = "viande_pigeon", price = 10, currency = "money"},
            {item = "viande_mouette", price = 10, currency = "money"},
            {item = "viande_rat", price = 10, currency = "money"},
            {item = "viande_poule", price = 10, currency = "money"},
            {item = "viande_lapin", price = 10, currency = "money"},
            {item = "viande_cochon", price = 10, currency = "money"},
            {item = "viande_sanglier", price = 10, currency = "money"},
            {item = "viande_vache", price = 10, currency = "money"},
            {item = "viande_cerf", price = 10, currency = "money"},
        }
    },
    {
		coord = vector4(2461.44, 1589.45, 33.01, 273.06),
        npc = "s_m_y_construct_02", 
        label = "Vente de minéraux", 
        blip = {
            visible = true,
            sprite = 477,
            color = 31,
            display = 4,
            scale = 0.7,
            name = "Vente de minéraux"
        }, 
        sellItems = {
            {item = "m_charbon", price = 10, currency = "money"},
            {item = "m_cuivre", price = 10, currency = "money"},
            {item = "m_fer", price = 10, currency = "money"},
            {item = "m_titane", price = 10, currency = "money"},
            {item = "m_pepiteor", price = 10, currency = "money"},
            {item = "m_pepdiam", price = 10, currency = "money"},
            {item = "m_lithium", price = 10, currency = "money"},
            {item = "pochecharbon", price = 10, currency = "money"},
            {item = "poudrecharbon", price = 10, currency = "money"},
            {item = "lingotcuivre", price = 10, currency = "money"},
            {item = "lingotacier", price = 10, currency = "money"},
            {item = "lingottitane", price = 10, currency = "money"},
            {item = "lingotor", price = 10, currency = "money"},
            {item = "diamant", price = 10, currency = "money"},
            {item = "lingotlithium", price = 10, currency = "money"},
        }
    },
    {
		coord = vector4(-468.69, 5357.26, 80.78, 99.17),
        npc = "s_m_m_cntrybar_01", 
        label = "Vente de menuiseries", 
        blip = {
            visible = true,
            sprite = 478,
            color = 16,
            display = 4,
            scale = 0.7,
            name = "Vente de menuiseries"
        }, 
        sellItems = {
            {item = "buche", price = 10, currency = "money"},
            {item = "planche", price = 10, currency = "money"},
            {item = "cube", price = 10, currency = "money"},
        }
    },
    {
		coord = vector4(-1928.89, 2059.59, 140.84, 351.41),
        npc = "s_m_m_hairdress_01", 
        label = "Vente du vigneron", 
        blip = {
            visible = true,
            sprite = 93,
            color = 24,
            display = 4,
            scale = 0.7,
            name = "Vente du vigneron"
        }, 
        sellItems = {
            {item = "grapperaisin", price = 10, currency = "money"},
            {item = "pomme", price = 10, currency = "money"},
            {item = "orange", price = 10, currency = "money"},
            {item = "jusorange", price = 10, currency = "money"},
            {item = "jusraisin", price = 10, currency = "money"},
            {item = "juspomme", price = 10, currency = "money"},
            {item = "jusfruit", price = 10, currency = "money"},
            {item = "vin", price = 10, currency = "money"},
            {item = "champagne", price = 10, currency = "money"},
        }
    },
    {
		coord = vector4(2567.64, 4652.34, 34.08, 291.44),
        npc = "s_m_y_armymech_01", 
        label = "Vente produit agricole", 
        blip = {
            visible = true,
            sprite = 269,
            color = 36,
            display = 4,
            scale = 0.7,
            name = "Vente produit agricole"
        }, 
        sellItems = {
            {item = "oeuf", price = 10, currency = "money"},
            {item = "lait", price = 10, currency = "money"},
            {item = "ble", price = 10, currency = "money"},
            {item = "farine", price = 10, currency = "money"},
            {item = "cacao", price = 10, currency = "money"},
            {item = "poudrecacao", price = 10, currency = "money"},
            {item = "pate", price = 10, currency = "money"},
            {item = "baguette", price = 10, currency = "money"},
            {item = "croissant", price = 10, currency = "money"},
            {item = "painchoc", price = 10, currency = "money"},
            {item = "painraisin", price = 10, currency = "money"},
            {item = "tartepomme", price = 10, currency = "money"},
        }
    },
    {
		coord = vector4(-1594.16, 5192.81, 4.31, 212.00),
        npc = "g_m_y_korean_01", 
        label = "Vente produit de la mer", 
        blip = {
            visible = true,
            sprite = 780,
            color = 3,
            display = 4,
            scale = 0.7,
            name = "Vente produit de la mer"
        }, 
        sellItems = {
            {item = "p_crevette", price = 10, currency = "money"},
            {item = "p_ecrevisse", price = 10, currency = "money"},
            {item = "p_crabe", price = 10, currency = "money"},
            {item = "p_anguille", price = 10, currency = "money"},
            {item = "p_poissonchat", price = 10, currency = "money"},
            {item = "p_truite", price = 10, currency = "money"},
            {item = "p_brochet", price = 10, currency = "money"},
            {item = "p_carpe", price = 10, currency = "money"},
            {item = "p_silure", price = 10, currency = "money"},
            {item = "p_thon", price = 10, currency = "money"},
            {item = "p_hareng", price = 10, currency = "money"},
            {item = "p_saumon", price = 10, currency = "money"},
            {item = "p_espadon", price = 10, currency = "money"},
            {item = "p_poulpe", price = 10, currency = "money"},
            {item = "p_raie", price = 10, currency = "money"},
            {item = "p_tortue", price = 10, currency = "money"},
            {item = "p_requin", price = 10, currency = "money"},
        }
    },
}