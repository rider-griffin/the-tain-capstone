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


			compare_wealth();
			scr_text("I know where to find such a bull and better in The province of Ulster, in the territory of Cuailnge, in Daire mac Fiachna's house. Donn Cuailnge is the bull's name, the Brown Bull of Cuailnge.", "Extra" , -1);

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
					

					compare_wealth();
					scr_text("I know where to find such a bull and better in The province of Ulster, in the territory of Cuailnge, in Daire mac Fiachna's house. Donn Cuailnge is the bull's name, the Brown Bull of Cuailnge.", "Extra" , -1);

			
			break;
		case "The tain bo cuailnge begins":
			scr_text( "Everyone leaving a lover or a friend today will curse me. This army is gathered for me", "Medb" , -1);
			//Fedelm approaches
			scr_text("Fedelm, prophetess; how seest thou the host?", "Medb", -1);
			scr_text("I see it crimson, I see it red." , "Fedelm", -1);
			scr_text("It can't be true. Conchobor is suffering his pangs in Emain with all the rest of the Ulster warriors. My messengers have come from there and told me. Fedelm, prophetess; how seest thou our host?" , "Medb - angry" , -1);
			scr_text("A giant on the plain I see, doing battle with the host, holding in each of his two hands four short quick swords. I see him hurling against that host two gae bolga and a spear and an ivory-hilted sword, each weapon to its separate task.", "Fedelm", -1);
			break;
		case "Cuchulainn’s boyhood deeds":
			scr_text("Why didn’t you put yourself under the boys’ protection?" , "Conchobor - surprised", -1);
			scr_text("I knew nothing about that, but I ask your protection against them now." , "Cuchulainn" , -1);
			scr_text("You have it. What are you going to do to them now?",  "Conchobor" , -1);
			scr_text("Offer them my protection.", "Cuchulainn", -1 ); 
			scr_text("Promise it here and now", "Conchobor" , -1);
			scr_text("I promise.", "Cuchulainn", -1 );
			scr_text("Soon the boy arrived and the hound started out for him. But he still attended to his game.");
			//Cuchulainn tosses the ball and hits it with the spear. The hound comes running for him. First combat scene with Cuchulainn against the hound. If Cuchulainn wins:
			scr_text("Cuchulainn shall be your name, the Hound of Culann. ", "Cathbad", -1);
			scr_text(" What wonder that the man who did these deeds before he was five years old should cut off the heads of those four?");
			scr_text("Well, the day has this merit: he who arms for the first time today will achieve fame and greatness. But his life is short.", "Cathbad", -1);
			scr_text("That is a fair bargain. If I achieve fame I am content, through I had only one day on earth.", "Cuchulainn" , -1);
			scr_text("Whoever mounts his first chariot today, his name will live forever in Ireland.", "Cathbad", -1);
			break;
					case "Death Death":
			scr_text("Shame on you all, not to be out after this pestering demon that is killing you all!", "Medb - angry" );
			break;
			//Combat scene 
		case "Single Combat":
			scr_text("I know what he has in  mind and indeed it bodes you no good. This is his plan: that he will fight you one by one in the ford, and that no cattle will be taken from the ford for a day and a night after each combat. This plan will gain time for him until help comes from the men of Ulster.", "Fergus" ,-1);
			scr_text("It will be easier on us, no doubt, to lose one man every day than a hundred every night.", "Ailill", -1);
			scr_text("I would rather you didn’t come [to Etarcomol]. Not that I dislike you, but for fear of strife between Cuchulainn and you. With your pride and insolence, and the other’s ferocity and grimness, force, fury and violence, no good can come from your meeting.", "Fergus" ,-1);
			//Move to scene for battle 
			scr_text("I see nothing to be afraid of, no horror or terror or the grinding of multitudes. You’re a fine lad, I would say, for graceful tricks with wooden weapons.","Etarcomol - confident", -1);
			scr_text("You are making little of me, but for Fergus’s sake I won’t kill you.If you hadn’t his protection, you would have had your bowels ripped out by now and your quarters scattered behind you all the way from your chariot to the camp." ,"Cuchulainn - angry", -1);
			scr_text("You have no choice." , "Etarcomol", -1);
			//Fight between the two. If Cuchulainn wins: 
			//Nadcranntail comes to fight Cuchulainn with a small spear.
			scr_text("You know I don’t kill unarmed men.", "Cuchulainn" , -1);
			//Nadcranntail leaves and returns with a bigger weapon
			scr_text("Are you really Cuchulainn? How can I take a little lamb’s head back to the camp? I can’t behead a beardless boy.", "Nadcranntail - surprised" , -1);
			//Cuchulainn makes a beard of grass and returns
			scr_text("This is more like him. A fight with rules!", "Nadcranntail" , -1);
			scr_text("Agreed, name your rules.",  "Cuchulainn" , -1);
			scr_text("Thrown spears and no dodging." ,"Nadcranntail" , -1);
			scr_text("No dodging except upward." ,  "Cuchulainn" , -1);
			//Not a full fight but Nadcranntail needs to throw spears and Cuchulainn needs to jump to dodge it and then throw his own. Two actions only, not a full fight. 
			break;
		case "The pact is broken the great carnage":
			scr_text("Ask Cuchulainn for a truce", "Medb", -1);
			scr_text("She sent her messenger, with a false offer of peace, to find Cuchulainn and get him to meet her at that place next day. Medb came there and set a trap for Cuchulainn.");
			//Cuchulainn fights 14 warriors from Medb’s army. One strike health bars for them
			scr_text("Send the camp fool made up to look like me, with a king’s crown on his head. Stand him at a distance from Cuchulainn so as not to be recognized, and send the girl with him. He can betroth her to Cuchulainn and they can come away quickly. Maybe the trick will work and hold him back until the day when he comes with the men of Ulster to the last Battle.", "Ailill", -1);
			//Cuchulainn shoots the fool and hangs him and the girl up on pillars and leaves them there. 
			scr_text("There was no further truce for them with Cuchulainn after that.");
			//Cuchulainn sleeps for three days. Switch to Fergus/Ailill/Medb camp, boy troop comes in while Cuchulainn is asleep.
			scr_text("It is terrible that our friend Cuchulainn must do without help.", "Boy troop" , -1);
			scr_text("These are some of the boy-troop of Ulster coming to help Cuchulainn.", "Fergus", -1);
			//Boy troop is killed. Cut scene here, to keep it less graphic and because there is no interaction to this scene with Cuchulainn asleep. Switch to Cuchulainn’s camp.
			scr_text("Shame, that I hadn’t my strength for this! If I had, the boy-troop wouldn’t have perished as they did.", "Cuchulainn - angry" , -1);
			scr_text("Onward, Little Hound; there is no stain on your good name, no slight on your courage.", "Warrior", -1);
			//Cuchulainn fights army at Medb and Ailill’s camp including warp spasm. 
			break;
		case "Combat of Ferdia and Cuchulainn":
			scr_text("Medb sent messengers to Ferdia. There was not a feat of Cuchulainn’s that he lacked, except the gae bolga.");
			scr_text("Ferdia, do you know why you were brought to our tent? To give you a chariot worth three times seven bondmaids, with war harness enough for a dozen men, and a portion of the fine Plain of Ai equal to the plain of Murtheimne. Also the right to stay forever in Cruachan, with your wine supplied, and your kith and kin free forever from tax and tribute. And this leaf-shaped brooch of mine that was made out of ten score ounces and ten score half-ounces and ten score cross-measures and ten score quarters of gold. And Finnabair, my daughter and Ailill’s, for your wife. And my own friendly thighs on top of that if needs be.", "Medb", -1);
			scr_text("No need! Those gifts and trophies are enough. But I would sooner leave them with you than go out to fight my own foster-brother.", "Ferdia", -1);
			scr_text("What Cuchulainn said was true." , "Medb", -1);
			scr_text("What did he say?", "Ferdia" ,-1);
			scr_text("He said he wouldn’t count it any great triumph if his greatest feat of arms were your downfall." , "Medb", -1);
			scr_text("He shouldn’t have said that. I’ll be first at the ford of battle tomorrow morning to fight him.", "Ferdia" ,-1);
			//Switch to Cuchulainn's camp
			scr_text("I am here to tell you the warrior who is coming to fight you tomorrow morning. Your own foster-brother Ferdia.", "Ferdia", -1);
			scr_text("I swear I don’t want this meeting. Not because I fear him but because I love him so much.", "Cuchulainn", -1);
			scr_text("You would do well to fear him too. He has a skin of horn on him when he fights that no point or blade can pierce.", "Ferdia", -1);
			scr_text("You needn’t worry. If he appears at the ford before me, I swear by the vow of people that his joints and limbs will bend like reeds in the river at the point of my sword.", "Cuchulainn", -1); 
			//Switch to Medb’s camp where Ferdia is sleeping or just black screen or stay on the same ? 
			scr_text("Great anxieties weighed on Ferdia’s spirit that night and wouldn’t let him sleep. A greater worry than all was the knowledge that his life and his head would never again be in his own hands if he once appeared at the ford before Cuchulainn.");
			//Switch to single combat 
			scr_text("Welcome, Cuchulainn.", "Ferdia", -1);
			scr_text("I could trust your welcome once, but I don’t trust it now. Anyway, it is for me and not you, Ferdia, to bid welcome: this is my homeland, you are the intruder.", "Cuchulainn", -1);
			scr_text("You have the choice of weapons until nightfall. You reached the ford first.", "Cuchulainn", -1);
			//Combat between Ferdia and Cuchulainn. Need to ensure that Ferdia doesn’t die, but have some cutoff for breaking to the next day battle
			scr_text("You have the choise of weapons until nightfall. I had my choice yesterday.", "Ferdia", -1);
			//Combat again
			scr_text("You have a dreadful look today, Ferdia. A shadow has fallen on your hair overnight and your eye has grown dull. All your fine shape and strength and structure are gone. You have the choice of weapons today until nightfall. I chose yesterday.", "Cuchulainn", -1);
			//Combat again
			//Next day, battle at the dark background ford 
			scr_text("Ferdia got up early next day and came out alone to the ford of battle, for he knew that this day would decide the fierce struggle, and that one of them, or both, would fall.");
			scr_text("Hound of the bright deeds, you have killed me unfairly. Your guilt clings to me as my blood sticks to you.", "Ferdia - dying" , -1);
			break;
		case "The last battle":
			scr_text("It has the making of a great battle. Tell me everything that happens, leave out nothing. Alas! You would see me attacking there with the rest of them if I had my health.", "Cuchulainn", -1);
			//Switch to Fergus/Aillil camp
			scr_text("If only I had my sword, I’d send men’s severed heads toppling thicker than hailstones over their shields into the mud.", "Fergus", -1);
			scr_text("Bring me that flesh-piercing sword. I swear by my people’s god, if its bloom has faded since the day I gave it to you on that hillside in the land of Ulster, not all of Ireland will save you from me.", "Ailill", -1);
			scr_text("It would be a shame if you were to fall on this glutted field of battle.", "Fergus", -1);
			scr_text("You rage very hard at your kith and kin for the sake of a whore’s backside.", "Conall Cernach", -1);
			//Medb goes into battle. Fergus comes upon Cuchulainn
			scr_text("Come here, friend Fergus! I swear by Ulster’s god I’ll churn you up like foam churned in a pool! I’ll stand up over you like a cat’s tail erect! I’ll batter you as easily as a loving woman slaps her son!", "Cuchulainn", -1);
			scr_text("What man in Ireland talks to me like that?", "Fergus - angry", -1);
			scr_text("Cuchulainn, the son of Sualdam and Chochobor’s sister. Give way before me.", "Cuchulainn", -1);
			scr_text("I promised to do that.", "Fergus", -1);
			scr_text("“It has fallen due.",  "Cuchulainn", -1);
			scr_text("Very well, you ran from me once, and now you are riddled with wounds.", "Fergus", -1);
			//Switch to Medb
			scr_text("Fergus, take over the shelter of shields at the rear of the men of Ireland until I relieve myself.", "Medb", -1);
			scr_text("By god, you have picked a bad time for this.", "Fergus" , -1);
			scr_text("I can’t help it. I’ll die if I can’t do it.", "Medb", -1);
			scr_text("Spare me, Cuchulainn.", "Medb", -1);
			scr_text("If I killed you dead, it would only be right.", "Cuchulainn", -1);
			scr_text("We have had shame and shambles here today, Fergus.", "Medb", -1);
			scr_text("We followed the rump of a misguiding woman. It is the usual thing for a herd led by a mare to be strayed and destroyed.", "Fergus", -1);
			//The bull Donn Cualigne shows up with the remains of Finnbennach hanging from his horns. 




	}
	
}