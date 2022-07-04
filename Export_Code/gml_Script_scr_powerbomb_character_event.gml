if active
{
    rand = irandom(3)
    if (rand == 0)
    {
        popup_text(get_text("Notifications", "MissileTank"))
        if (global.difficulty < 2)
        {
            global.maxmissiles += 5
            global.missiles += 5
        }
        if (global.difficulty == 2)
        {
            global.maxmissiles += 2
            global.missiles += 2
        }
    }
    if (rand == 1)
    {
        popup_text(get_text("Notifications", "SuperMissileTank"))
        if (global.difficulty < 2)
        {
            global.maxsmissiles += 2
            global.smissiles += 2
        }
        if (global.difficulty == 2)
        {
            global.maxsmissiles += 1
            global.smissiles += 1
        }
    }
    if (rand == 2)
    {
        popup_text(get_text("Notifications", "PowerBombTank"))
        if (global.difficulty < 2)
        {
            global.maxpbombs += 2
            global.pbombs += 2
        }
    }
    if (global.difficulty == 2)
    {
        global.maxpbombs += 1
        global.pbombs += 1
    }
    if (rand == 3)
    {
        popup_text(get_text("Notifications", "EnergyTank"))
        global.etanks += 1
        global.maxhealth += 100
        global.playerhealth += 100
    }
    itemtype = 1
    event_inherited()
}
