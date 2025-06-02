//Sitema de colisao
var _velh = sign(velh);
var _velv = sign(velv);

//horizontal
repeat(abs(velh)){
	if(place_meeting(x + _velh, y, obj_bloqueio)){
		velh = 0;
		break;
	}
	x+= _velh;
};

//vertical
repeat(abs(velv)){
	if(place_meeting(x, y +_velv, obj_bloqueio)){
		velv = 0;
		break;
	}
	y += _velv;
};