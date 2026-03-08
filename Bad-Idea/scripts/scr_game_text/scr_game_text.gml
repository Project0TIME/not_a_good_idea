/// @param text_id
function scr_game_text(_text_id){
	
	switch(_text_id)
	{
		case "npc 1":
			scr_text("Hello, my name is Thomas Rex");
			scr_text("my favourite food are dino nuggets, but not the t-rex ones");
			scr_text("they make me feel like a canibal");
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