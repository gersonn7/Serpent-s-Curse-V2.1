/// function
/// @arg player
/// @arg distancia
/// @arg xscale

var otherPlayer = argument0;
var distancia = argument1;
var xscale = argument2;

if (!instance_exists(otherPlayer)) exit;

var ataque_y = y - sprite_height / 2;
var ataque_x = x + (distancia * xscale);


var player = collision_line(x, ataque_y, ataque_x, ataque_y, otherPlayer, false, true);

if (player) {
    state = "attack";
}