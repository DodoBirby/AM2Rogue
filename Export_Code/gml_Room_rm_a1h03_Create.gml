global.mapoffsetx = 52
global.mapoffsety = 11
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 3
alldead = 1
for (i = 1; i <= 4; i++)
{
    if (global.metdead[i] == 0)
        alldead = 0
}
if (alldead == 1)
{
    with (oDoor)
        event_user(3)
}
