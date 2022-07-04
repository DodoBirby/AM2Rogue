global.mapoffsetx = 47
global.mapoffsety = 13
global.waterlevel = 0
if (global.lavastate <= 1)
    make_liquid(1, 672, 0, 0, 0, 0, 0)
mus_change(mus_get_main_song())
global.floormaterial = 1
remove_persistent_objects()
sfx_stop_all()
global.vibL = 0
global.vibR = 0
global.ingame = 0
global.darkness = 0
global.gotolog = -1
global.enablecontrol = 1
global.transitiontype = 0
oControl.displaygui = 1
room_goto(rm_score)
mus_stop_all()
mus_play_once(musCredits)
