if room = Room_Title_Screen
{
	audio_stop_sound(Normal_Stage);
    audio_play_sound(Opening_Screen,0,true);
}
if room = Game_Room_Normal
{
	audio_stop_sound(Opening_Screen);
    audio_play_sound(Normal_Stage,0,true);
}
if room = Game_Room_Easy
{
	audio_stop_sound(Opening_Screen);
    audio_play_sound(Easy_stage,0,true);
}
