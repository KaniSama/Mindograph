/// @description set up

depth = -1;

key_add_note = virtual_key_add(0, 0, 32, 32, vk_numpad0);

key_save_notes_ctrl = virtual_key_add(32, 0, 32, 32, vk_f5);
//key_save_notes_s = virtual_key_add(32, 0, 32, 32, ord("S"));

key_open_file_ctrl = virtual_key_add(64, 0, 32, 32, vk_f9);
//key_open_file_o = virtual_key_add(64, 0, 32, 32, ord("O"));

notes = ds_list_create();
notes_created_at = ds_list_create();

update_list = false;
filename = "saveBkup";