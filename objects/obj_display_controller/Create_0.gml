// --- Objeto Controlador da Câmara (o_camera_controller / displayController) ---
// Evento Create

// --- Configuração Base da Câmara ---
cam_base_w = 640;
cam_base_h = 360;

// --- Obter Dimensões do Ecrã/Janela ---
var _display_w = display_get_width();
var _display_h = display_get_height();

// --- Redimensionar Application Surface ---
surface_resize(application_surface, _display_w, _display_h);

// --- Configuração Inicial da View e Câmara ---
view_enabled = true;
view_visible[0] = true;

// Criar a câmara com o tamanho base
var _cam = camera_create_view(
    0, 0, 
    cam_base_w, cam_base_h, 
    0, 
    -1, -1, -1, -1
);
view_set_camera(0, _cam);

// --- Ajuste Dinâmico do Viewport para Preencher a Largura ---
var _cam_ratio = cam_base_w / cam_base_h;
var _new_view_h = _display_w / _cam_ratio;
var _y_offset = (_display_h - _new_view_h) / 2;

view_set_wport(0, _display_w);
view_set_hport(0, _new_view_h);
view_set_xport(0, 0);
view_set_yport(0, _y_offset);

// --- Configuração da GUI ---
display_set_gui_size(cam_base_w, cam_base_h);

// --- Opcional: Lógica para seguir um objeto ---
// camera_set_view_target(_cam, obj_player);
// camera_set_view_border(_cam, cam_base_w / 2, cam_base_h / 2);

// --- Mensagens de Debug ---
show_debug_message("Display: W=" + string(_display_w) + ", H=" + string(_display_h));
show_debug_message("Surface Resized: W=" + string(surface_get_width(application_surface)) + ", H=" + string(surface_get_height(application_surface)));
show_debug_message("Viewport ajustado: X=" + string(view_get_xport(0)) + ", Y=" + string(view_get_yport(0)) + ", W=" + string(view_get_wport(0)) + ", H=" + string(view_get_hport(0)));
show_debug_message("Câmara definida: W=" + string(camera_get_view_width(_cam)) + ", H=" + string(camera_get_view_height(_cam)));
show_debug_message("GUI definida: W=" + string(display_get_gui_width()) + ", H=" + string(display_get_gui_height()));
