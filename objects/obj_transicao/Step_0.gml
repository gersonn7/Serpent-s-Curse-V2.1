switch (estado) {
    case "fade_out":
        alpha += 0.05;
        if (alpha >= 1) {
            alpha = 1;
            room_goto(Room2); 
        }
        break;

    case "fade_in":
        alpha -= 0.05;
        if (alpha <= 0) {
            alpha = 0;
            estado = "idle";
        }
        break;
}
