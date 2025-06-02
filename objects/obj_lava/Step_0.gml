
var dist = point_distance(x, y, obj_player.x, obj_player.y);

var max_dist = 300;

var volume = 1 - (dist / max_dist);

volume = clamp(volume, 0, 1);

audio_sound_gain(som_magma_id, volume, 0); 
