/// @param text_id
function scr_game_text(_text_id){
	
	switch(_text_id)
	{
		case "npc 1":
			scr_text("Hello, my name is Thomas Rex", "dino");
				scr_text_color(4, 8, c_blue);
				scr_text_shake(4, 20);
			scr_text("my favourite food are dino nuggets, but not the t-rex ones");
			scr_text("they make me feel like a canibal", "dino angry", -1);
				scr_option("I eat tires", "npc 1 - tire");
				scr_option("I eat fuel", "npc 1 - fuel");
			break;
			case "npc 1 - tire":
				scr_text("really");
				break;
			case "npc 1 - fuel":
				scr_text("ok");
				break;
	}
	
}