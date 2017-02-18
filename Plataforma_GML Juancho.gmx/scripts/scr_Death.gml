// Script usado para la muerte dej jugador:

if (global.checkpointR != noone)
{
    room_goto(global.checkpointR);
    if (object_exists(obj_Ball))
    {
        obj_Ball.x = global.checkpointx;
        obj_Ball.y = global.checkpointy;
    }
}
else
{
    room_restart();
}
