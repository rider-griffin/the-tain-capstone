/// @param text_id
function scr_game_text(_text_id) {
	
	switch(_text_id) {
		
		case "Ailill - Pillow Talk":
			scr_text("It struck me how much better off you are today than the day I married you.", "Fergus");
			scr_text("I was well enough off without you.", "Medb", -1);
					scr_text_float(22, 29);
			scr_text("Then your wealth was something I didn’t know or hear much about.", "Fergus");
			scr_text("Except for your woman’s things, and the neighboring enemies making off with loot and plunder.", "Fergus - angry");
			scr_text("Not at all.", "Medb", -1);
			scr_text("But with the high king of Ireland for my father and I myself Medb the highest and haughtiest of his six daughters. I outdid them in grace and giving and battle and warlike combat. My father gave me a whole province of Ireland, this province ruled from Cruachan, which is why I am called ‘Medb of Cruachan.’", "Medb - confident", -1);
			scr_text("And when men came to woo me, I wouldn’t go. For I asked a harder wedding gift than any woman ever asked before from a man in Ireland -- the absence of meanness and jealousy and fear.", "Medb", -1);
			scr_text("If I married a mean man our union would be wrong, because I’m so full of grace and giving. It would be an insult if I were more generous than my husband, but not if the two of us were equal in this.", "Medb", -1);
			scr_text("Ailil from Leinster, you aren’t greedy or jealous or sluggish and if anyone causes you shame or upset of trouble, the right to compensation is mine for you’re a kept man.", "Medb - confident", -1);
			scr_text("By no means, but with two kinds for my brothers, I let them rule because they were older not because they are better than I am in grace or giving. I never heard, in all Ireland, of a province run by a woman except this one, which is why I came and took the kingship here.", "Fergus - angry");
			scr_text("It still remains, that my fortune is greater than yours.", "Medb - confident", -1);
			break;
			
		case "NPC 2":
			scr_text("Hi! I'm NPC 2, NOT the main character of this game that you are playing right now");
			scr_text("blah blah blah boring testing stuff");
			break;
		
		case "Pillow Talk Intro":
			//Narrator does not need any character portrait params
			scr_text("It appears as though we've walked into some sort of pillow talk conversation... Would you like to eavesdrop?");
				scr_text_color(52, 62, c_yellow, c_yellow, c_white, c_white);
				scr_option("Yes, seems interesting.", "Pillow Talk Intro - yes");
				scr_option("No, seems boring and rude.", "Ailill - Pillow Talk - no");
				break;
				case "Pillow Talk Intro - yes":
					scr_text("Click on King Ailil to get a closer listen...");
					break;
				//TODO: Remove Ailill clickbox once either options are triggered
				case "Ailill - Pillow Talk - no":
					scr_text("Looks like we don't have a choice...");
					scr_text("It struck me how much better off you are today than the day I married you.", "Fergus");
					scr_text("I was well enough off without you.", "Medb", -1);
						scr_text_float(22, 29);
					scr_text("Then your wealth was something I didn’t know or hear much about.", "Fergus");
					scr_text("Except for your woman’s things, and the neighboring enemies making off with loot and plunder.", "Fergus - angry");
					scr_text("Not at all.", "Medb", -1);
					scr_text("But with the high king of Ireland for my father and I myself Medb the highest and haughtiest of his six daughters. I outdid them in grace and giving and battle and warlike combat. My father gave me a whole province of Ireland, this province ruled from Cruachan, which is why I am called ‘Medb of Cruachan.’", "Medb - confident", -1);
					scr_text("And when men came to woo me, I wouldn’t go. For I asked a harder wedding gift than any woman ever asked before from a man in Ireland -- the absence of meanness and jealousy and fear.", "Medb", -1);
					scr_text("If I married a mean man our union would be wrong, because I’m so full of grace and giving. It would be an insult if I were more generous than my husband, but not if the two of us were equal in this.", "Medb", -1);
					scr_text("Ailil from Leinster, you aren’t greedy or jealous or sluggish and if anyone causes you shame or upset of trouble, the right to compensation is mine for you’re a kept man.", "Medb - confident", -1);
					scr_text("By no means, but with two kinds for my brothers, I let them rule because they were older not because they are better than I am in grace or giving. I never heard, in all Ireland, of a province run by a woman except this one, which is why I came and took the kingship here.", "Fergus - angry");
					scr_text("It still remains, that my fortune is greater than yours.", "Medb - confident", -1);
	}
	
}