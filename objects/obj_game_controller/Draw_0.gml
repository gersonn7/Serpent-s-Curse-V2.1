if(gameover){
	var x1 = camera_get_view_x(view_camera[0])
	var larguraCam1 = camera_get_view_width(view_camera[0])
	var x2 = x1+larguraCam1;
	var meioX = x1+ larguraCam1/2;
	
	var y1 = camera_get_view_y(view_camera[0])
	var alturaCam1 = camera_get_view_height(view_camera[0])
	var y2 = y1 + alturaCam1
	var meioH = y1 + alturaCam1/2;
		
	var qtd = alturaCam1 * .15
	valor = lerp(valor, 1, .05)
	
	
	draw_set_color(c_black)
	draw_set_alpha(valor - .01)
	draw_rectangle(x1, y1, x2, y2, false)

	draw_set_alpha(1)
	draw_rectangle(x1, y1, x2, y1 + qtd * valor, false);
	
	draw_rectangle(x1, y2, x2, y2 - qtd * valor, false)
	
	draw_set_alpha(1)
	draw_set_color(-1)
	
	
	if(valor >= .85){
		
	contador = lerp(contador, 1, .01)
	
	draw_set_alpha(contador)
	draw_set_font(fnt_gameover)
	draw_set_valign(1)
	draw_set_halign(1)
	
	draw_set_alpha(0.6);
	draw_set_color(c_black);
	draw_text(x+2, y+2, "Game Over");
	draw_set_alpha(1);
	
	draw_set_color(make_color_rgb(255, 59, 59))
	draw_text(meioX, meioH, "Game Over")
	draw_set_font(-1)
	
	draw_set_font(fnt_gameover_subtitle)
	draw_set_color(c_white)
	draw_text(meioX, meioH + 35, "TOQUE na tela para reiniciar");
	draw_set_font(-1)
	
	draw_set_valign(-1)
	draw_set_halign(-1)
	draw_set_alpha(-1)
	
	}
	
}else{
	valor = 0;	
}
