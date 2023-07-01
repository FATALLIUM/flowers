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
							inst._text_Id = "oldWillow1";
						}
						break;
					case "declineGodQuest":
						scr_text("I see. I understand. The burden of such a quest is top much for a child. Nonetheless, stay safe.");
						scr_text("If you ever come across a silver flower, please pick it up. When you reach the ends of the meadows, place the flowers under the glass cases.");
						scr_text("Welcome to the Hollowed Gardens, little sapling.");
						var inst = instance_create_layer(_x, _y, "Instances", obj_speakBlock);
						with (inst) {
							inst._text_Id = "oldWillow1";
						}
						break;
		case "oldWillow1":
			scr_text("Hrm... hrm...");
			var inst = instance_create_layer(_x, _y, "Instances", obj_speakBlock);
				with (inst) {
					inst._text_Id = "oldWillow2";
				}
			scr_gameText("oldWillowChat", _x, _y);
			break;
		case "oldWillow2":
			scr_text("So... tiring... hrm...");
			scr_gameText("oldWillowChat", _x, _y);
			break;
		case "oldWillowChat":
			
			scr_text("Hrmm. Do you need anything, little sapling?");
			scr_options("Pat mustache", "oldWillowMustache1");
			scr_options("Ask about the Hollowed Gardens", "oldWillowGardenAsk");
			scr_options("Ask about his past", "oldWillowPast");
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
		case "meeraFirstMeeting":
			global.meeraAndFrogs++;
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
				if (obj_player.itemCarried != noone && obj_player.itemCarried._name == "meepo") {
					scr_gameText("meepoFound", _x, _y);
				}
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
			case "meepoFound":
				scr_text("!!! You found him! Meepo!");
				scr_text("I mean... thanks. Thanks for finding my friend.");
				scr_text("You're not a bad human after all.");
				scr_text("...");
				scr_text("So... do you need anything");
				var inst = instance_create_layer(_x, _y, "Instances", obj_speakBlock);
					with (inst) {
						inst._text_Id = "meera1";
				}
				break;
			case "meera1":
				scr_text("Bramble was snoring like a literal fire giant last night...");
				scr_text("I couldn't get even one wink of sleep.");
				scr_text("I wonder how Old Willow even slept through that thunder.");
				var inst = instance_create_layer(_x, _y, "Instances", obj_speakBlock);
					with (inst) {
						inst._text_Id = "meera2";
					}
				scr_gameText("meeraChat", _x, _y);
				break;
			case "meera2":
				scr_text("Old Willow is... really old. He's been the guardian of this forest since the...");
				scr_text("... the... I can't... remember what...?");
				scr_text("...");
				scr_text("Nevermind. What do you need?");
				scr_gameText("meeraChat", _x, _y);
				break;
			case "meeraChat":
				scr_options("Ask about fairies", "meeraFairyAsk");
				scr_options("Ask about band", "meeraBandAsk");
				break;
					case "meeraFairyAsk":
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
						scr_text("Yeah, I played was the lead bassist for the band.");
						scr_text("As for the other members, I can't... I can't remember...?");
						scr_text("Maybe dementia got me early.");
						scr_text("...");
						scr_text("Can fairies even get dementia?");
						break;
			
			// BRAMBLE
		case "brambleFirstMeeting":
			scr_text("Gah! What the heck are ya?!");
			scr_text("... I mean- who are ya, huh? Name's Bramble, Bramble the hedgehog.");
			scr_text("Whaddaya here for, kid? Ya don't look like a forest dweller.");
			scr_text("... far from home, huh? That sucks... Ya're welcome to stay here in the forest though.");
			var inst = instance_create_layer(_x, _y, "Instances", obj_speakBlock);
			with (inst) {
				inst._text_Id = "bramble1";
			}			
			break;
		case "bramble1":
			scr_text("All in a good day's work, ya know? It's peaceful in the forest.");
			scr_text("Ma paps stayed here, his grandpappy, great-grandpappy...");
			scr_text("Peace is bliss.");
			var inst = instance_create_layer(_x, _y, "Instances", obj_speakBlock);
				with (inst) {
					inst._text_Id = "bramble2";
				}
			scr_gameText("brambleChat1", _x, _y);	
			break;
		case "bramble2":
			scr_text("Right, there was this real odd smell comin' from the end of the forest, near them ruins.");
			scr_text("Darn stuff gave me the heebie-jeebies.");
			scr_gameText("brambleChat2", _x, _y);
			break;
		case "brambleChat1":
			scr_text("Ya need somethin', kid?");
				scr_options("Ask about plant", "bramblePlantAsk");
				scr_options("Ask about his daily life", "brambleLifeAsk");
			break;
		case "brambleChat2":
			scr_text("Ya need somethin', kid?");
				scr_options("Ask about plant", "bramblePlantAsk");
				scr_options("Ask about his daily life", "brambleLifeAsk");
				scr_options("Ask about the smell", "brambleSmellAsk");
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
			scr_text("Please don't try to lie on it.");
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
		case "mossFirstMeeting":
			scr_text("! Hey! You there! Yeah, you! Come here, please.");
			scr_text("Right- I'm Moss. I'm a talking statue, sure, but I bet you've met other weirdos as well.");
			scr_text("Anyway! I have something I need you to find. You don't have to, but can you???");
			scr_text("If you're gonna help a pal out, it's my journal.");
			scr_text("It's orange, so you can probably spot it in these dreary old ruins.");
			scr_text("Thanks and bye.");
			var inst = instance_create_layer(_x, _y, "Instances", obj_speakBlock);
				with (inst) {
					inst._text_Id = "moss";
				}
			break;
		case "moss":
			scr_text("Hmmm...");
			if (obj_player.itemCarried != noone && obj_player.itemCarried._name == "mossBook") {
				scr_gameText("mossBookFound", _x, _y);
			}
			break;
		case "moss1":
			scr_text("It's kinda lonely, you know? No one really comes by to the ruins.");
			scr_text("It's just me, my book, and wet grass.");
			scr_text("I guess I'm kind of happy to see another person.");
			var inst = instance_create_layer(_x, _y, "Instances", obj_speakBlock);
				with (inst) {
					inst._text_Id = "moss2";
				}
			scr_gameText("mossChat", _x, _y);
			break;
		case "moss2":
			scr_text("Sometimes I wonder how I got here... like, I don't even know how I'm conscious?");
			scr_text("I just woke up one day and wham! I'm a sentient statue!");
			scr_text("It's neat, but also really strange...");
			scr_gameText("mossChat", _x, _y);
			break;	
		case "mossBookFound":
			scr_text("!!!");
			scr_text("My book! Thanks, pal. You're a real lifesaver, you know that?");
			scr_text("You don't have to question how I got the book in the first place though.");
			var inst = instance_create_layer(_x, _y, "Instances", obj_speakBlock);
				with (inst) {
					inst._text_Id = "moss1";
				}
			break;
		case "mossBook":
			scr_text("It's an orange book.");
			break;
		case "mossChat":
			scr_text("Need anything?");
				switch (global.mossFriend) {
					case 1:
						break;
					case -1:
						break;
					default:
						scr_options("Ask about past", "mossPastAsk");
						break;
				}
				scr_options("Ask about book", "mossBookAsk");
				scr_options("Boop nose", "boopNose");
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

			// MORT
		case "mortFirstMeeting":
			break;
		case "mort1":
			break;
		case "mort2":
			break;
		case "mort3":
			break;
		case "mort4":
			break;
		case "mortThirdRoom":
			break;
		case "mortChat":
			break;
		
			// ECHO
		case "echoFirstMeeting":
			scr_text("...?");
			scr_text("...");
			break;
		case "echoIgnore":
			scr_text("They don't seem to be seeing you.");
			break;
			
		case "deathSymbols1":
			scr_text("The cheese comes last.  Eat your vegetables, children. And be kind.");
			scr_text("Kind vegetables.");
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
		case "echoCathedralBeginning":
			scr_text("...");
			scr_text("......?");
			var inst = instance_create_layer(_x, _y, "Instances", obj_speakBlock);
				with (inst) {
					inst._text_Id = "echoCathedralBeginning1";
				}
			break;
		case "echoCathedralBeginning1":
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
		
			// SOLSTICE
		case "solsticeFirstMeeting":
		Ah! Who are you!?!?!?
Erm, oh, sorry, I'm Solstice. I'm visiting from another land, but I got lost…
Anyway! Do you think there's something wrong with this place? There's this suffocating atmosphere…
Hmm! This drawing looks great… how should I improve it… hmm.
Hello, big friend!
There's this bee that keeps talking to me. Do you think he's okay? I've seen him talk to inanimate rocks…
Hm… let's see… this… and this…
That lonely ghost is always bemoaning about something…
Ah! Sorry, you scared me again… I'm always such a scaredy-pigeon. Do you think it's pathetic?
[Nod]
O-oh… Maybe that's why other pigeons shun me…
Not to worry! I'll try to be more brave!
[Shake head]
R-really? You don't think I'm pitiful? That means a lot to me, because most pigeons say that I'm a real bad scaredy-pigeon…

			break;
		case "solsticeCathedral1":
			break;
		case "solsticeCathedral2":
			break;
		case "solsticeInscRoom":
			break;
		case "solsticeInsc1":
			break;
			
		case "orderStatue1":
			scr_text("The plaque reads: Mine will is law; thine soul is discord.");
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
		case "bookecase3":
			scr_text("How to Swim 202.");
			scr_text("Step 1. Drown.");
			break;
		case "bookcase4":
			scr_text("ALl the books are empty except one.");
			scr_text("Read it?");
				// options
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
		
			// FROG GANG
		case "frogsFirstMeeting":
			break;
		case "frogs1":
			break;
		case "frogs2":
			break;
		case "frogsChat":
			break;
		case "frogsQuest":
			break;
		case "frogsQuestSuccess":
			break;
		
		
		// MEADOWS
			// BEESTON
		case "beestonFirstMeeting":
			scr_text("I am Beeston! Okay, my name is actually Beefred, but Beeston sounds so much cooler, don't you think?");
				scr_options("Nod", "beestonCoolName");
				scr_options("Shake head", "beestonNameSucks");
			break;
					case "beestonCoolName":
						scr_text("Of course you agree! All three of my cousins have the same name as well.");
						scr_gameText("beestonFirstMeetingCont", _x, _y);
						break;
					case "beestonNameSucks":
						scr_text("What! How dare you! I'm telling my mom.");
						break;
		case "beestonFirstMeetingCont":
			scr_text("Anyway, I'm just here! Doing my thing!");
			var inst = instance_create_layer(_x, _y, "Instances", obj_speakBlock);
				with (inst) {
					inst._text_Id = "beeston1";
				}
			break;
		case "beeston1":
			scr_text("Everyday, I smell the flowers, you know? 'cause I'm a bee. I got here yesterday and wow!");
			scr_text("Everything outside of the meadows is like, dead!");
			scr_gameText("beestomChat", _x, _y);
			break;
		case "beeston2":
			scr_text("Whatcha up to? I'm doing pollen.");
			scr_gameText("beestonChat", _x, _y);
			break;
		case "beestonChat":
			scr_text("Whaddaya need from the great Beeston, human?");
				scr_options("Buzz", "buzzWithBeeston");
			break;
		case "beestonThird":
			scr_text("Do you think yellow brings out my eyes?");
			scr_gameText("beestonThirdChat", _x, _y);
			break;
		case "beestonThird1":
			scr_text("The flowers here kinda taste sad. Do you like to eat flowers?");
				scr_options("You like moss", "beestonMoss");
				scr_options("You like dirt", "beestonDirt");
			break;	[You like moss]
What! I can't say I know what moss tastes like… I feel like you're not the first person like to eat moss.
[You like dirt]
Dirt!? That's disgusting! It's so earthy, and dry, and tasteless! You have a peasant's palate.

					// options
		case "beestonThirdChat":
			break;
			
			// NIMBUS
		case "nimbusFirstMeeting":
			break;Ah, hello, child. Would you like to hear a song?
[Yes] -> Song.
[No] -> Ah, that's alright. Come by another time!
Oh, my name is Nimbus, by the way! Who might you be?
Well, my friend, you are welcome to sit with me for a little while.
Hmm~ hm~ hmm~
That dastardly bee is at it again…
Oh, that Regal always tells me to shut up, you know? I can't help but take it to heart…
Regal is a bit prickly, but maybe he's just a shy guy?
Do you need anything from me, my friend?
[Ask about harp]
[Ask about past]
[Ask about Regal]

			
			// PERRI
		case "perriFirstMeeting":
			break;
		case "perri1":
			break;
		case "perri2":
			break;
		case "perri3":
			break;
			
			// REGAL
		case "regalFirstMeeting":
			break;
		case "regal1":
			break;
		case "regal2":
			break;
		case "regalChat":
			break;… do you need something from me?
If not, please leave.
…
…….
You're still here.
… how annoying. Oh, well. I'm Regal. I don't care who you are though, so don't bother telling me your name.

			
			// ECHO
		case "echoCenter":
			scr_text("... boo.");
			scr_text("What... do you want... from me?");
			scr_text("You... are not from... here... right?");
			scr_text("I have... a cousin... his name... is Nap... Napsta...");
			scr_text("...");
			scr_text("I forgot... the name...");
			scr_text("But... if you need anything...");
			scr_text("Don't... come to me...");
			var inst = instance_create_layer(_x, _y, "Instances", obj_speakBlock);
				with (inst) {
					inst._text_Id = "echoCenter1";
				}
			break;
		case "echoCenter1":
			scr_text("What... am... I...?");
			scr_text("So alone... this sucks...");
			var inst = instance_create_layer(_x, _y, "Instances", obj_speakBlock);
				with (inst) {
					inst._text_Id = "echoCenter2";
				}
			scr_gameText("echoChat", _x, _y);	
			break;
		case "echoCenter2":
			scr_text("I want... to go... home...");
			scr_text("I'm forgetting... something... but... what... is it...... ?");
			scr_gameText("echoChat", _x, _y);
			break;
		case "echoChat":
			scr_text("Do you... have anything... to ask...?");
				scr_options("Ask about past", "echoPastAsk");
				scr_options("Ask about hobbies", "echoHobbiesAsk");
				scr_options("Ask about flower", "echoFlowerAsk");
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
			
			// SOLSTICE
		case "solsticeFutility":
			break;
		case "solsticeFutility1":
			break;
		case "solsticeFutility2":
			break;
			
			// GOOSE
		case "gooseFirstMeeting":
			scr_text("RAAAAAA!!! I'M GOOSE! I'M SO COOL!");
			break;
		case "goose1":
			scr_text("WHY AM I YELLING? I'M SPEAKING...");
			scr_text("... IN UPPER-CASE!!!");
			break;
		case "goose2":
			scr_text("SOMEONE THREW ME HERE. THIS PLACE IS MY NEW HOME!!!");
			scr_text("RAAAAAAA!!! ALL HAIL GOOSE! THE LORD OF THE ELD- GEESE!!!");
			break;
		case "goose3":
			scr_text("...");
			scr_text("It seems that it tired itself out.");
			break;
			
			//	ALPHONSE	
		case "alphonseFirstMeeting":
			break;
		case "alphonseChat":
			break;
		case "alphonse1":
			break;
		case "alphonse2":
			break;
			
		case "theEye":
			scr_text("You");
			scr_text("are");
			scr_text("not");
			scr_text("welcome.");
			break;
		case "theSprout":
			scr_text("Welcome.");
			break;
			
			// FROG
		case "frogMeadowsSolsticeTwo":
			scr_text("Oh, hi. Bam here. I'm kind of stuck, but it's all good.");
			break;
		case "frogMeadowsSolsticeTwo1":
			scr_text("Don't worry about me. I'm fine, you see? Gonna nap now.");
			break;
		case "frogMeadowsSolsticeTwo2":
			scr_text("Zzz...");
			break;
			
			// THE SHADOW
		case "shadowMeeting":
			scr_text("You...");
			break;
		case "shadowRuins":
			scr_text("Me...?");
			break;
		case "shadowCathedral":
			scr_text("Lost...");
			break;
		case "shadowsMeadow":
			scr_text("Guilt...?");
			break;
		case "shadowsTemple":
			scr_text("Please...");
			break;
		
		case "futilityMirror":
			scr_text("A foggy mirror.");
			var inst = instance_create_layer(_x, _y, "Instances", obj_speakBlock);
				with (inst) {
					inst._text_Id = "futilityMirror1";
				}
			break;
		case "futilityMirror1":
			scr_text("It's you.");
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
		
		// TEMPLEROOM
		case "theLight":
			scr_text("This light... it fills you with hope.");
			break;
		
		case "offerFlowerAsk":
			scr_options("Offer flower", "offerFlower");
			scr_options("Don't offer flower", "don'tOffer");
			break;
				case "offerFlower":
					break;
				case "don'tOffer":
					break;
		
		case "deitiesFirstMeeting":
			break;
		
		default:
			break;
	}
}