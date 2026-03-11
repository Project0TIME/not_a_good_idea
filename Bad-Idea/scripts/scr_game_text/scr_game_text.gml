/// @param text_id
function scr_game_text(_text_id){

	switch(_text_id)
	{
		  // --- NPC 1: Dinosaur --- //
		  // determines what dialouge plays
		case "npc 1":
			// First variable is the Displayed text in a string and secound variable is the speaker(speaker changes displayed sprite and textbox)
			scr_text("You are a toy dinosaur", "dino");
			 // Optional effects (currently disabled):
				//	scr_text_float(Starting Letter as number, Ending Letter as number);
				//	scr_text_color(Starting Letter as number, Ending Letter as number, color(in format like c_blue));
				//	scr_text_shake(Starting Letter as number, Ending Letter as number);
			scr_text("my favourite food are dino nuggets, but not the t-rex ones");
			// -1 as third variable to display speaker on other side for dialouge
			scr_text("they make me feel like a canibal", "dino angry", -1);
				//please define options after the whole text and nestet like this to increase readability
				// First variable is the Displayed text in a string and secound variable is the porition of dialouge that is triggerd when option is selected
				scr_option("I eat tires", "npc 1 - tire");
				scr_option("I eat fuel", "npc 1 - fuel");
			//at the end of every case there has to be a break
			break;
			// please define the dialouge for options nested like this and make sure the options are the exact string you had in options
			case "npc 1 - tire":
				scr_text("really");
				break;
			case "npc 1 - fuel":
				scr_text("ok");
				break;
	}
	
}