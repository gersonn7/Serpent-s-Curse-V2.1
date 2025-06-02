function src_funcoes(){

}

function screenShake(_agitacao){
	var shake = instance_create_layer(0, 0, "instances", obj_screenShake)
	shake.shake = _agitacao;
}