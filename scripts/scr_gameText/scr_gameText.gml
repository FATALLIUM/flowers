/// @param text_Id
function scr_gameText(_text_Id) {
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
			switch (global.test) {
				case 0: scr_text("damn, son"); break;
				case 1: scr_text("u look like"); break;
				case 2: scr_text("friggin' cheese"); break;
				default: scr_text("mhm");
			}
			global.test++;
			break;
			
		// BEGINNING
		case "boulder1":
			scr_text("It's a huge rock.");
			break;
		
			// OLD WILLOW
		case "oldWillow":
			switch (global.oldWillow) {
				case 0:
					global.oldWillow++;
					scr_text("Hrm, why, hello, little sapling. My name is Old Willow! Where did you come from?");
					scr_text("... A book? How curious. You seek the path home, correct?");
					scr_text("Unfortunately, I have no power left to aid you. Much of the rot has eaten away my roots…");
					scr_text("However, if you reawaken my masters from their sleep, they may have the power to help you get home");
					scr_gameText("decision");
					break;
				case 1:
					global.oldWillow++;
					scr_text("Hrm... hrm...");
					break;
				case 2:
					global.oldWillow++;
					scr_text("So... tiring... hrm...");
					scr_gameText("oldWillow");
					break;		
				default:
					scr_text("Yes, little sapling?");
					scr_options("Pat mustache", "oldWillowMustache1");
					scr_options("Ask about the Hollowed Gardens", "oldWillowGardenAsk");
					scr_options("Ask about his past", "oldWillowPast");
					break;
			}
			break;
			case "decision":
				scr_text("Do you accept this quest?")
				scr_options("Nod", "acceptGodQuest");
				scr_options("Shake head", "declineGodQuest");
				break;
					case "acceptGodQuest":
						scr_text("Thank you, little sapling. I am indebted to you, as is the whole of the Hollowed Gardens.");
						scr_text("If you ever come across a silver flower, please pick it up. When you reach the ends of the meadows, place the flowers under the glass cases.");
						scr_text("Welcome to the Hollowed Gardens, little sapling.");
						break;
					case "declineGodQuest":
						scr_text("I see. I understand. The burden of such a quest is top much for a child. Nonetheless, stay safe.");
						scr_text("If you ever come across a silver flower, please pick it up. When you reach the ends of the meadows, place the flowers under the glass cases.");
						scr_text("Welcome to the Hollowed Gardens, little sapling.");
						break;
				case "oldWillowMustache1":
					switch (global.oldWillowMustache) {
						case 0:
							scr_text("Ohoho! That tickles.");
							break;
						case 1:
							scr_text("Don't pull on my leaves, child!");
							break;
						case 2:
							scr_text("Oof!");
							break;
						case 3:
							scr_text("Calm down now-");
							break;
						default:
							scr_text("Okay, okay... that's enough now, little sapling.");
							break;
					}
					global.oldWillowMustache++;
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
		case "meera":
			switch (global.meera) {
				case 0:
					global.meera++;
					global.meeraAndFrogs++;
					scr_text("Who are you?");
					scr_text("Whatever, don't tell me. I'm Meera, a forest fairy. You better not cause any trouble.");
					scr_text("But... there's something I need to find. Can you help me?");
					scr_text("It's Meepo. I can't find the rabbit anywhere. Please help me find the rascal.");
					break;
				case 1:
					if (global.meeraMeepo == 1) {
						global.meera++;
						scr_gameText("meepoFound");
					} else {
						scr_text("Have you found him yet?");
							scr_options("Still looking", "meeraMeepoLost");
							scr_options("Ask about her past", "meeraPastAsk");
					}
					break;
				case 2:
					global.meera++;
					scr_text("Bramble was snoring like a literal fire giant last night...");
					scr_text("I couldn't get even one wink of sleep.");
					scr_text("I wonder how Old Willow even slept through that thunder.");
					break;
				case 3:
					global.meera++;
					scr_text("Old Willow is... really old. He's been the guardian of this forest since the...");
					scr_text("... the... I can't... remember what...?");
					scr_text("...");
					scr_text("Nevermind.");
					break;
				case 4:
					global.meera++;
					scr_text("Urgh, being a fairy is so tiring... but... it's worth it.");
					break;
				default:
					scr_text("What is it?");
						scr_options("Ask about fairies", "meeraFairyAsk");
						scr_options("Ask about band", "meeraBandAsk");	
					break;
			}			
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
			case "meepoFound":
				global.meera++;	
				scr_text("!!! You found him! Meepo!");
				scr_text("I mean... thanks. Thanks for finding my friend.");
				scr_text("You're not a bad human after all.");
				scr_text("...");
				scr_text("So... do you need anything?");
				break;
					case "meeraFairyAsk":
						scr_text("Fairies are magical creatures of the forest. We kind of protect all the trees and animals and stuff.");
						scr_text("We're not very adept in skilled magic like incantations, but we can heal minor injuries.");
						scr_text("My mom is actually part of the High Fairy-Tree Court. It's not neat.");
						break;
					case "meeraBandAsk":
						if (global.meeraAndFrogs == 2) {
							scr_text("Frogs...? Yargh... Bam... and Mm?");
							scr_text("It all sounds so familiar...");
							scr_text("... a band of three frogs, you say? So weird.");
							scr_text("...");
							scr_text("Maybe I'll visit the Cathedrial...");
							global.meeraAndFrogs++;
						}
						scr_text("Yeah, I played was the bassist for the band.");
						scr_text("As for the other members, I can't... I can't remember...?");
						scr_text("Maybe dementia got me early.");
						scr_text("...");
						scr_text("Can fairies even get dementia?");
						break;
				case "meepo":
					scr_text("White rabbit. It's glaring at you.");
					break;
			
			// BRAMBLE
		case "bramble":
			switch (global.bramble) {
				case 0:
					global.bramble++;
					scr_text("Gah! What the heck are ya?!");
					scr_text("... I mean- who are ya, huh? Name's Bramble, Bramble the hedgehog.");
					scr_text("Whaddaya here for, kid? Ya don't look like a forest dweller.");
					scr_text("... far from home, huh? That sucks... Ya're welcome to stay here in the forest though.");	
					break;
				case 1:
					global.bramble++;
					scr_text("All in a good day's work, ya know? It's peaceful in the forest.");
					scr_text("Ma paps stayed here, his grandpappy, great-grandpappy...");
					scr_text("Peace is bliss.");
					break;
				case 2:
					global.bramble++;
					scr_text("Right, there was this real odd smell comin' from the end of the forest, near them ruins.");
					scr_text("Darn stuff gave me the heebie-jeebies.");
					break;
				default:
					scr_text("Ya need somethin', kid?");
						scr_options("Ask about plant", "bramblePlantAsk");
						scr_options("Ask about his daily life", "brambleLifeAsk");
						scr_options("Ask about the smell", "brambleSmellAsk");
					break;
			}
			break;
					case "bramblePlantAsk":
						scr_text("Ma plant? What's wrong with Gerold? Ma boy is fine I tell ya."); 
						break;
					case "brambleLifeAsk":
						scr_text("I be foragin' for them berries for the winter, ya know?");
						scr_text("I mostly sleep though. Sleep is great I tell ya!");
						break;
					case "brambleSmellAsk":
						scr_text("Somethin' be smellin' like happy-marinated giblet bones.");
						scr_text("Can't explain it in any other way.");
						break;
		
					case "brambleBed":
						scr_text("Must be Bramble's bed. It's very small.");
						scr_text("Please don't try to lie in it.");
						break;
					case "brambleChair":
						scr_text("It's a chair. A tiny one.");
						break;
					case "brambleFire":
						scr_text("Don't get too close to it.");
						break;
					case "bramblePlant":
						scr_text("It's a succulent. It seems to be 73 percent near death.");
						break;
					case "brambleMushrooms":
						scr_text("Don't eat these.");
						break;
			
		case "forestSolaceWater":
			scr_text("Murky water. You shouldn't drink it.");
			break;
		case "forestSolaceTomb":
			scr_text("Ill-fated and cruelty evaded.");
			scr_text("Here lies the ___ of ___.");
			break;
		
		case "forestStatue1":
			scr_text("A lone statue that cries dust.");
			break;
		case "forestStatue2":
			scr_text("A statue amongst statues. Dust, dust, dust.");
			break;
		case "forestStatue3":
			scr_text("Why is it staring at you?");
			break;
		case "forestStatue4":	
			scr_text("A statue.");
			break;
		
		// THE RUINS	
			// MOSS
		case "moss":
			switch (global.moss) {
				case 0:
					scr_text("! Hey! You there! Yeah, you! Come here, please.");
					scr_text("Right- I'm Moss. I'm a talking statue, sure, but I bet you've met other weirdos as well.");
					scr_text("Anyway! I have something I need you to find. You don't have to, but can you???");
					scr_text("If you're gonna help a pal out, it's my journal.");
					scr_text("It's orange, so you can probably spot it in these dreary old ruins.");
					scr_text("Thanks and bye.");
					global.moss++;
					break;
				case 1:
					scr_text("Hmmm...");
					if (global.mossBook == 1) {
						scr_gameText("mossBookFound");
						instance_destroy(ruinsMossBook_obj);
						global.moss++;
					}
					break;
				case 2:
					global.moss++;
					scr_text("It's kinda lonely, you know? No one really comes by to the ruins.");
					scr_text("It's just me, my book, and wet grass.");
					scr_text("I guess I'm kind of happy to see another person.");
					break;
				case 3:
					global.moss++;
					scr_text("Sometimes I wonder how I got here... like, I don't even know how I'm conscious?");
					scr_text("I just woke up one day and wham! I'm a sentient statue!");
					scr_text("It's neat, but also really strange...");
					break;
				default:
					scr_text("Need anything?");
					switch (global.mossFriend) {
						case 1:
							scr_options("Ask about book", "mossBookAsk");
							scr_options("Boop nose", "boopNose");
							break;
						case -1:
							scr_options("Ask about book", "mossBookAsk");
							scr_options("Leave", "mossLeave");
							break;
						case 0:
							scr_options("Ask about past", "mossPastAsk");
							scr_options("Leave", "mossLeave");
						break;
						default:
							break;
					}
					break;
			break;
		}
		break;
					case "mossLeave":
						scr_text("...");
					break;
					case "mossBookFound":
						scr_text("!!!");
						scr_text("My book! Thanks, pal. You're a real lifesaver, you know that?");
						scr_text("You don't have to question how I got the book in the first place though.");
						break;
					case "mossBook":
						scr_text("It's an orange book.");
						break;
					case "mossPastAsk":
						scr_text("My past? Not gonna lie, pal, I don't even know if I have one.");
						scr_text("But... maybe now, with you as my friend, I can have a past.");
						scr_text("Um. That is, I assume that we're friends now?");
							scr_options("Friends", "mossFriend");
							scr_options("Not friends", "mossNotFriend");
						break;
								case "mossFriend":
									global.mossFriend = 1;
									scr_text("Wow! I feel... all warm and giddy...");
									scr_text("I guess we're pals for real now.");
									break;
								case "mossNotFriend":
									global.mossFriend = -1;
									scr_text("Oh, okay. I get that- truly, I understand.");
									scr_text("I mean, if you ever need a buddy, I'm available.");
									break;
					case "mossBookAsk":
						scr_text("My book, huh? It's one of my favorite novels.");
						scr_text("A friend gave it to me- they were a very dear friend.");
						scr_text("I... can't remember their name...");
						scr_text("Huh.");
						break;
					case "boopNose":
						switch (global.mossBoops) {
							case 0:
								scr_text("!");
								scr_text("I've been booped.");
								break;
							case 1:
								scr_text("Why... are you boooping me?");
								break;
							case 2:
								scr_text("My booped stats are almost maxed out...");
								break;
							case 3:
								scr_text("The booping ensues...");
								break;
							default:
								scr_text("Alright, pal, that's enough. No more boops.");
								break;
						}
						global.mossBoops++;
						break;
			case "mossMeadowsBeginning":
				scr_text("Uhh... how'd I get here?");
				scr_text("...");
				scr_text("I dunno, but this place looks real nice, dontcha think?");
				scr_text("Maybe I can be friends with that bee...?");
				break;

			// MORT
		case "mort":
			switch (global.mort) {
				case 0:
					global.mort++;
					scr_text("Hello. Who are you?");
					scr_text("I... am Mort.");
					scr_text("It hurts, you know?");
					scr_text("The hole in my chest.");
					scr_text("...");
					scr_text("It's okay- I'm used to it.");
					break;
				case 1:
					global.mort++;
					scr_text("What are you doing here, in these dreaded ruins?");
					scr_text("...");
					scr_text("No matter. Just stay out of my way.");
					break;
				case 2:
					global.mort++;
					scr_text("... you're still here? Why?");
					scr_text("...");
					scr_text("Okay. I don't care. Do whatever you want.");
					scr_text("Just... no screaming.");
					break;
				case 3:
					global.mort++;
					scr_text("It hurts. It hurts so much.");
					break;
				default:
					scr_text("Don't come any closer.");
					break;
			}
			break;
		case "mortThirdRoom":
			scr_text("The exit is right there... and yet, I still cannot leave.");
			scr_text("Am I trapped here forever...?");
			break;
		
			// ECHO
		case "echo":
			scr_text("They don't seem to be seeing you.");
			break;
			
		case "deathSymbols1":
			scr_text("The cheese comes last.  Eat your vegetables, children. And be kind.");
			scr_text("Kind vegetables.");
			break;
		case "deathSymbols2":
			scr_text("Stay.");
			break;
		
		case "deathInsc1":
			scr_text("The thread of life flourished under the watchful eyes of three.");
			break;
		case "deathInsc2":
			scr_text("Death.");
			break;
		case "deathInsc3":
			scr_text("Sub Mortis Oculo.");
			break;
		case "deathInsc4":
			scr_text("Blessed be the mortal plane, guided by mine hand.");
			break;	
		case "deathInsc5":
			scr_text("Under the molten skull, melt the ashen.");
			break;
		case "deathInsc6":
			scr_text("They have tread too far. Arrogance meets its end.");
			break;
		case "deathInsc7":
			scr_text("[REDACTED FOR SPOILERS]");
			break;
		case "deathInsc8":
			scr_text("The soul... is reaped.");
			break;
			
		case "deathStatue1":
			scr_text("It stares into the void.");
			break;	
		case "deathStatue2":
			scr_text("Broken, worn, tired, drained.");
			break;	
		case "deathStatue3":
			scr_text("Discord sowed it.");
			break;
		case "deathStatue4":
			scr_text("Where are you going?");
			break;
		case "deathStatue5":
			scr_text("Stay.");
			break;	
			
		case "seerStatue1":
			scr_text("<__>! I've figured it out, the formula to ___!");
			scr_text("We can finally rid our mortal disease of-");
			scr_text("... the rest is static.");
			break;
		case "seerStatue2":
			scr_text("Only static...");
			break;
			
		case "lookingGlass1":
			scr_text("A looking glass. It's eternally shattered.");
			break;
		
		case "armoryAxe":
			scr_text("An axe. Bloodied bravery.");
			break;
		case "armoryBow":
			scr_text("A bow. Was it swift enough?");
			break;
		case "armoryGlaive":
			scr_text("A glaive. Undying loyalty.");
			break;
		case "armorySword":
			scr_text("A sword. Tarnished blade.");
			break;
		case "armoryInscription":
			scr_text("To protect the Hollowed; the sun, the moon, and the stars.");
			break;
	
		// THE CATHEDRAL
			// ECHO
		case "echoCathedral":
			scr_text("...");
			scr_text("It is... ignoring you.");
			break;	
		
		case "orderInsc1":
			scr_text("Order.");
			break;
		case "orderInsc2":
			scr_text("The balance of the essence shall not be disturbed.");
			break;
		case "orderInsc3":
			scr_text("Equilibrium. Do not disturb it.");
			break;
		case "orderInsc4":
			scr_text("Take the sky under. Breach not thine eyes, but thine soul. Cleanse thine heart within.")
			break;	
		case "orderInsc5":
			scr_text("Bow under the pale glow of mine true Order.");
			break;
		case "orderInsc6":
			scr_text("Ordo Obtinet.");
			break;
		case "orderInsc7":
			scr_text("The scales are tipped. Chaos ensues. All is laid to dust… even mineself.");
			break;
		case "orderInsc8":
			scr_text("With tainted blood comes the discord of a thousand hells.");
			break;
			
		case "cathedralPews":
			scr_text("Rows of rotted chairs. There's a podium as well.");
			break;
		
			// SOLSTICE
		case "solstice":
			switch (global.solstice) {
				case 0:
					global.solstice++;
					scr_text("Ah! Who are you!?!?!?");
					scr_text("Erm, oh, sorry, I'm Solstice. I'm visiting from another land, but I got lost...");
					scr_text("Anyway! Do you think there's something wrong with this place? There's this suffocating atmosphere...");
					break;
				case 1:
					global.solstice++;
					scr_text("Hmm! This drawing looks great... how should I improve it... hmm.");
					break;
				case 2:
					global.solstice++;
					scr_text("There's this bee that keeps talking to me. Do you think he's okay? I've seen him talk to inanimate rocks...");
					break;
				case 3:
					if (room == cathedralInscriptionRoom) {
						global.solstice++;
						scr_text("That lonely ghost is always bemoaning about something...");
					}
					else {
						scr_text("Hm, hmm?");
					}
					break;
				case 4:
					if (room == cathedralInscriptionRoom) {
						global.solstice++;
						scr_text("Hm... let's see... this... and this...");
					}
					else {
						scr_text("How do I get back home...?");
					}
					break;
				case 5:
					if (room == meadowsFutilityRoom) {
						global.solstice++;
						scr_text("Hello, big friend!");
						scr_text("It's kind of nice here in the Meadows. The Cathedral is way too creepy...")
					}
					else {
						scr_text("Do worms like disco?");
					}
					break;
				case 6:
					if (room == meadowsFutilityRoom) {
						global.solstice++;
						scr_text("Ah! Sorry, you scared me again... I'm always such a scaredy-pigeon. Do you think it's pathetic?");
							scr_options("Nod", "solsticeScaredy");
							scr_options("Shake head", "solsticeNotScaredy");
					}
					else {
						scr_text("Hm...");
					}
					break;
				default:
					scr_text("...");
					scr_text("She seems busy thinking.");
					break;	
				}
			break;
						case "solsticeScaredy":
							scr_text("O-oh... Maybe that's why other pigeons shun me...");
							scr_text("Not to worry! I'll try to be more brave!");
							break;
						case "solsticeNotScaredy":
							scr_text("R-really? You don't think I'm pitiful? That means a lot to me, because most pigeons say that I'm a real bad scaredy-pigeon...");
							break;
			
		case "orderStatue1":
			scr_text("The words of Order: Mine will is law; thine soul is discord.");
			break;
		case "cathDeathStatue":
			scr_text("Glory.");
			break;
		case "cathOrderStatue":
			scr_text("Strength.");
			break;
		case "cathLifeStatue":
			scr_text("Virtue.");
			break;
			
		case "bookcase1":
			scr_text("Seeds of Stepping Stones.");
			scr_text("The stepping stone was named Gary. Gary loved being stepped on.");
			scr_text("Something was wrong with Gary, because other stepping stones felt otherwise about being stepped on.");
			scr_text("Perhaps Gary was a special case. Perhaps Gary needed a friend.");
			scr_text("Perhaps Gary needed a therapist because his mother stepped on him at birth.");
			break;
		case "bookcase2":
			scr_text("The Grand History of Hollowed Gardens.");
			scr_text("Year 20XX, the year when the three hollowed hills were not hallowed anymore.");
			scr_text("Three deities emerged from three curious sprouts, grown from seeds of starlight.");
			scr_text("The first deity was ___.");
			scr_text("The second, ___.");
			scr_text("The final, ___.");
			scr_text("...");
			scr_text("For some reason, the names are scratched out.");
			break;
		case "bookcase3":
			scr_text("How to Swim 202.");
			scr_text("Step 1. Drown.");
			break;
		case "bookcase5":
			scr_text("The Yarghhh-books.");
			break;
		case "bookcase4":
			scr_text("All the books are empty except one.");
			scr_text("Read it?");
				scr_options("Read", "readSecret");
				scr_options("Don't read", "don'tReadSecret");
			break;
					case "readSecret":
						scr_text("...");
						scr_text("It's the greed, the greed, the GREED.");
							scr_textColor(31, 36, c_red, c_red, c_red, c_red);
						break;
					case "don'tReadSecret":
						break;
		
		case "parchment1":
			scr_text("A formulae...");
			scr_text("... the essence of an innocent soul drained and embalmed.");
			scr_text("Mix with algernic leaves and philser flour.");
			scr_text("... The rest are covered with angrily scribbles.")
			break;
		case "parchment2":
			scr_text("A letter...");
			scr_text("Beloved ___, I hope that you are safe- for much of the land has been corrupted with rot.");
			scr_text("I beg you to please forgive me for everything. My intentions that were once pure became twisted in my search for ___.");
			scr_text("... The rest is smudged with a dark substance. ");
			break;
		case "parchment3":
			scr_text("The formulae of ___. Caution: there may be side-effects such as mood swings,");
			scr_text("anxiety, and possibly the severing of one's soul– The rest is cut off.");
			break;
		
		case "cathedralStatue1":
			scr_text("...");
			break;
		
		case "orderStatue2":
			scr_text("A statue placed here for... some reason.");
			break;
		
		case "fatallium":
			switch (global.fatallium) {
				case 0:
					global.fatallium++;
					scr_text("... damn. How'd you get here?");
					scr_text("Ehh. No matter. It's a bit empty here, right?");
					scr_text("That's 'cause I'm a broke ass. It's all good though. All good.");
					break;
				case 1:
					global.fatallium++;
					scr_text("This is my first legit game, so I hope you like it. June 2023 gang, y'know what I'm sayin'?");
					scr_text("Keep on with your journey, bucko. I know you got it in you.");
					break;
				case 2:
					scr_text("This isn't the most optimized game, but... well, at least it works.");
					scr_text("I'll try to fix some loose ends after a big nap. Like, a huge nap.");
					scr_text("Kids (or big kids) like you should take care of themselves. Remember to stay kind and open-minded.");
					scr_text("Remember empathy and brownies.");
					scr_text("If you have these virtues, you're a straight-up unicorn in my book.");
					global.fatallium++;
					break;
				default:
					scr_text("Good night.");
					break;
			}
			break;
			
		case "hiddenInsc":
			scr_text("This is room of the creator. They were too lazy to create sprites for this room.");
			break;
				
		//	MEADOWS		
			// FROG GANG
		case "frogs":
			switch (global.frogs) {
				case 0:
					global.frogs++;
					global.meeraAndFrogs++;
					scr_text("+ Hello. We're a trio of frogs. We're the Froggies.");
					scr_text("+ Bam. I'm Bam, the keyboardist.");
					scr_text("- Yargh! I'm Yarg! I play the drums!");
					scr_text("= ...");
					scr_text("- That's Mm! We call him Triple-W! He's kind of shy! But he's a great singer!");
					scr_text("= ///");
					scr_text("+ Our instruments are... missing.");
					scr_text("- We lost them! After a night of partying!");
					scr_text("+ Can you help us find them? We'd appreciate it very much.");
					scr_text("- Yeah! Please! Just look out for shiny things on the floor.");
					scr_text("= ... ?");
					break;
				case 1:
					if (global.frogsInstruments == 3) {
						global.frogs++;
						scr_text("+ You found them... ! Thank you.");
						scr_text("- Yes!!! Thank you, bud!!!");
						scr_text("= ... thanks...");
						scr_text("- If you ever wanna jam, just call us!");
					}
					else {
						scr_text("+ Still haven't found them? That's okay.");
						scr_text("- Yeah! That's... not okay! Please help us!!!");
						scr_text("- Help! Us!");
					}
					break;
				case 2:
					scr_text("= ... ??");
					scr_text("+ Triple-W said that you're very kind for helping us.");
					scr_text("- Yes!!! Thank you!!!");
					global.frogs++;
					break;	
				default:
					scr_text("= ///");
					scr_text("= ... ?");
						if (global.meeraAndFrogs < 2) {
							scr_options("Ask about band", "frogsBandAsk");
							scr_options("Ask about Triple-W", "frogsTripleW");
							scr_options("Ask about fish", "frogsFishAsk");
							}
						else {
							scr_options("Ask about Meera", "frogsMeeraAsk");
							scr_options("Ask about Triple-W", "frogsTripleW");
							scr_options("Ask about fish", "frogsFishAsk");
							}
					break;
			}
			break;
				case "mmInst":
					scr_text("It's an instrument fit for a gloomy frog.");
					break;
				case "yarghInst":
					scr_text("It's an instrument fit for an energetic frog.");
					break;
				case "bamInst":
					scr_text("It's an instrument fit for a responsible frog.");
					break;
			case "frogsBandAsk":
				scr_text("- We frogs have been together for years!");
				scr_text("= ... !");
				scr_text("+ Yes, our next concert should be in three days, 7PM EST.");
				scr_text("- Yes! Right here! No where else! Because we're stuck here!");
				scr_text("- ...");
				scr_text("+ ...");
				scr_text("- Come by soon!!!");
				break;
			case "frogsFishAsk":
				scr_text("[All in unison] MENACES!");
				break;
			case "frogsMeeraAsk":
				scr_text("+ Meera? That name sounds so... familiar.");
				scr_text("= ...? ... !");
				scr_text("- So true, so true! My little froggy heart hurts!");
				scr_text("+ Hm. That's... huh.");
				break;
			case "frogsTripleW":
				scr_text("= ... ? ///");
				scr_text("+ Interested in Mm? Huh.");
				scr_text("- !!! Mm is so popular!!! Especially with weirdos!!!");
				scr_text("= ...");
				scr_text("+ If you wish to wish to have a friend hangout with Mm, you have");
				scr_text("+ to do it another time. We're busy today.");
				scr_text("- Busy rocking!!!");
				scr_text("= /////");
				break;
		
		// MEADOWS
			// BEESTON
		case "beeston":
			switch (global.beeston) {
				case 0:
					global.beeston++;
					scr_text("I am Beeston! Okay, my name is actually Beefred, but Beeston sounds so much cooler, don't you think?");
						scr_options("Nod", "beestonCoolName");
						scr_options("Shake head", "beestonNameSucks");
					break;
				case 1:
					global.beeston++;
					scr_text("Everyday, I smell the flowers, you know? 'cause I'm a bee. I got here yesterday and wow!");
					scr_text("Everything outside of the meadows is like, dead!");
					break;
				case 3:
					global.beeston++;
					scr_text("Whatcha up to? I'm doing pollen.");
					break;
				case 4:
					if (room == meadowsThird) {
						global.beeston++;
						scr_text("Do you think yellow brings out my eyes?");
					}
					else {
						scr_text("Bzz...");
					}
					break;
				case 5:
					if (room == meadowsThird) {
						global.beeston++;
						scr_text("The flowers here kinda taste sad. Do you like to eat flowers?");
							scr_options("You like moss", "beestonMoss");
							scr_options("You like dirt", "beestonDirt");
					}
					else {
						scr_text("I'm a handsome bee!");
					}
					break;
				default:
					scr_text("Whaddaya need from the great Beeston, human?");
					scr_text("Sike! Not helping you!");
					break;
			}	
			break;
					case "beestonCoolName":
						scr_text("Of course you agree! All three of my cousins have the same name as well.");
						scr_gameText("beestonFirstMeetingCont");
						break;
					case "beestonNameSucks":
						scr_text("What! How dare you! I'm telling my mom.");
						break;
					case "beestonMoss":
						scr_text("What! I can't say I know what moss tastes like...");
						scr_text("I feel like you're not the first person like to eat moss.");
						break;
					case "beestonDirt":
						scr_text("Dirt!? That's disgusting! It's so earthy, and dry, and tasteless!");
						scr_text("You have a peasant's palate.");
						break;
			
			// NIMBUS
		case "nimbus":
			switch (global.nimbus) {
				case 0:
					global.nimbus++;
					scr_text("Ah, hello, child. Would you like to hear a song?");
						scr_options("Nod", "nimbusSong");
						scr_options("Shake head", "nimbusNoSong");
					break;
				case 1:
					global.nimbus++;
					scr_text("Oh, my name is Nimbus, by the way! Who might you be?");
					scr_text("Well, my friend, you are welcome to sit with me for a little while.");
					scr_text("I am but a lone wanderer with my lonely  harp.");
					break;
				case 2:
					global.nimbus++;
					scr_text("Hmm~ hm~ hmm~");
					break;
				case 3:
					if (room == meadowsThird) {
						global.nimbus++;
						scr_text("Ah, hello again, friend.");
						scr_text("I'm a bit tired... but that's alright.");
					}
					else {
						scr_text("This place is... so lovely.");
					}
					break;
				default:
					scr_text("Do you need anything from me, my friend?");
						scr_options("Ask about harp", "nimbusHarpAsk");
						scr_options("Ask about past", "nimbusPastAsk");
						scr_options("Ask about Regal", "nimbusRegalAsk");
					break;
				}
			break;
					case "nimbusSong":
						scr_text("");
						audio_pause_sound(spring_time_snd);
						audio_play_sound(nimbusHarp, 5, 0);
						break;
					case "nimbusNoSong":
						scr_text("Ah, that's alright. Come by another time!");
						break;
					case "nimbusHarpAsk":
						scr_text("My harp? It's a precious gift from a precious someone.");
						scr_text("I have had it for a long, long time. I wonder... where did they go?");
						scr_text("...");
						scr_text("Ah, sorry, I don't wish to talk about this anymore.");
						break;
					case "nimbusPastAsk":
						scr_text("Oh, I'm not that special. I simply wander the lands between the Hallowed Gardens...");
						scr_text("I have yet to traverse the Dark Sea back home.");
						scr_text("There is a barrier of sorts that seems to keep all inhabitants inside the Gardens...");
						break;
					case "nimbusRegalAsk":
						scr_text("Regal is a cursed painting, forced to be sentient due to...");
						scr_text("Oh, I forgot what, but it was a terrible happening.");
						scr_text("Regal always tells me to shut up, you know? I can't help but take it to heart...");
						scr_text("Regal is a bit prickly, but maybe he's just a shy guy?");
						scr_text("Either way, I think he needs a friend.");
						break;
			
			// PERRI
		case "perri":
			switch (global.perri) {
				case 0:
					global.perri++;
					scr_text("Greetings.");
					break;
				case 1:
					global.perri++;
					scr_text("I am Perri the luna moth.");
					break;
				case 2:
					global.perri++;
					scr_text("I will sleep now.");
					break;
				default:
					scr_text("...");
					scr_text("It seems that she is sleeping...");
					break;
			}
			break;
			
			// REGAL
		case "regal":
			switch (global.regal) {
				case 0:
					global.regal++;
					scr_text("... do you need something from me?");
					break;
				case 1:
					global.regal++;
					scr_text("If not, please leave.");
					break;
				case 2:
					global.regal++;
					scr_text("...");
					break;
				case 4:
					global.regal++;
					scr_text("......");
					scr_text("You're still here.");
					scr_text("... how annoying. Oh, well. I'm Regal.");
					scr_text("I don't care who you are though, so don't bother telling me your name.");
					break;
				case 5:
					global.regal++;
					scr_text("What do you want from me? Can't you see that I'm busy sulking?");
					scr_text("Annoying child. Where are your parents?");
					scr_text("... nevermind, don't answer that.");
					scr_text("Go bother Beeston or something. That bee is always up to no good.");
					break;
				default:
					scr_text("...");
					scr_options("Ask about Beeston", "regalBeestonAsk");
					if (regal_npc.sprite_index == regalCrown_spr) {
						scr_options("Ask about past", "regalPastAsk2");
						scr_options("Poke", "regalPoke");
					}
					else if (global.regalCrown == 1) {
						scr_options("Give flower crown", "regalGift");
					}
					else {
						scr_options("Ask about past", "regalPastAsk1");
					}
					break;
				}
			break;
					case "regalBeestonAsk":
						scr_text("Beeston is a bee. He is a mad bee. That's all you need to know.");
						break;
					case "regalGift":
						scr_text("...");
						scr_text("What's that? A flower crown?");
						scr_text("And you're giving it to me?");
						scr_text("...");
						scr_text("Why?");
						scr_text("...");
						scr_text("Fine, fine... put it on my head, I don't care.");
						scr_gameText("regalCrownGiven");
						break;
							case "regalCrownGiven":
								with (regal_npc) {
									sprite_index = regalCrown_spr;
									}
								scr_text("... thanks. It's nice.");
								break;
					case "regalPastAsk1":
						scr_text("Why should I tell you anything about me?");
						scr_text("Why do you even care?");
						scr_text("...");
						scr_text("My mother,,,");
						scr_text("...");
						scr_text("Nevermind.");
						break;
					case "regalPastAsk2":
						scr_text("Fine. I'll tell you a little about myself.");
						scr_text("...");
						scr_text("My mother... she cursed my soul into this painting.");
						scr_text("You can say that I have maternal issues. As for what I did to get this punishment...");
						scr_text("I... have no idea.");
						scr_text("I've been stuck as a painting ever since. I guess the rot really got to mother, huh?");
						scr_text("...");
						break;
					case "regalPoke":
						scr_text("... why.");
						break;
			case "crown":
				scr_text("A lovely flower crown for a thorn.");
				break;
			
			// ECHO
		case "echoCenter":
			switch (global.echo) {
				case 0:
					global.echo++;
					scr_text("... boo.");
					scr_text("What... do you want... from me?");
					scr_text("You... are not from... here... right?");
					scr_text("I have... a cousin... his name... is Nap... Napsta...");
					scr_text("...");
					scr_text("I forgot... the name...");
					scr_text("But... if you need anything...");
					scr_text("Don't... come to me...");
					break;
				case 1:
					global.echo++;
					scr_text("What... am... I...?");
					scr_text("So alone... this sucks...");
					break;
				case 2:
					global.echo++;
					scr_text("I want... to go... home...");
					scr_text("I'm forgetting... something... but... what... is it...... ?");
					break;
				default:
					scr_text("Do you... have anything... to ask...?");
					scr_options("Ask about past", "echoPastAsk");
					scr_options("Ask about hobbies", "echoHobbiesAsk");
					scr_options("Ask about flower", "echoFlowerAsk");
					break;
			}
			break;
					case "echoPastAsk":
					scr_text("My... past...? Well... I'm not very special...");
					scr_text("But... if you insist... I was part... of a gang...");
					scr_text("What gang... you ask...?");
					scr_text("I'm not... telling...");
					scr_text("But it was... a cool... gang...");
					scr_text("With... spoons...");
						break;
					case "echoHobbiesAsk":
						scr_text("Hobbies...");
						scr_text("I don't... have any...");
						scr_text("But if you... really wanna know...");
						scr_text("I like to... sit... and stare... at a wall...");
						scr_text("And...");
						scr_text("I like...");
						scr_text("... baking...");
						scr_text("... brownies...");
						break;
					case "echoFlowerAsk":
						scr_text("Flower...? What floweer...?");
						scr_text("I like... dirt... more...");
						break;

			// GOOSE
		case "goose":
			switch (global.goose) {
				case 0:
					global.goose++;
					scr_text("RAAAAAA!!! I'M GOOSE! I'M SO COOL!");
					break;
				case 1:
					global.goose++;
					scr_text("WHY AM I YELLING? I'M SPEAKING...");
					scr_text("... IN UPPER-CASE!!!");
					break;
				case 2:
					global.goose++;
					scr_text("SOMEONE THREW ME HERE. THIS PLACE IS MY NEW HOME!!!");
					scr_text("RAAAAAAA!!! ALL HAIL GOOSE! THE LORD OF THE ELD- GEESE!!!");
					break;
				default:
					scr_text("...");
					scr_text("It seems that it tired itself out.");
					break;
			}
			break;
			
			//	ALPHONSE	
		case "alphonse":
			switch (global.alphonse) {
				case 0:
					global.alphonse++;
					scr_text("Ggggreetings. My name is...........");
					scr_text("Alphonse.");
					scr_text("I think... I'm... ddddddddead.");
					scr_text("Because I'm a ghostly apparition.");
					scr_text("Goodness gracious, I'm a ghost! A ghost!");
					break;
				case 1:
					global.alphonse++;
					scr_text("Why am I a ghost??? How have I died??? Why? Why?");
					scr_text("...");
					scr_text("Why?");
						scr_textColor(0, 4, c_red, c_red, c_red, c_red);
					break;
				default:
					scr_text("[1 1 0 1]");
					break;
			}
			break;
			
		case "theEye":
			scr_text("You");
				scr_textColor(0, 3, c_red, c_red, c_red, c_red);
			scr_text("are");
				scr_textColor(0, 3, c_red, c_red, c_red, c_red);
			scr_text("not");
				scr_textColor(0, 3, c_red, c_red, c_red, c_red);
			scr_text("welcome.");
				scr_textColor(0, 8, c_red, c_red, c_red, c_red);
			break;
		case "theSprout":
			scr_text("Welcome.");
			break;
			
			// FROG
		case "frogMeadowsSolaceTwo":
			switch (global.frog) {
				case 0:
					global.frog++;
					scr_text("+ Oh, hi. Bam here. I'm kind of stuck, but it's all good.");
					break;
				case 1:
					global.frog++;
					scr_text("+ Don't worry about me. I'm fine, you see? Gonna nap now.");
					break;
				default:
					scr_text("+ Zzz...");
					break;
			}
			break;
			
			// THE SHADOW
		case "shadowMeeting":
			scr_text("You...");
				scr_textColor(0, 6, c_red, c_red, c_red, c_red);
			break;
		case "shadowRuins":
			scr_text("Me...?");
				scr_textColor(0, 6, c_red, c_red, c_red, c_red);
			break;
		case "shadowCathedral":
			scr_text("Lost...");
				scr_textColor(0, 7, c_red, c_red, c_red, c_red);
			break;
		case "shadowMeadows":
			scr_text("Guilt...?");
				scr_textColor(0, 9, c_red, c_red, c_red, c_red);
			break;
		case "shadowTemple":
			scr_text("Please...");
				scr_textColor(0, 9, c_red, c_red, c_red, c_red);
			scr_gameText("offerFlowerAsk");	
			break;
		
		case "futilityMirror":
			scr_text("A foggy mirror.");
			break;
			
		case "meadowsStatue1":
			scr_text("A humanoid dear statue.");
			break;
		case "meadowsStatue2":
			scr_text("Thriving...");
			break;
		case "meadowsStatue3":
			scr_text("Where have they gone?");
			break;
		case "meadowsStatue4":
			scr_text("Twilight touches all... except some.");
			break;	
		case "meadowsStatue5":
			scr_text("Thine soul... never rests...");
			break;
		
		case "lifeInsc1":
			scr_text("The serenity of all that is pure...");
			scr_text("... with the weeping that ensues.");
			break;
		case "lifeInsc2":
			scr_text("Life.");
			break;
		case "lifeInsc3":
			scr_text("Life's eternal dance, under endless skies.");
			break;
		case "lifeInsc4":
			scr_text("Vivere. Floreo, Vigeo, Vigeo.");
			break;
		case "lifeInsc5":
			scr_text("In the gentle sway of grasses, the heartbeat of life echoes under mine arms.");
			break;
		case "lifeInsc6":
			scr_text("The littlest beings are the greatest of stars.");
			break;
		case "lifeInsc7":
			scr_text("You.");
			break;
		
		case "meadowsLifeStatue":
			scr_text("Soothe thine essence in mine bosom- cleanse thyself of rot.");
			break;
		
		case "meadowsPond":
			scr_text("A pond. It's peaceful here.");
			break;
		
		// TEMPLE ROOM
		case "theLight":
			scr_text("This light... it fills you with hope.");
			break;
		
		case "offerFlowerAsk":
			if (global.flowers >= 1) {
				scr_options("Offer flower", "offerFlower");
				scr_options("Don't offer flower", "don'tOffer");
			}
			else {
				scr_text("It... hurts...");
					scr_textColor(0, 14, c_red, c_red, c_red, c_red);
				scr_gameText("cleansed");		
			}
			break;
				case "offerFlower":
					global.flowers--;
					obj_puzzleManager.absolved++;
					scr_text("Peace... at last...");	
					scr_gameText("cleansed");
					break;
				case "don'tOffer":
					scr_text("...");
					break;
				case "cleansed":
					scr_text("");
					instance_destroy(theShadow_obj);
					break;
		
		// the end
		case "closet":
			scr_text("It's your closet. Right now, it's full of winter clothing.");
			break;
		case "yourBookcase":
			scr_text("Your bookcase. You know how to swim.");
			break;
		case "chair":
			scr_text("Your chair. It's sit-able.");
			break;
		case "bed":
			scr_text("Your bed. Was... all of that a dream?");
				scr_options("Go to bed (end game)", "goodNight");
				scr_options("Not yet", "noRest");
			break;
		case "desk":
			scr_text("Your desk. There's a journal and a lot of ballpoint pens.");
			scr_text("You're definitely going to record this... dream. But maybe after some rest.");
			break;
		case "painting":
			scr_text("A painting. You remember someone... but who?");
			break;
		case "window":	
			scr_text("You see cars and people and snow. It's great fun out there.");
			scr_text("Though, you prefer your bed right now.");
			break;
		case "pillows":
			scr_text("Your pillow fort. Friends are coming over today to play.");
			scr_text("After all, it's a special day.");
			break;
		case "yourPlant":
			scr_text("The best plant: Gerold.");
			break;
		case "anEnding":
			scr_text("Did... all of that truly happen?");
			scr_text("Or were you dreaming?");
			scr_text("If that were a dream... what a wonderful dream it was.");
			break;
		case "dream?":
			scr_text("!");
			break;
		case "goodNight":
			game_end();
			break;
		case "notYet":
			scr_text("Not yet...");
			break;
		default:
			break;
	}
}