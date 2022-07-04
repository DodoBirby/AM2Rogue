if active
{
    global.Mitem = 0
    rand = 19
    if (rand >= 0 && rand <= 7)
    {
        popup_text(get_text("Notifications", "MissileTank"))
        if (global.difficulty < 2)
        {
            global.maxmissiles += 5
            global.missiles += 5
        }
        else
        {
            global.maxmissiles += 2
            global.missiles += 2
        }
    }
    if (rand >= 8 && rand <= 11)
    {
        popup_text(get_text("Notifications", "SuperMissileTank"))
        if (global.difficulty < 2)
        {
            global.maxsmissiles += 2
            global.smissiles += 2
        }
        else
        {
            global.maxsmissiles += 1
            global.smissiles += 1
        }
    }
    if (rand >= 12 && rand <= 14)
    {
        popup_text(get_text("Notifications", "PowerBombTank"))
        if (global.difficulty < 2)
        {
            global.maxpbombs += 2
            global.pbombs += 2
        }
        else
        {
            global.maxpbombs += 1
            global.pbombs += 1
        }
    }
    if (rand >= 15 && rand <= 18)
    {
        popup_text(get_text("Notifications", "EnergyTank"))
        global.etanks += 1
        global.maxhealth += 100
        global.playerhealth += 100
    }
    if (rand == 19)
        global.Mitem = 1
    while (global.Mitem == 1)
    {
        global.Mitem = 0
        rando = irandom(12)
        if (rando == 0)
        {
            if (global.bomb == 0)
                global.bomb = 1
            else
                global.Mitem = 1
        }
        if (rando == 1)
        {
            if (global.spiderball == 0)
                global.spiderball = 1
            else
                global.Mitem = 1
        }
        if (rando == 2)
        {
            if (global.jumpball == 0)
                global.jumpball = 1
            else
                global.Mitem = 1
        }
        if (rando == 3)
        {
            if (global.hijump == 0)
                global.hijump = 1
            else
                global.Mitem = 1
        }
        if (rando == 4)
        {
            if (global.currentsuit == 0 || 1)
                global.currentsuit += 1
            else
                global.Mitem = 1
        }
        if (rando == 5)
        {
            if (global.spacejump == 0)
                global.spacejump = 1
            else
                global.Mitem = 1
        }
        if (rando == 6)
        {
            if (global.speedbooster == 0)
                global.speedbooster = 1
            else
                global.Mitem = 1
        }
        if (rando == 7)
        {
            if (global.screwattack == 0)
                global.screwattack = 1
            else
                global.Mitem = 1
        }
        if (rando == 8)
        {
            if (global.cbeam == 0)
                global.cbeam = 1
            else
                global.Mitem = 1
        }
        if (rando == 9)
        {
            if (global.ibeam == 0)
                global.ibeam = 1
            else
                global.Mitem = 1
        }
        if (rando == 10)
        {
            if (global.wbeam == 0)
                global.wbeam = 1
            else
                global.Mitem = 1
        }
        if (rando == 11)
        {
            if (global.sbeam == 0)
                global.sbeam = 1
            else
                global.Mitem = 1
        }
        if (rando == 12)
        {
            if (global.pbeam == 0)
                global.pbeam = 1
            else
                global.Mitem = 1
        }
    }
    itemtype = 1
    event_inherited()
}
