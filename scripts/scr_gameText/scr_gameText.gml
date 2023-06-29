/// @param text_Id
function scr_gameText(_text_Id, _x, _y) {
	switch (_text_Id) {
		// testing
		case "puzzleTwoGiveQuest":
			if (!global.solved && (obj_player.itemCarried == obj_puzzleItem)) {
				scr_text("OH, nvmd, you have it... tanks.");
				obj_player.itemCarried = noone;
				global.solved = true;
				instance_destroy(obj_puzzleItem);
			}
			else if (!global.solved) {
				scr_text("YOOOO, gimme this 'test' thingy, pls.");
			}
			else {
				scr_text("u already gave me the THIGNIIWDD.");
			}
			break;
			
		case "test0":
			scr_text("damn, son");
			var inst = instance_create_layer(_x, _y, "Instances", obj_speakBlock);
			with (inst) {
				inst._text_Id = "test1";
			}
			break;
		case "test1":
			scr_text("you look like");
			var inst = instance_create_layer(_x, _y, "Instances", obj_speakBlock);
			with (inst) {
				inst._text_Id = "test2";
			}
			break;
		case "test2":
			scr_text("friggin cheese");
			break;	
			
			
		// BEGINNING
		case "boulder1":
			scr_text("It's a huge rock.");
			break;
		
			// OLD WILLOW
		case "oldWillowFirstMeeting":
			scr_text("Hrm, why, hello, little sapling. My name is Old Willow! Where did you come from?");
			scr_text("… A book? How curious. You seek the path home, correct?");
			scr_text("Unfortunately, I have no power left to aid you. Much of the rot has eaten away my roots…");
			scr_text("However, if you reawaken my masters from their sleep, they may have the power to help you get home");
			scr_text("Do you accept this quest?")
				scr_options("Nod", "acceptGodQuest");
				scr_options("Shake head", "declineGodQuest");
			break;
					case "acceptGodQuest":
						scr_text("Thank you, little sapling. I am indebted to you, as is the whole of the Hollowed Gardens.");
						scr_text("If you ever come across a silver flower, please pick it up. When you reach the ends of the meadows, place the flowers under the glass cases.");
						scr_text("Welcome to the Hollowed Gardens, little sapling.");
						var inst = instance_create_layer(_x, _y, "Instances", obj_speakBlock);
						with (inst) {
							inst._text_Id = "oldWillowChat";
						}
						break;
					case "declineGodQuest":
						scr_text("I see. I understand. The burden of such a quest is top much for a child. Nonetheless, stay safe.");
						scr_text("If you ever come across a silver flower, please pick it up. When you reach the ends of the meadows, place the flowers under the glass cases.");
						scr_text("Welcome to the Hollowed Gardens, little sapling.")
						break;
		case "oldWillowChat":
			scr_text("Hrmm. Do you need anything, little sapling?");
			scr_options("Pat mustache", "oldWillowMustache1");
			scr_options("Ask about the Hollowed Gardens", "oldWillowGardenAsk");
			scr_options("Ask about his past", "oldWillowPast");
			break;
				case "oldWillowMustache1":
					scr_text("Ohoho! That tickles");
					break;
				case "oldWillowGardenAsk":
					scr_text("Ah, the Hollowed Gardens, once a place of vibrant magic and beauty.");
					scr_text("But a great calamity befell this land, plunging it into darkness and despair.");
					scr_text("Now, it is a realm shrouded in gloom, my weary roots stretching thinner and thinner.");
					break;
				case "oldWillowPast":
					scr_text("Hrm... Once, I stood tall and proud as a guardian of the Hollowed Gardens, but time has taken its toll on me.");
					scr_text("The shadows have eaten my spirit and I await peace from this godforsaken rot...");
					scr_text("... I'm sorry, little sapling, but I must rest now.");
					break;
			
			// MEERA
		case "meeraFirstMeeting":
			scr_text("Who are you?");
			scr_text("Your name is Merl? Whatever. I'm Meera, a forest fairy. You better not cause any trouble.");
			scr_text("But... there's something I need to find. Can you help me?");
			scr_text("It's Meepo. I can't find the rabbit anywhere. Please help me find the rascal.");
			var inst = instance_create_layer(_x, _y, "Instances", obj_speakBlock);
			with (inst) {
				inst._text_Id = "meeraFirstMeetingCont";
			}
			break;
			case "meeraFirstMeetingCont":
				scr_text("Have you found him yet?");
					scr_options("Still looking", "meeraMeepoLost");
					scr_options("Ask about her past", "meeraPastAsk");
				break;
					case "meeraMeepoLost":
						scr_text("Then hurry along! Meepo isn't gonna find himself.");
						break;
					case "meeraPastAsk":
						scr_text("My past? Why do you ask? I'm a forest fairy. I tend the forest. Duh.");
						scr_text("...");
						scr_text("Well. Before the Gardens got sick, I was in a band. I'm not sure where the rest of them went.");
						scr_text("We got separated a long time ago. I forgot how long.");
						scr_text("Now go away. I have forest fairy things to do.");
						break;
			
			// BRAMBLE
		case "brambleFirstMeeting":
			scr_text("Gah! What the heck are ya?!");
			scr_text("... I mean- who are ya, huh? Name's Bramble, Bramble the hedgehog.");
			scr_text("Whaddaya here for, kid? Ya don't look like a forest dweller.");
			scr_text("... far from home, huh? That sucks... You're welcome to stay here in the forest though.");
			var inst = instance_create_layer(_x, _y, "Instances", obj_speakBlock);
			with (inst) {
				inst._text_Id = "brambleChat";
			}			
			break;
		case "brambleChat":
			scr_text("Ya need somethin', kid?");
				scr_options("Ask about plant", "bramblePlantAsk");
				scr_options("Ask about his daily life", "brambleLifeAsk");
			break;
		
		case "brambleBed":
			break;
		case "brambleChair":
			break;
		
			
		case "forestSolaceWater":
			scr_text("Murky water. You shouldn't drink it.");
			break;
		case "forestSolaceTomb":
			scr_text("Ill-fated and cruelty evaded.");
			scr_text("Here lies the ___ of ___.");
			break;
		
		case "forestStatue1":
			break;
		case "forestStatue2":
			break;
		case "forestStatue3":
			break;
		
		// THE RUINS	
			// MOSS
		case "mossFirstMeeting":
			break;
		case "mossBookFound":
			break;
		case "mossBook":
			break;
			
			// MORT
		case "mortFirstMeeting":
			break;
		case "mortThirdRoom":
			break;
		
			// ECHO
		case "echoFirstMeeting":
			break;
			
		case "deathSymbols1":
			break;
		
		case "deathInsc1":
			break;
		case "deathInsc2":
			break;
		case "deathInsc3":
			break;
		case "deathInsc4":
			break;	
		case "deathInsc5":
			break;
			
		case "deathStatue1":
			break;	
		case "deathStatue2":
			break;	
		case "deathStatue3":
			break;
			
		case "seerStatue1":
			break;
		case "seerStatue2":
			break;
			
		case "lookingGlass1":
			break;
		
		case "armoryAxe":
			break;
		case "armoryBow":
			break;
		case "armoryGlaive":
			break;
		case "armorySword":
			break;
		
		
		// THE CATHEDRAL
			// ECHO
		case "echoCathedralBeginning":
			break;
		
		case "orderInsc1":
			break;
		case "orderInsc2":
			break;
		case "orderInsc3":
			break;
		case "orderInsc4":
			break;	
		case "orderInsc5":
			break;
		case "orderInsc6":
			break;
		case "orderInsc7":
			break;
		case "orderInsc8":
			break;
		
			// SOLSTICE
		case "solsticeFirstMeeting":
			break;
		case "solsticeInscRoom":
			break;
			
		case "orderStatue1":
			break;
			
		case "cathDeathStatue":
			break;
		case "cathOrderStatue":
			break;
		case "cathLifeStatue":
			break;
			
		case "bookcase1":
			break;
		case "bookcase2":
			break;
		case "bookecase3":
			break;
		case "bookcase4":
			break;
		
		case "parchment1":
			break;
		case "parchment2":
			break;
		case "parchment3":
			break;
		
		case "cathedralStatue1":
			break;
		
			// FROG GANG
		case "frogFirstMeeting":
			break;
		
		
		// MEADOWS
			// BEESTON
		case "beestonFirstMeeting":
			break;
			
			// NIMBUS
		case "nimbusFirstMeeting":
			break;
			
			// PERRI
		case "perriFirstMeeting":
			break;
			
			// REGAL
		case "regalFirstMeeting":
			break;
			
			// SOLSTICE
		case "solsticeFutility":
			break;
			
			// GOOSE
		case "gooseFirstMeeting":
			break;
			
			//	ALPHONSE	
		case "alphonseFirstMeeting":
			break;
			
		case "theEye":
			break;
		case "theSprout":
			break;
			
			// THE SHADOW
		case "shadowMeeting":
			break;
		case "shadowRuins":
			break;
		case "shadowCathedral":
			break;
		case "shadowsMeadow":
			break;
		case "shadowsTemple":
			break;
		
		
		default:
			break;
	}
}