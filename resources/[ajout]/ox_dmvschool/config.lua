Config = {}

Config.DMVSchool = {
    vector3(240.7489, -1379.575, 33.74177)
}

Config.Language = "fr"

Config.SpeedMultiplier = 3.6 -- 3.6 for kmh, 2.236936 for mph

Config.MaxErrors = 10

Config.blip = {
    blips = vector3(232.19, 365.15, 106.03),
    Sprite = 778,
    Display = 4,
    Colour = 53,
    Scale = 0.7,
    Name = 'Auto-École'
}

Config.PuntiMinimi = 15 -- Minimum points to pass the theory test

-- ATTENTION: Modifying the id after a user has already obtained a license causes them to be lost
Config.License = {
    {
        label = 'License A',
        id = 'permis_moto',
        img = 'bike.png',
        pricing = {
            theory = 500,
            practice = 1000
        },
        vehicle = {
            model = 'sanchez',
            coords = vector3(232.84, 385.21, 106.00),
            heading = 71.0,
            plate = "DMV"
        } 
    },
    {
        label = 'License B',
        id = 'permis_voiture',
        img = 'car.png',
        pricing = {
            theory = 1500,
            practice = 2000
        },
        vehicle = {
            model = 'kalahari',
            coords = vector3(232.84, 385.21, 106.00),
            heading = 71.0,
            plate = "DMV"
        }
    },
    {
        label = 'License C',
        id = 'permis_camion',
        img = 'truck.png',
        pricing = {
            theory = 2500,
            practice = 3000
        },
        vehicle = {
            model = 'mule3',
            coords = vector3(232.84, 385.21, 106.00),
            heading = 71.0,
            plate = "DMV"
        }
    }
}

Config.PracticeCoords = {
    [1] = {
        
        { coordinate = vector3(215.11, 367.56, 105.88) , speedLimit = 50 },
        { coordinate = vector3(232.49, 347.24, 105.10) , speedLimit = 80 },
        { coordinate = vector3(400.62, 300.43, 102.57) , speedLimit = 80 },
        { coordinate = vector3(544.96, 249.00, 102.68) , speedLimit = 80 },
        { coordinate = vector3(913.62, 517.68, 120.12) , speedLimit = 80 },
        { coordinate = vector3(1064.16, 438.09, 91.56) , speedLimit = 80 },
        { coordinate = vector3(937.27, 247.68, 79.60) , speedLimit = 120 },
        { coordinate = vector3(538.31, -314.48, 43.19) , speedLimit = 120 },
        { coordinate = vector3(496.37, -317.08, 45.06) , speedLimit = 80 },
        { coordinate = vector3(380.10, -272.39, 53.38) , speedLimit = 80 },
        { coordinate = vector3(94.23, -165.55, 54.56) , speedLimit = 80 },
        { coordinate = vector3(-53.62, -104.15, 57.38) , speedLimit = 80 },
        { coordinate = vector3(-41.88, 14.96, 71.61) , speedLimit = 80 },
        { coordinate = vector3(29.61, 230.50, 109.11) , speedLimit = 80 },
        { coordinate = vector3(200.44, 391.44, 107.08) , speedLimit = 80 }
    }
}

Config.Question = {
    [1] = {
        {
            label = "Quelle est la couleur principale d’un panneau d’interdiction ?",
            options = {
                { label = "Rouge", correct = true },
                { label = "Bleu", correct = false },
                { label = "Jaune", correct = false }
            }
        },
        {
            label = "Que signifie un panneau triangulaire bordé de rouge ?",
            options = {
                { label = "Intersection en T", correct = false },
                { label = "Danger / Attention", correct = true },
                { label = "Sens unique", correct = false }
            }
        },
        {
            label = "Que signifie une ligne continue au milieu de la route ?",
            options = {
                { label = "Dépassement autorisé", correct = false },
                { label = "Dépassement interdit", correct = true },
                { label = "Dépassement autorisé uniquement à droite", correct = false }
            }
        },
        {
            label = "Quelle est la limite de vitesse en zone résidentielle ?",
            options = {
                { label = "50 km/h", correct = true },
                { label = "80 km/h", correct = false },
                { label = "120 km/h", correct = false }
            }
        },
        {
            label = "Que signifie un panneau avertissant d’un radar automatique (symbole appareil photo) ?",
            options = {
                { label = "Zone de stationnement", correct = false },
                { label = "Zone d'interdiction de stationner", correct = false },
                { label = "Présence d’un radar automatique", correct = true }
            }
        },
        {
            label = "Quelle est la distance minimale de sécurité à maintenir ?",
            options = {
                { label = "1 mètre", correct = false },
                { label = "2 secondes de distance", correct = true },
                { label = "0,5 mètre", correct = false }
            }
        },
        {
            label = "Que doit faire un conducteur à un passage à niveau avec barrières ouvertes ?",
            options = {
                { label = "Accélérer pour passer avant qu’elles ne se ferment", correct = false },
                { label = "Traverser seulement si aucun train n'arrive", correct = true },
                { label = "Klaxonner et avancer", correct = false }
            }
        },
        {
            label = "Que signifie un panneau stop ?",
            options = {
                { label = "Cédez le passage", correct = false },
                { label = "Obligation de s'arrêter", correct = true },
                { label = "Sens unique", correct = false }
            }
        },
        {
            label = "Que signifie un panneau bleu avec des piétons ?",
            options = {
                { label = "Voie réservée aux vélos", correct = false },
                { label = "Voie réservée aux piétons", correct = true },
                { label = "Voie réservée aux transports publics", correct = false }
            }
        },
        {
            label = "Que signifie une croix de Saint-André (X rouge sur fond blanc) ?",
            options = {
                { label = "Passage à niveau sans barrières", correct = true },
                { label = "Zone de stationnement autorisé", correct = false },
                { label = "Zone piétonne", correct = false }
            }
        },
        {
            label = "Que signifie un panneau d'interdiction d'accès ?",
            options = {
                { label = "Cédez le passage", correct = false },
                { label = "Interdiction de circuler dans ce sens", correct = true },
                { label = "Dépassement obligatoire", correct = false }
            }
        },
        {
            label = "Que doit faire un conducteur à un carrefour sans signalisation ?",
            options = {
                { label = "Accélérer pour traverser rapidement", correct = false },
                { label = "Céder le passage à droite et avancer avec prudence", correct = true },
                { label = "Klaxonner pour prévenir les autres", correct = false }
            }
        },
        {
            label = "Que signifie un panneau annonçant un virage dangereux à gauche ?",
            options = {
                { label = "Proximité d'une aire de repos", correct = false },
                { label = "Présence d'une intersection", correct = false },
                { label = "Virage dangereux à gauche", correct = true }
            }
        },
        {
            label = "Que signifie un panneau de fin d'interdiction de dépasser ?",
            options = {
                { label = "Dépassement autorisé", correct = true },
                { label = "Interdiction de stationner", correct = false },
                { label = "Fin de l'autoroute", correct = false }
            }
        },
        {
            label = "Que signifie un panneau de passage piéton ?",
            options = {
                { label = "Passage réservé aux vélos", correct = false },
                { label = "Interdiction de traverser", correct = false },
                { label = "Passage pour piétons", correct = true }
            }
        },
        {
            label = "Que signifie un panneau de fin de zone à circulation limitée ?",
            options = {
                { label = "Début de zone limitée", correct = false },
                { label = "Fin de la zone de stationnement", correct = false },
                { label = "Fin des restrictions d'accès", correct = true }
            }
        },
        {
            label = "Que signifie un panneau d'interdiction aux véhicules motorisés ?",
            options = {
                { label = "Cédez le passage", correct = false },
                { label = "Interdiction uniquement pour les camions", correct = false },
                { label = "Interdiction pour tous les véhicules motorisés", correct = true }
            }
        },
        {
            label = "Que doit faire un conducteur à un feu jaune clignotant ?",
            options = {
                { label = "Accélérer pour passer", correct = false },
                { label = "Avancer avec prudence en cédant la priorité", correct = true },
                { label = "Continuer sans ralentir", correct = false }
            }
        },
        {
            label = "Que signifie un panneau d'interdiction aux piétons ?",
            options = {
                { label = "Interdiction aux cyclistes", correct = false },
                { label = "Interdiction aux piétons", correct = true },
                { label = "Obligation de passer en vélo", correct = false }
            }
        },
        {
            label = "Que signifie un panneau interdisant les véhicules tractant une remorque ?",
            options = {
                { label = "Interdiction aux camping-cars", correct = false },
                { label = "Interdiction aux véhicules avec remorque", correct = true },
                { label = "Obligation de tracter une remorque", correct = false }
            }
        }
    }
}

Config.Lang = {
    ['fr'] = {
        ['speed_error'] = "Vous roulez trop vite, ralentissez !",
        ['open_dmv'] = "Appuyez sur ~INPUT_CONTEXT~ pour ouvrir la préfecture",
        ['dmv'] = "AUTO-ÉCOLE",
        ['point'] = "POINT",
        ['error'] = "ERREUR",
        ['ok'] = "Ok",
        ['start_theory'] = "Commencer le test théorique",
        ['theory_before'] = "Passez le test théorique",
        ['start_practice'] = "Commencer le test pratique",
        ['test_passed'] = "Test réussi !",
        ['already_done'] = "Vous l'avez déjà fait !",
        ['theory_success'] = "Félicitations, vous avez réussi le test théorique, revenez bientôt pour le test pratique !",
        ['theory_error'] = "Nous sommes désolés de vous informer que vous n'avez pas réussi le test théorique. Ne vous découragez pas, revenez mieux préparé et essayez à nouveau !",
        ['practice_success'] = "Félicitations, vous avez réussi le test pratique, vous êtes maintenant un conducteur licencié !",
        ['practice_error'] = "Nous sommes désolés de vous informer que vous n'avez pas réussi le test pratique. Ne vous découragez pas, revenez mieux préparé et essayez à nouveau !",
        ['money_error'] = "Vous n'avez pas assez d'argent pour passer ce test ! Il vous manque %s€"
    }
}

-- Functions --

onCompleteTheory = function(license)
    TriggerServerEvent('ricky-dmv:givelicense', license) -- Give license to sql
end

onCompletePractice = function(license)
    TriggerServerEvent('ricky-dmv:givelicense', license) -- Give license to sql
end