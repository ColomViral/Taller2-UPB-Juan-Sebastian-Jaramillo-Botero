// Script usado para la muerte dej jugador:

if (global.checkpointR != noone)
{
    if (instance_exists(obj_Checkpoint)) && (global.checkpointR == room)
    {
        if (object_exists(obj_Player))
        {
            obj_Player.x = global.checkpointx;
            obj_Player.y = global.checkpointy;
        }
    }
     if (instance_exists(obj_Checkpoint)) && (global.checkpointR != room)
    {
        if (object_exists(obj_Player))
        {
            room_goto(global.checkpointR);       
            obj_Player.x = global.checkpointx;
            obj_Player.y = global.checkpointy;
        }
    }
    if (!instance_exists(obj_Checkpoint)) && (global.checkpointR != room)
    {
        
        if (object_exists(obj_Player))
        {
            room_goto(global.checkpointR);
            obj_Player.x = global.checkpointx;
            obj_Player.y = global.checkpointy;
        }
    }
}
else
{
    audio_stop_sound(snd_Boss);
    room_restart();
}

if(lives <= 0)
    {
    room_goto(Game_over);
    audio_stop_sound (snd_Boss);
    }
    
with(obj_Timer)
{
tiempo -= tiempo;
}
