/// @description Control Menu

//Item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;

//keyboard controls
if (menu_control)
{
	if (keyboard_check_pressed(ord("W")))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	
	if (keyboard_check_pressed(ord("S")))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
	}
	
	if (keyboard_check_pressed(vk_space))
	{
		menu_x_target = gui_width+200;
		menu_committed = menu_cursor;
		ScreenShake(4,30);
		menu_control = false
	}
}

if ((menu_x > gui_width+150) && (menu_committed != -1))
{
	switch (menu_committed)
	{
		case 2: default: SlideTrans(TRANS_MODE.NEXT); break;
		case 1: 
		{
			if (!file_exists(SAVEFILE))
			{
				SlideTrans(TRANS_MODE.NEXT);
			}
			else
			{
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				file_text_close(file);
				SlideTrans((TRANS_MODE.GOTO),target);
			}
			break;
		}
		case 0: game_end(); break;
	}	
}
