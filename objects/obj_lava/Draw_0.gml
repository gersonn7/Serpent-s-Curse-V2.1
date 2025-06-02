var offset = sin(current_time * 0.005) * 2;

draw_sprite_ext(
    sprite_index,      
    0,                  
    x,                  
    y + offset,          
    image_xscale,        
    image_yscale,          
    0,                 
    c_white,            
    1
);