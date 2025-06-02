function src_limparListaSfx(snd){
    if (ds_map_exists(sons_tocados, snd)) {
        ds_map_delete(sons_tocados, snd);
}
}