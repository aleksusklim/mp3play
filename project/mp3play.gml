#define mp3play_init
// mp3play_init(dll,lame)

global.mp3play_Dll=argument0;
global.mp3play_Lame=external_define(global.mp3play_Dll,'Lame',dll_stdcall,ty_real,1,ty_string);
global.mp3play_Play=external_define(global.mp3play_Dll,'Play',dll_stdcall,ty_real,3,ty_string,ty_real,ty_real);
global.mp3play_Stop=external_define(global.mp3play_Dll,'Stop',dll_stdcall,ty_real,1,ty_real);
global.mp3play_Volume=external_define(global.mp3play_Dll,'Volume',dll_stdcall,ty_real,2,ty_real,ty_real);
global.mp3play_Sample=external_define(global.mp3play_Dll,'Sample',dll_stdcall,ty_real,1,ty_real);
global.mp3play_Empty=external_define(global.mp3play_Dll,'Empty',dll_stdcall,ty_real,0);
global.mp3play_Beeps=external_define(global.mp3play_Dll,'Beeps',dll_stdcall,ty_real,2,ty_real,ty_real);
global.mp3play_Hold=external_define(global.mp3play_Dll,'Hold',dll_stdcall,ty_real,1,ty_string);
return external_call(global.mp3play_Lame,argument1);


#define mp3play_free
// mp3play_free()

mp3play_stop(-1);
mp3play_hold('');
external_free(global.mp3play_Dll);


#define mp3play_play
// mp3play_play(file,slot,volume)

return external_call(global.mp3play_Play,argument0,argument1,argument2);


#define mp3play_stop
// mp3play_stop(slot)

return external_call(global.mp3play_Stop,argument0);


#define mp3play_volume
// mp3play_volume(slot,volume)

return external_call(global.mp3play_Volume,argument0,argument1);


#define mp3play_sample
// mp3play_sample(slot)

return external_call(global.mp3play_Sample,argument0);


#define mp3play_emplty
// mp3play_emplty()

return external_call(global.mp3play_Empty);


#define mp3play_beep
// mp3play_beep(freq,dur)

return external_call(global.mp3play_Beeps,argument0,argument1);


#define mp3play_hold
// mp3play_hold(file)

return external_call(global.mp3play_Hold,argument0);


