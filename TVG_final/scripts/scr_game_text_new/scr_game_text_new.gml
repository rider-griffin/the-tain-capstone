/// @param text_id

global.fergus_send_message_ch3 = false;
global.fergus_start_battle_ch7 = false;


function scr_game_text(_text_id) {
	
	switch(_text_id) {
		
	//Room Navigation Cases
		case "Menu":
			room_goto(room_main_games_menu);
			break;
		case "CH1 End":
			room_goto(Fort_CH2);
			break;
		case "CH2 End":
			room_goto(Army_Camp_CH3);
			break;
		case "CH3 End":
			room_goto(Boy_troop_field_CH4);
			break;
		case "CH4 End":
			room_goto(Combat_woods_CH5);
			audio_stop_all();
			audio_play_sound(BattleTheme, 0, true);
			break;
		case "CH5 End":
			room_goto(Army_Camp_CH6);
			audio_stop_all();
			audio_play_sound(Chapter6_11Theme, 0, true);
			break;
		case "CH6 End":
			room_goto(Army_Camp_CH7);
			break;
		case "CH7 End":
			room_goto(Combat_CH8);
			audio_stop_all();
			audio_play_sound(BattleTheme, 0, true);
			break;
		case "CH8 End":
			room_goto(Army_Camp_CH9_a);
			audio_stop_all();
			audio_play_sound(EndingTheme1, 0, true);
			break;
		case "CH9 End":
			room_goto(Army_Camp_CH10);
			break;
		case "CH10 End":
			room_goto(Army_Camp_CH11);
			break;
		case "CH11 End":
			room_goto(Cuchulain_Camp_CH12);
			break;
		case "CH12 End":
			room_goto(Army_Camp_CH13);
			audio_stop_all();
			audio_play_sound(EndingMusic, 0, true);
			break;
		case "CH13 End":
			room_goto(Battle_ground_CH14);
			break;
			
	//CH 1 cases	
		case "Ailill - Pillow Talk":
			scr_text("It struck me how much better off you are today than the day I married you.", "Fergus");
			scr_text("I was well enough off without you.", "Medb", -1);
					scr_text_float(22, 29);
			scr_text("Then your wealth was something I didn't know or hear much about.", "Fergus");
			scr_text("Except for your woman's things, and the neighboring enemies making off with loot and plunder.", "Fergus - angry");
			scr_text("Not at all.", "Medb", -1);
			scr_text("But with the high king of Ireland for my father and I myself Medb the highest and haughtiest of his six daughters. I outdid them in grace and giving and battle and warlike combat. My father gave me a whole province of Ireland, this province ruled from Cruachan, which is why I am called ‘Medb of Cruachan.'", "Medb - confident", -1);
			scr_text("And when men came to woo me, I wouldn't go. For I asked a harder wedding gift than any woman ever asked before from a man in Ireland -- the absence of meanness and jealousy and fear.", "Medb", -1);
			scr_text("If I married a mean man our union would be wrong, because I'm so full of grace and giving. It would be an insult if I were more generous than my husband, but not if the two of us were equal in this.", "Medb", -1);
			scr_text("Ailil from Leinster, you aren't greedy or jealous or sluggish and if anyone causes you shame or upset of trouble, the right to compensation is mine for you're a kept man.", "Medb - confident", -1);
			scr_text("By no means, but with two kinds for my brothers, I let them rule because they were older not because they are better than I am in grace or giving. I never heard, in all Ireland, of a province run by a woman except this one, which is why I came and took the kingship here.", "Fergus - angry");
			scr_text("It still remains, that my fortune is greater than yours.", "Medb - confident", -1);
			scr_text("I know where to find such a bull and better in The province of Ulster, in the territory of Cuailnge, in Daire mac Fiachna's house. Donn Cuailnge is the bull's name, the Brown Bull of Cuailnge.", "Extra" , -1);
			scr_text("Congratulations! You completed this level. The password to the next level is Legacy." );
			scr_option("Go back to menu.", "Menu");
			scr_option("Continue to next level.", "CH1 End");
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
			scr_text("Then your wealth was something I didn't know or hear much about.", "Fergus");
			scr_text("Except for your woman's things, and the neighboring enemies making off with loot and plunder.", "Fergus - angry");
			scr_text("Not at all.", "Medb", -1);
			scr_text("But with the high king of Ireland for my father and I myself Medb the highest and haughtiest of his six daughters. I outdid them in grace and giving and battle and warlike combat. My father gave me a whole province of Ireland, this province ruled from Cruachan, which is why I am called ‘Medb of Cruachan.'", "Medb - confident", -1);
			scr_text("And when men came to woo me, I wouldn't go. For I asked a harder wedding gift than any woman ever asked before from a man in Ireland -- the absence of meanness and jealousy and fear.", "Medb", -1);
			scr_text("If I married a mean man our union would be wrong, because I'm so full of grace and giving. It would be an insult if I were more generous than my husband, but not if the two of us were equal in this.", "Medb", -1);
			scr_text("Ailil from Leinster, you aren't greedy or jealous or sluggish and if anyone causes you shame or upset of trouble, the right to compensation is mine for you're a kept man.", "Medb - confident", -1);
			scr_text("By no means, but with two kinds for my brothers, I let them rule because they were older not because they are better than I am in grace or giving. I never heard, in all Ireland, of a province run by a woman except this one, which is why I came and took the kingship here.", "Fergus - angry");
			scr_text("It still remains, that my fortune is greater than yours.", "Medb - confident", -1);
			scr_text("I know where to find such a bull and better in The province of Ulster, in the territory of Cuailnge, in Daire mac Fiachna's house. Donn Cuailnge is the bull's name, the Brown Bull of Cuailnge.", "Extra" , -1);
			scr_text("Congratulations! You completed this level. The password to the next level is Legacy." );
			scr_option("Go back to menu.", "Menu");
			scr_option("Continue to next level.", "CH1 End");
			break;
			
	//CH 2 cases
		case "The tain bo cuailnge begins":
			scr_text( "Everyone leaving a lover or a friend today will curse me. This army is gathered for me", "Medb" , -1);
			//Fedelm approaches
			scr_text("Click on Fedelm to hear her prophesy." );
			break;
		case "Fedelm clicked":
			scr_text("Fedelm, prophetess; how seest thou the host?", "Medb", -1);
			scr_text("I see it crimson, I see it red." , "Fedelm", -1);
			scr_text("It can't be true. Conchobor is suffering his pangs in Emain with all the rest of the Ulster warriors. My messengers have come from there and told me. Fedelm, prophetess; how seest thou our host?" , "Medb - angry" , -1);
			scr_text("A giant on the plain I see, doing battle with the host, holding in each of his two hands four short quick swords. I see him hurling against that host two gae bolga and a spear and an ivory-hilted sword, each weapon to its separate task.", "Fedelm", -1);
			scr_text("Click on the army.");
			break;
		case "CH 2 Completed":
			scr_text("Congratulations! You completed this level. The password to the next level is Poetry." );
			scr_option("Go back to menu.", "Menu");
			scr_option("Continue to next level.", "CH2 End");
			break;
			
	//CH 3 cases 
		case "Begin CH3":
			//Narrator does not need any character portrait params
			scr_text("And so... the armies traveled across Ireland and set up camp in a large field.");
			scr_text("Click on Medb to continue.");
			break;
			
		case "The army encounters cuchulainn":
			scr_text("Let go of the troop of three thousand Galeoin. It would be foolish to take them. They would get all the credit for our army's triumph.","Medb",-1);
			scr_text("But they are fighting on our side. What are we going to do with them?","Ailill - angry", -1);
			scr_text("Kill them.", "Medb", -1);
			scr_text("We can arrange these warriors in the army so that they won't stand out too much.", "Fergus", -1);
			scr_text("I don't mind, as long as they break up their present order.", "Medb", -1);
			//Fergus sends a warning to Cuchulainn
			scr_text("I feel the presence of the armies tonight. You must go and warn Ulster.", "Cuchulainn", -1 );
			//Sualdam (Cuchulainn's father, goes to warn Ulster) 
			//Cuchulainn makes a spancel-hoop of challenge and leaves it on top of a stone
			//Fergus leads the army on a detour to help Cuchulainn
			scr_text("Fergus, there is something wrong. What kind of road is this we're taking? Ailill and his army begin to think of treachery.", "Medb - confused", -1);
			scr_text("Medb, what is troubling you? There's no treachery in this. The ‘where' I am taking you -remember it is Ulster.", "Fergus", -1);
			scr_text("Come no further, unless you have a man who can make a hoop like this with one hand out of one piece. I exclude my friend Fergus.");
			scr_text("If you ignore this challenge and pass by, the fury of the man who cut that ogam will reach you even if you are under protection, or locked in your homes. Unless someone can match this hoop of challenge he will kill one of you before morning.", "Fergus", -1);
			scr_text("Do these heads belong to our people?", "Medb", -1);
			scr_text("Yes they do, and to the very best among them.", "Ailill", -1);
			scr_text("The ogam on the fork: a single man who had thrown the fork, using one hand, and that they mustn't go past until one of them -not Fergus - did the same, single-handed.");
			scr_text("What sort of man, is this Hound of Ulster we hear tell of? How old is this remarkable person?","Ailill - scared",-1);
			scr_text("At present he is in his seventeenth year. You'll find no harder warrior against you. None like Cuchulainn. It would be nothing strange for him to do mighty deeds at this point. When he was younger his acts were already manly.", "Fergus", -1);
			scr_text("Congratulations! You completed this level. The password to the next level is Strength." );
			scr_option("Go back to menu.", "Menu");
			scr_option("Continue to next level.", "CH3 End");
			break;

		
		case "Medb Clicked CH3":
			scr_text("Let go of the troop of three thousand Galeoin. It would be foolish to take them. They would get all the credit for our army's triumph.", "Medb", -1);
				scr_text_color(38, 46, c_yellow, c_yellow, c_white, c_white);
			scr_text("But they are fighting on our side. What are we going to do with them?", "Ailill - angry", -1);
			scr_text("Kill them.", "Medb", -1);
			scr_text("We can arrange these warriors in the army so that they won't stand out too much.", "Fergus", -1);
			scr_text("I don't mind, as long as they break up their present order.", "Medb", -1);
			scr_text("Click on Fergus to have him send a message to warn Cuchulainn of the upcoming attack!");

			
		//Send Fergus to warn Cuchulainn. Have him walk to the right side of the army camp scene and then enter Cuchulainn scene.
		case "Cuchulain Warned by Fergus":
			scr_text("I feel the presence of the armies tonight. You must go and warn Ulster.", "Cuchulainn");
			break;
		
	//CH 4 cases
		case "Cuchulainn's boyhood deeds":
			scr_text("Why didn't you put yourself under the boys' protection?" , "Conchobor - surprised");
			scr_text("I knew nothing about that, but I ask your protection against them now." , "Cuchulainn" , -1);
			scr_text("You have it. What are you going to do to them now?",  "Conchobor");
			scr_text("Offer them my protection.", "Cuchulainn", -1 ); 
			scr_text("Promise it here and now", "Conchobor");
			scr_text("I promise.", "Cuchulainn", -1 );
			scr_text("Soon the boy arrived and the hound started out for him. But he still attended to his game.");
			//Cuchulainn tosses the ball and hits it with the spear. The hound comes running for him. First combat scene with Cuchulainn against the hound. If Cuchulainn wins:
			scr_text("Cuchulainn shall be your name, the Hound of Culann. ", "Cathbad");
			scr_text("What wonder that the man who did these deeds before he was five years old should cut off the heads of those four?");
			scr_text("Well, the day has this merit: he who arms for the first time today will achieve fame and greatness. But his life is short.", "Cathbad");
			scr_text("That is a fair bargain. If I achieve fame I am content, through I had only one day on earth.", "Cuchulainn" , -1);
			scr_text("Whoever mounts his first chariot today, his name will live forever in Ireland.", "Cathbad");
			scr_text("Congratulations! You completed this level. The password to the next level is Bravery." );
			scr_option("Go back to menu.", "Menu");
			scr_option("Continue to next level.", "CH4 End");
			break;
			
	//CH 5 cases
		case "Death Death":
			scr_text("Shame on you all, not to be out after this pestering demon that is killing you all!", "Medb - angry" );
			scr_text("Click on Medb to begin combat.");
			break;
		case "CH 5 Combat Completed":
			scr_text("Congratulations! You completed this level. The password to the next level is Equality." );
			scr_option("Go back to menu.", "Menu");
			scr_option("Continue to next level.", "CH5 End");			
			break;
			
	//CH 6 cases 
		case "From Finnabair Chuailnge to Conaille":
			scr_text("Watch Medb and Fergus today for me. I don't know why they are so intimate and I want you to find me some sign.", "Ailill");
			scr_text("Well indeed, here is your sign. I discovered them sleeping together as you thought.", "Cuillius", -1);
			scr_text("Fair enough. It is all right. She is justified. She does it to keep his help on the Tain.", "Ailill");
			scr_text("Cuillius drew Fergus's sword out of tis sheath, leaving the sheath empty");
			scr_text("This is terrible. The wrong I have done Ailill. Wait here I must go into the wood. Don't be surprised if I am gone a while.", "Fergus");
			scr_text("Congratulations! You completed this level. The password to the next level is Stories." );
			scr_option("Go back to menu.", "Menu");
			scr_option("Continue to next level.", "CH6 End");			
			break;
			
	//CH 7 cases
		case "Begin CH7":
			scr_text("The army is now ready to fight Cuchulainn");
			scr_text("Click on Fergus to continue...");
			break;
			
		case "Single Combat":
			scr_text("I know what he has in  mind and indeed it bodes you no good. This is his plan: that he will fight you one by one in the ford, and that no cattle will be taken from the ford for a day and a night after each combat. This plan will gain time for him until help comes from the men of Ulster.", "Fergus");
			scr_text("It will be easier on us, no doubt, to lose one man every day than a hundred every night.", "Ailill", -1);
			scr_text("I would rather you didn't come [to Etarcomol]. Not that I dislike you, but for fear of strife between Cuchulainn and you. With your pride and insolence, and the other's ferocity and grimness, force, fury and violence, no good can come from your meeting.", "Fergus");
			//Move to scene for battle 
			scr_text("Would you like to start the battle??");
				scr_option("Yes, let's go to war", "Start Battle CH7 - yes");
				break;
				
		case "Start Battle CH7 - yes":
			room_goto(Combat_woods_CH7);
			break;
			
		case "Single Combat - Start Battle": //Single Combat - Start Battle
			scr_text("I see nothing to be afraid of, no horror or terror or the grinding of multitudes. You're a fine lad, I would say, for graceful tricks with wooden weapons.","Etarcomol - confident", -1);
			scr_text("You are making little of me, but for Fergus's sake I won't kill you.If you hadn't his protection, you would have had your bowels ripped out by now and your quarters scattered behind you all the way from your chariot to the camp." ,"Cuchulainn - angry", -1);
			scr_text("You have no choice." , "Etarcomol", -1);
			scr_text("Fight Etarcomol??");
			scr_option("Yes", "Etarcomol - yes");
			break;
			case "Etarcomol - yes":
			room_goto(Combat_CH7);
			break;
				
		case "Single Combat - Second Battle":
			//Fight between the two. If Cuchulainn wins: 
			//Nadcranntail comes to fight Cuchulainn with a small spear.
			scr_text("You know I don't kill unarmed men.", "Cuchulainn" , -1);
			//Nadcranntail leaves and returns with a bigger weapon
			scr_text("Are you really Cuchulainn? How can I take a little lamb's head back to the camp? I can't behead a beardless boy.", "Nadcranntail - surprised" , -1);
			//Cuchulainn makes a beard of grass and returns
			scr_text("This is more like him. A fight with rules!", "Nadcranntail" , -1);
			scr_text("Agreed, name your rules.",  "Cuchulainn" , -1);
			scr_text("Thrown spears and no dodging." ,"Nadcranntail" , -1);
			scr_text("No dodging except upward." ,  "Cuchulainn" , -1);
			//Not a full fight but Nadcranntail needs to throw spears and Cuchulainn needs to jump to dodge it and then throw his own. Two actions only, not a full fight. 
			scr_text("Congratulations! You completed this level. The password to the next level is Wealth." );
			scr_option("Go back to menu.", "Menu");
			scr_option("Continue to next level.", "CH7 End");
			break;
				
	//CH 8 cases 
		case "The bull is found. Further single combats. Cuchulainn and the Morrigan":
			scr_text("Congratulations! You completed this level. The password to the next level is Religion." );
			scr_option("Go back to menu.", "Menu");
			scr_option("Continue to next level.", "CH8 End");
			break;
			
	//CH 9 cases		
		case "The pact is broken the great carnage":
			scr_text("Ask Cuchulainn for a truce", "Medb", -1);
			scr_text("She sent her messenger, with a false offer of peace, to find Cuchulainn and get him to meet her at that place next day. Medb came there and set a trap for Cuchulainn.");
			//Cuchulainn fights 14 warriors from Medb's army. One strike health bars for them
			scr_text("Send the camp fool made up to look like me, with a king's crown on his head. Stand him at a distance from Cuchulainn so as not to be recognized, and send the girl with him. He can betroth her to Cuchulainn and they can come away quickly. Maybe the trick will work and hold him back until the day when he comes with the men of Ulster to the last Battle.", "Ailill", -1);
			//Cuchulainn shoots the fool and hangs him and the girl up on pillars and leaves them there. 
			scr_text("There was no further truce for them with Cuchulainn after that.");
			//Cuchulainn sleeps for three days. Switch to Fergus/Ailill/Medb camp, boy troop comes in while Cuchulainn is asleep.
			scr_text("It is terrible that our friend Cuchulainn must do without help.", "Boy troop" , -1);
			scr_text("These are some of the boy-troop of Ulster coming to help Cuchulainn.", "Fergus", -1);
			//Boy troop is killed. Cut scene here, to keep it less graphic and because there is no interaction to this scene with Cuchulainn asleep. Switch to Cuchulainn's camp.
			scr_text("Shame, that I hadn't my strength for this! If I had, the boy-troop wouldn't have perished as they did.", "Cuchulainn - angry" , -1);
			scr_text("Onward, Little Hound; there is no stain on your good name, no slight on your courage.", "Warrior", -1);
			//Cuchulainn fights army at Medb and Ailill's camp including warp spasm. 
			scr_text("Congratulations! You completed this level. The password to the next level is Humor." );
			scr_option("Go back to menu.", "Menu");
			scr_option("Continue to next level.", "CH9 End");			
			break;
			
	//CH 10 cases 			
		case "Combat with fergus and others":
			scr_text("Fergus was asked to fight Cuchulainn, but he wouldn't fight his foster-son. Wine was brought and he grew very drunk. He was asked again to go into combat and this time he went, because they implored him.");
			//Switch to single combat scene
			scr_text("You must be under strong protection, friend Fergus to come against me with no sword in your scabbard.", "Cuchulainn", -1 );
			scr_text("It would be all the same if I had a sword in it. I wouldn't use it on you. Yield to me now, Cuchulainn.", "Fergus", -1);
			scr_text("If you will yield to me another time.", "Cuchulainn", -1 );
			scr_text("Agreed", "Fergus", -1);
			scr_text("Medb sent twenty-nine men out together against Cuchulainn. They argued that it should be counted a single combat because the sons of Gaile Dana were all the issue of his body, limb of his limb and flesh of his flesh.");
			scr_text("A sad thing is going to happen here tomorrow, the killing of Cuchulainn. Every one of them has poison on him, and there is poison on all their weapons. Any man that they wound will die in nine days at most, if he doesn't die at once. If anyone will go for me to see this fight and bring me the story of Cuchulainn's death he can have my weapons and my blessing.", "Fergus - sad", -1);
			scr_text("I will go.", "Fiacha", -1);
			scr_text("Congratulations! You completed this level. The password to the next level is Beauty." );
			scr_option("Go back to menu.", "Menu");
			scr_option("Continue to next level.", "CH10 End");			
			break;
			
	//CH 11 cases 
		case "Combat of Ferdia and Cuchulainn":
			scr_text("Medb sent messengers to Ferdia. There was not a feat of Cuchulainn's that he lacked, except the gae bolga.");
			scr_text("Ferdia, do you know why you were brought to our tent? To give you a chariot worth three times seven bondmaids, with war harness enough for a dozen men, and a portion of the fine Plain of Ai equal to the plain of Murtheimne. Also the right to stay forever in Cruachan, with your wine supplied, and your kith and kin free forever from tax and tribute.", "Medb", -1);
			scr_text("And this leaf-shaped brooch of mine that was made out of ten score ounces and ten score half-ounces and ten score cross-measures and ten score quarters of gold. And Finnabair, my daughter and Ailill's, for your wife. And my own friendly thighs on top of that if needs be.", "Medb", -1);
			scr_text("No need! Those gifts and trophies are enough. But I would sooner leave them with you than go out to fight my own foster-brother.", "Ferdia", -1);
			scr_text("What Cuchulainn said was true." , "Medb", -1);
			scr_text("What did he say?", "Ferdia" ,-1);
			scr_text("He said he wouldn't count it any great triumph if his greatest feat of arms were your downfall." , "Medb", -1);
			scr_text("He shouldn't have said that. I'll be first at the ford of battle tomorrow morning to fight him.", "Ferdia" ,-1);
			//Switch to Cuchulainn's camp
			scr_text("I am here to tell you the warrior who is coming to fight you tomorrow morning. Your own foster-brother Ferdia.", "Ferdia", -1);
			scr_text("I swear I don't want this meeting. Not because I fear him but because I love him so much.", "Cuchulainn", -1);
			scr_text("You would do well to fear him too. He has a skin of horn on him when he fights that no point or blade can pierce.", "Ferdia", -1);
			scr_text("You needn't worry. If he appears at the ford before me, I swear by the vow of people that his joints and limbs will bend like reeds in the river at the point of my sword.", "Cuchulainn", -1); 
			//Switch to Medb's camp where Ferdia is sleeping or just black screen or stay on the same ? 
			scr_text("Great anxieties weighed on Ferdia's spirit that night and wouldn't let him sleep. A greater worry than all was the knowledge that his life and his head would never again be in his own hands if he once appeared at the ford before Cuchulainn.");
			//Switch to single combat 
			scr_text("Welcome, Cuchulainn.", "Ferdia", -1);
			scr_text("I could trust your welcome once, but I don't trust it now. Anyway, it is for me and not you, Ferdia, to bid welcome: this is my homeland, you are the intruder.", "Cuchulainn", -1);
			scr_text("You have the choice of weapons until nightfall. You reached the ford first.", "Cuchulainn", -1);
			//Combat between Ferdia and Cuchulainn. Need to ensure that Ferdia doesn't die, but have some cutoff for breaking to the next day battle
			scr_text("You have the choise of weapons until nightfall. I had my choice yesterday.", "Ferdia", -1);
			//Combat again
			scr_text("You have a dreadful look today, Ferdia. A shadow has fallen on your hair overnight and your eye has grown dull. All your fine shape and strength and structure are gone. You have the choice of weapons today until nightfall. I chose yesterday.", "Cuchulainn", -1);
			//Combat again
			//Next day, battle at the dark background ford 
			scr_text("Ferdia got up early next day and came out alone to the ford of battle, for he knew that this day would decide the fierce struggle, and that one of them, or both, would fall.");
			scr_text("Hound of the bright deeds, you have killed me unfairly. Your guilt clings to me as my blood sticks to you.", "Ferdia - dying" , -1);
			break;
		case "CH 11 Combat Completed": 
			scr_text("Congratulations! You completed this level. The password to the next level is Loyalty." );
			scr_option("Go back to menu.", "Menu");
			scr_option("Continue to next level.", "CH11 End");
			break;
			
	//CH 12 cases 
		case "Ulster rises from its pangs":
			scr_text("Are the heavens rent? Is the sea bursting its bounds? Is the end of the world upon us? Or is that my son crying out as he fights against great odds?", "Sualdam", -1);
			scr_text("Go to the men of Ulster, tell them to come and fight these armies now. If they don't come soon, they'll never get their revenge.", "Cuchulainn", -1 );
			//Sualdam goes to Emain
			scr_text("Men murdered, women stolen, cattle plundered!", "Sualdam", -1);
			scr_text("Who is robbing and stealing and plundering?", "A druid", -1);
			scr_text("Wilill mac Mata with the knowledge of Fergus mac Roich. Your people are harassed as far as Dun Sobairche and their cattle and their women and all their herds taken. Cuchulainn kept them out of Murtheimne Plain and Crich Rois; for three winter months now and kept dry wisps in his joints. He has been wounded so sorely that his joints are coming asunder.", "Sualdam", -1);
			scr_text("This man is annoying the king. By rights he ought to suffer death.", "A druid", -1);
			scr_text("It would be fitting", "Conchobor", -1);
			scr_text("It would.", "Men of Ulster", -1);
			scr_text("Why are you stopping here?", "Conchobor", -1);
			scr_text("We are waiting for your sons. They are gone with thirty others to Temair to get Erc son of Coirpre Niafer and Fedelm Noichride. We're not leaving here until their two troops of three thousand arrive.", "Men of Ulster", -1);
			scr_text("I can't wait until the men of Ireland discover that I have risen from my pangs.", "Conchobor", -1);
			scr_text("Congratulations! You completed this level. The password to the next level is Kinship." );
			scr_option("Go back to menu.", "Menu");
			scr_option("Continue to next level.", "CH12 End");			
			break;
			
	//CH 13 cases 
		case "The companies advance":
			scr_text("The men of Ulster have risen from their pangs. It is they who entered the forest, great heroes thronging in might and violence; and they who shook the forest and sent the wild animals fleeing onto the plain. The dense fog you saw filling the hollows, that was the breath of those fierce men filling the valley until the hills in between looked like islands in a lake. ", "Fergus", -1);
			scr_text("The flashes of lightning and the sparks of fire and all those colours you saw, Mac Roth those were the warriors' eyes, so bright you through they were sparks of fire. The thunder and thudding and turmoil you heard, that is the humming of their blades and their ivory-hilted swords, ", "Fergus", -1);
			scr_text("the uproar of arms, the clattering of chariots-- horse-hooves hammering, fierce chariot-fighters--the outcry of an army : the sound of warriors, the anger and fury and ferocity of the brave as they rage toward the battle. They think they will never reach it, their angry spirit is so high.", "Fergus", -1);
			scr_text("Let them come. We have warriors to meet them.", "Ailill", -1);
			scr_text("You'll need them. No one in all Ireland, or the western world from Greece and Scythia westward to the Orkney Islands and the Pillars of Hercules, as far as the tower of Breogan and the Islands of Gades. Can withstand the men of Ulster when their fury is roused.", "Fergus", -1);
			//Ulster armies arrive
			scr_text("Conall Cernach and his great company haven't come. Conchobor's three sons and their three troops of three thousand haven't come. Cuchulainn, wounded in the unequal struggle, hasn't come. Many hundreds, many thousands, have reached the Ulster camp. Many heroes and champions and warriors have hurried there to the gathering. But more companies still were on their way there as I left.", "Mac Roth", -1);
			scr_text("Congratulations! You completed this level. The password to the next level is Pride." );
			scr_option("Go back to menu.", "Menu");
			scr_option("Continue to next level.", "CH13 End");
			break;
			
		
	//CH 14 cases 
		case "The last battle":
			scr_text("It has the making of a great battle. Tell me everything that happens, leave out nothing. Alas! You would see me attacking there with the rest of them if I had my health.", "Cuchulainn", -1);
			//Switch to Fergus/Aillil camp
			scr_text("If only I had my sword, I'd send men's severed heads toppling thicker than hailstones over their shields into the mud.", "Fergus", -1);
			scr_text("Bring me that flesh-piercing sword. I swear by my people's god, if its bloom has faded since the day I gave it to you on that hillside in the land of Ulster, not all of Ireland will save you from me.", "Ailill", -1);
			scr_text("It would be a shame if you were to fall on this glutted field of battle.", "Fergus", -1);
			scr_text("You rage very hard at your kith and kin for the sake of a whore's backside.", "Conall Cernach", -1);
			//Medb goes into battle. Fergus comes upon Cuchulainn
			scr_text("Come here, friend Fergus! I swear by Ulster's god I'll churn you up like foam churned in a pool! I'll stand up over you like a cat's tail erect! I'll batter you as easily as a loving woman slaps her son!", "Cuchulainn", -1);
			scr_text("What man in Ireland talks to me like that?", "Fergus - angry", -1);
			scr_text("Cuchulainn, the son of Sualdam and Chochobor's sister. Give way before me.", "Cuchulainn", -1);
			scr_text("I promised to do that.", "Fergus", -1);
			scr_text("“It has fallen due.",  "Cuchulainn", -1);
			scr_text("Very well, you ran from me once, and now you are riddled with wounds.", "Fergus", -1);
			//Switch to Medb
			scr_text("Fergus, take over the shelter of shields at the rear of the men of Ireland until I relieve myself.", "Medb", -1);
			scr_text("By god, you have picked a bad time for this.", "Fergus" , -1);
			scr_text("I can't help it. I'll die if I can't do it.", "Medb", -1);
			scr_text("Spare me, Cuchulainn.", "Medb", -1);
			scr_text("If I killed you dead, it would only be right.", "Cuchulainn", -1);
			scr_text("We have had shame and shambles here today, Fergus.", "Medb", -1);
			scr_text("We followed the rump of a misguiding woman. It is the usual thing for a herd led by a mare to be strayed and destroyed.", "Fergus", -1);
			//The bull Donn Cualigne shows up with the remains of Finnbennach hanging from his horns. 
			scr_text("Congratulations! You completed the Tain" );
			scr_option("Go back to menu.", "Menu");
			break;


			

			
			
			
	}
	
}