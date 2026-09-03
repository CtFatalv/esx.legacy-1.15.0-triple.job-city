---wip types

---@class OxShop
---@field name string
---@field label? string
---@field blip? { id: number, colour: number, scale: number }
---@field inventory { name: string, price: number, count?: number, currency?: string }
---@field locations? vector3[]
---@field targets? { loc: vector3, length: number, width: number, heading: number, minZ: number, maxZ: number, distance: number, debug?: boolean, drawSprite?: boolean }[]
---@field groups? string | string[] | table<string, number> }
---@field model? number[]

return {
	General = {
		name = 'Epicerie',
		inventory = {
			{ name = 'burger', price = 10 },
			{ name = 'water', price = 10 },
		}, targets = {
			{ loc = vec3(25.06, -1347.32, 29.5), length = 0.7, width = 0.5, heading = 0.0, minZ = 29.5, maxZ = 29.9, distance = 1.5, debug = false },
			{ loc = vec3(-3039.18, 585.13, 7.91), length = 0.6, width = 0.5, heading = 15.0, minZ = 7.91, maxZ = 8.31, distance = 1.5, debug = false },
			{ loc = vec3(-3242.2, 1000.58, 12.83), length = 0.6, width = 0.6, heading = 175.0, minZ = 12.83, maxZ = 13.23, distance = 1.5, debug = false },
			{ loc = vec3(1728.39, 6414.95, 35.04), length = 0.6, width = 0.6, heading = 65.0, minZ = 35.04, maxZ = 35.44, distance = 1.5, debug = false },
			{ loc = vec3(1698.37, 4923.43, 42.06), length = 0.5, width = 0.5, heading = 235.0, minZ = 42.06, maxZ = 42.46, distance = 1.5, debug = false },
			{ loc = vec3(1960.54, 3740.28, 32.34), length = 0.6, width = 0.5, heading = 120.0, minZ = 32.34, maxZ = 32.74, distance = 1.5, debug = false },
			{ loc = vec3(548.5, 2671.25, 42.16), length = 0.6, width = 0.5, heading = 10.0, minZ = 42.16, maxZ = 42.56, distance = 1.5, debug = false },
			{ loc = vec3(2678.29, 3279.94, 55.24), length = 0.6, width = 0.5, heading = 330.0, minZ = 55.24, maxZ = 55.64, distance = 1.5, debug = false },
			{ loc = vec3(2557.19, 381.4, 108.62), length = 0.6, width = 0.5, heading = 0.0, minZ = 108.62, maxZ = 109.02, distance = 1.5, debug = false },
			{ loc = vec3(373.13, 326.29, 103.57), length = 0.6, width = 0.5, heading = 345.0, minZ = 103.57, maxZ = 103.97, distance = 1.5, debug = false },
			{ loc = vec3(1134.9, -982.34, 46.41), length = 0.5, width = 0.5, heading = 96.0, minZ = 46.4, maxZ = 46.8, distance = 1.5, debug = false },
			{ loc = vec3(-1222.33, -907.82, 12.43), length = 0.6, width = 0.5, heading = 32.7, minZ = 12.3, maxZ = 12.7, distance = 1.5, debug = false },
			{ loc = vec3(-1486.67, -378.46, 40.26), length = 0.6, width = 0.5, heading = 133.77, minZ = 40.1, maxZ = 40.5, distance = 1.5, debug = false },
			{ loc = vec3(-2967.0, 390.9, 15.14), length = 0.7, width = 0.5, heading = 85.23, minZ = 15.0, maxZ = 15.4, distance = 1.5, debug = false },
			{ loc = vec3(1165.95, 2710.20, 38.26), length = 0.6, width = 0.5, heading = 178.84, minZ = 38.1, maxZ = 38.5, distance = 1.5, debug = false },
			{ loc = vec3(1393.0, 3605.95, 35.11), length = 0.6, width = 0.6, heading = 200.0, minZ = 35.0, maxZ = 35.4, distance = 1.5, debug = false },
			{ loc = vec3(-47.24, -1757.63, 29.42), length = 0.6, width = 0.6, heading = 320.0, minZ = 29.42, maxZ = 29.82, distance = 1.5, debug = false },
            { loc = vec3(-706.69, -913.69, 19.22), length = 0.4, width = 0.5, heading = 0.0, minZ = 19.22, maxZ = 19.62, distance = 1.5, debug = false },
			{ loc = vec3(1164.15, -322.9, 69.21), length = 0.4, width = 0.45, heading = 10.0, minZ = 69.21, maxZ = 69.61, distance = 1.5, debug = false },
			{ loc = vec3(-1820.5, 793.7, 138.1), length = 0.4, width = 0.4, heading = 313.0, minZ = 138.06, maxZ = 138.51, distance = 1.5, debug = false }
		}
	},

	YouTool = {
		name = 'Magasin D\'outils',
		blip = {
			id = 867, colour = 46, scale = 0.7
		}, inventory = {
			{ name = 'phone', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'phone_crypter', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'radio', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'radio_gps', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'gobelet', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'bouteillevide', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'bucketvide', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'fertilisant', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'pack_lessive', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'tenue_plongee', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'bouteilleplongeevide', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'compresseur', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'secateur', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'pioche_normal', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'hache', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'rabot', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'epuisette', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'canne', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'leurre_cuivre', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'leurre_fer', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'leurre_titane', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'gravure_job', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'gravure_job2', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'cagoule', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'zip', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'cutter', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'thermal_charge', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'rasperry', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 't_bag', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
			{ name = 'armour', price = 10, metadata = { registered = true, serial = 'OUTILS' } },
		}, targets = {
			{ loc = vec3(2747.78, 3472.78, 54.68), length = 1.0, width = 1.0, heading = 335.0, minZ = 54.68, maxZ = 56.48, distance = 3.0, debug = false }
		}
	},

	Ammunation = {
		name = 'Ammunation',
		blip = {
			id = 110, colour = 69, scale = 0.7
		}, inventory = {
			{ name = 'WEAPON_BAT', price = 100, metadata = { registered = true, serial = 'AMMU' }},
			{ name = 'WEAPON_KNIFE', price = 200, metadata = { registered = true, serial = 'AMMU' }},
			{ name = 'WEAPON_PISTOL', price = 1000, metadata = { registered = true, serial = 'AMMU' }, license = 'weapon' },
			{ name = 'ammo-9', price = 5, metadata = { registered = true, serial = 'AMMU' }},
		}, targets = {
			{ loc = vec3(22.90, -1105.45, 29.8), length = 0.6, width = 0.5, heading = 160.0, minZ = 29.8, maxZ = 30.2, distance = 2.0, debug = false },
			{ loc = vec3(-661.99, -933.49, 21.83), length = 0.6, width = 0.5, heading = 180.0, minZ = 21.8, maxZ = 22.2, distance = 2.0, debug = false  },
			{ loc = vec3(809.79, -2159.07, 29.62), length = 0.6, width = 0.5, heading = 360.0, minZ = 29.6, maxZ = 30.0, distance = 2.0, debug = false  },
			{ loc = vec3(1692.34, 3761.13, 34.71), length = 0.6, width = 0.5, heading = 227.39, minZ = 34.7, maxZ = 35.1, distance = 2.0, debug = false  },
			{ loc = vec3(-331.51, 6085.29, 31.45), length = 0.6, width = 0.5, heading = 225.0, minZ = 31.4, maxZ = 31.8, distance = 2.0, debug = false  },
			{ loc = vec3(253.69, -50.80, 69.94), length = 0.6, width = 0.5, heading = 70.0, minZ = 69.9, maxZ = 70.3, distance = 2.0, debug = false  },
			{ loc = vec3(2567.60, 292.52, 108.73), length = 0.6, width = 0.5, heading = 360.0, minZ = 108.7, maxZ = 109.1, distance = 2.0, debug = false  },
			{ loc = vec3(-1118.80, 2700.03, 18.55), length = 0.6, width = 0.5, heading = 221.82, minZ = 18.5, maxZ = 18.9, distance = 2.0, debug = false  },
			{ loc = vec3(842.14, -1035.44, 28.19), length = 0.6, width = 0.5, heading = 360.0, minZ = 28.2, maxZ = 28.6, distance = 2.0, debug = false  }
		}
	},

	PoliceArmoury = {
		name = 'Police Armurerie',
		groups = shared.police,
		blip = {
			id = 110, colour = 84, scale = 0.7
		}, inventory = {
			{ name = 'WEAPON_NIGHTSTICK', metadata = { registered = true, serial = 'LSPD' }, grade = 4 },
			{ name = 'WEAPON_FLASHLIGHT', metadata = { registered = true, serial = 'LSPD' }, grade = 4 },
			{ name = 'menotte', metadata = { registered = true, serial = 'LSPD' }, grade = 4 },
			{ name = 'clemenotte', metadata = { registered = true, serial = 'LSPD' }, grade = 4 },
			{ name = 'cutter', metadata = { registered = true, serial = 'LSPD' }, grade = 4 },
			{ name = 'lockpick', metadata = { registered = true, serial = 'LSPD' }, grade = 4 },
			{ name = 'herse', metadata = { registered = true, serial = 'LSPD' }, grade = 4 },
			{ name = 'cone', metadata = { registered = true, serial = 'LSPD' }, grade = 4 },
			{ name = 'barriere', metadata = { registered = true, serial = 'LSPD' }, grade = 4 },
			{ name = 'armour', metadata = { registered = true, serial = 'LSPD' }, grade = 4 },
			{ name = 'WEAPON_STUNGUN', metadata = { registered = true, serial = 'LSPD' }, grade = 4 },
			{ name = 'weapon_pistol50', metadata = { registered = true, serial = 'LSPD' }, grade = 4, license = 'weapon' },
			{ name = 'weapon_pumpshotgun', metadata = { registered = true, serial = 'LSPD' }, grade = 4, license = 'weapon' },
			{ name = 'weapon_carbinerifle', metadata = { registered = true, serial = 'LSPD' }, grade = 4, license = 'weapon' },
			{ name = 'weapon_sniperrifle', metadata = { registered = true, serial = 'LSPD' }, grade = 4, license = 'weapon' },
			{ name = 'ammo-50', metadata = { registered = true, serial = 'LSPD' }, grade = 4 },
			{ name = 'ammo-shotgun', metadata = { registered = true, serial = 'LSPD' }, grade = 4 },
			{ name = 'ammo-rifle', metadata = { registered = true, serial = 'LSPD' }, grade = 4 },
			{ name = 'ammo-sniper', metadata = { registered = true, serial = 'LSPD' }, grade = 4 },
		}, targets = {
			{ loc = vec3(453.21, -980.03, 30.68), length = 0.5, width = 3.0, heading = 270.0, minZ = 30.5, maxZ = 32.0, distance = 6, debug = false  }
		}
	},

	Medicine = {
		name = 'Pharmacie',
		groups = {
			['ambulance'] = 3
		},
		blip = {
			id = 403, colour = 69, scale = 0.7
		}, inventory = {
			{ name = 'medikit', price = 26 },
			{ name = 'bandage', price = 5 }
		}, targets = {
			{ loc = vec3(362.82, -1388.68, 31.42), length = 0.75, width = 2.4, heading = 140.0, minZ = 31.42, maxZ = 33.42, distance = 2.0, debug = false  }
		}
	},

	VendingMachineDrinks = {
		name = 'Vending Machine',
		inventory = {
			{ name = 'water', price = 10 },
			{ name = 'cola', price = 10 },
		},
		model = {
			`prop_vend_soda_02`, `prop_vend_fridge01`, `prop_vend_water_01`, `prop_vend_soda_01`
		}
	}
}