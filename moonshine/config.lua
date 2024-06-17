Config = {}

Config.JimShops = false --set true if using jims menu found here https://github.com/jimathy/qb-menu
Config.MoneyType = 'cash' --what account you wanna use / cash/bank/blackmoney etc
Config.Items = { --these are items you require so if you want to change them to an existing item in your server change the second variable so ["Trowel"] = changeme,
--DO NOT CHANGE THE FIRST VARIABLE THAT IS NEEDED!!!
    ["Trowel"] = "trowel",
    ["Waterjar"] = "m-waterjar",
    ["Yeast"] = "m-yeast",
    ["Potato"] = "m-potato",
    ["Barley"] = "m-barley",
    ["Mash"] = "m-mash",
    ["HeatedWater"] = "m-heatedwater",
    ["HeatedBarley"] = "m-heatedbarley",
    ["HeatedMixture"] = "m-heatedmixture",
    ["MoonshineMix"] = "m-moonshinemix",
    ["Moonshine"] = "m-moonshine"
}

Config.ShopBlip = true
Config.Shop = {
    ["Sprite"] = 52,
    ["Colour"] = 1,
    ["Size"] = 0.5,
    ["Label"] = "Moonshine Ingredients",
}
Config.IngredientShop = {
    label = "Moonshine Ingredients",
        slots = 6,  --make sure this number is the same as the amount of items you have in this list or it wont work
        items = {
            [1] = {
                name = "m-waterjar",
                price = 15,
                amount = 150,
                info = {},
                type = "item",
                slot = 1,
            },
            [2] = {
                name = "m-yeast",
                price = 35,
                amount = 150,
                info = {},
                type = "item",
                slot = 2,
            },
            [3] = {
                name = "trowel",
                price = 35,
                amount = 10,
                info = {},
                type = "item",
                slot = 3,
            },
        }
}
Config.EnableLocations = "enabled"  --dont change this as third eye not setup
Config.MoonshineLocations = {
    ["pick-potato1"] = {    --picking locations have a 20 metre radius. so best not to put them too close together. i designed it to work in a field
        [1] = vector3(2280.89, 5067.54, 46.02),
        [2] = vector3(2252.24, 5096.56, 48.62),
    },
    ["pick-barley1"] = {
        [1] = vector3(2284.09, 5132.39, 51.85),
        [2] = vector3(2317.61, 5136.78, 50.33),
    },
    ["buy-ingredients"] = {
        [1] = vector3(1697.43, 4872.3, 42.03),
    },
    ["heat-water"] = {  --stage 1
        [1] = vector3(2438.76, 4976.2, 46.81),
    },
    ["add-barley"] = {  --stage 2
        [1] = vector3(2441.39, 4976.66, 46.81),
    },
    ["add-yeast"] = {  --stage 3
        [1] = vector3(2439.88, 4978.0, 46.81),
    },
    ["ferment-mash"] = {   --stage 4
        [1] = vector3(2441.48, 4973.06, 46.81),
    },
    ["finish-moonshine"] = {   --stage 5
        [1] = vector3(2442.94, 4977.68, 46.81),
    },
}

--TIMINGS--
Config.ActionTime = 15 --in seconds (10 = 10 seconds)
Config.PickingTime = 15

--harvest--
Config.PickingRadius = 20 --how big the area you can pick at picking locations (20 is the default i left it at but change to whatever you like)
Config.PotatoHarvestAmount = math.random(1, 7)  --amount of potato to harvest each time
Config.BarleyHarvestAmount = math.random(1, 6)  -- amont of barley to harvest each time

--amounts --
Config.MashAmountNeeded = 1 --amount of mash you need to add to make next step
Config.YeastAmountNeeded = 2
Config.BarleyAmountNeeded = 4
Config.MashAmount = math.random(1, 6)  --amount of mash to get from 1 potato
Config.BatchAmount = math.random(13, 118)     --how many moonshine you end up with by end of all stages

--selling--
Config.SellItemLocation = vector3(1538.85, 6322.41, 24.61)  --location to sell moonshine
Config.MoonshineValue = 160  --how much 1 moonshine sells for at sell location

--BREAK/FAIL SYSTEM--
Config.EnableFailing = true --can fail a process
Config.LoseOnFail = true --makes it so you lose the item upon failing if you have enablefailing = true
Config.FireOnFail = true --[VERY FUN] [BOOM]
Config.FailChance = 16 --in % chance that you fail a step.
Config.FireChance = 4 --in % out of 100 