"Pogoman GO!" by Jack Welch and Ben Collins-Sussman


The story headline is "An interactive satire".
The story genre is "comedy".
The release number is 9.
The story creation year is 2016.
The story description is "The world is full of Pogomen, and now that you don't have a job or family to worry about, you might as well get back to it!"

Use MAX_STATIC_DATA of 280000.
Use MAX_NUM_STATIC_STRINGS of 27000.
Use Max_DICT_ENTRIES of 2000.
Use MAX_SYMBOLS of 25000.

Use full-length room descriptions, american dialect and the serial comma.

Release along with cover art ("The Nyantech mascot cat riding a giant pogoBall"), the introductory booklet, the introductory postcard, a file of "Diagrams" called "diagrams.pdf", a file of "Walkthrough" called "walkthrough.pdf", and a file of "Web Content" called "OffLineContent".

Include Basic Screen Effects by Emily Short.  [allows us to 'pause the game']
Include Adaptive Hints by Eric Eve. [slightly tweaked for context-specific hints]
Include Object Response Tests by Juhana Leinonen. [mildly hacked for this project]
Include Menus by Emily Short. [walkthrough menus]
Include Undo Output Control by Erik Temple. [fairly hacked for this project]

Book 1 - Mechanics 
 

Chapter Kinds


Section 1 - Values

Color is a kind of value. The colors are None, Teal, Chartreuse, Alizarin Crimson, Viridian, Papayawhip, and Unbleached Titanium.

Health state is a kind of value. The health states are healthy, bruised, moderately wounded, near death, and dead.

securityColor is a kind of value. The securityColors are white, green, blue, red, black, pink, purple, gold.

Flavor is a kind of value. The flavors are strawberry, blueberry, raspberry, apple, cranberry, chocolate, licorice, pumpkin, pine-nut, pesto, liver, watermelon, apricot, teriyaki, chutney, fudge, tiramisu, and cinnamon.

Pogotype is a kind of value. The pogotypes are edator, vicore, emak, plaigrhat, vermonac, rodentikor, skwerl, arborrhat, nutellakin, cheezipouf, ogratic, cheezelord, snorepak, apneapod, seepap, rokabil, jazzahand, grunjturd, agnostator, beeleever, zealocanth, moldimug, funjifut, zhokkidge, seeduino, weeduino, weedowhak, iddi, iddiotto, drumpf, phlogistomander, pyromelion, arsonizard, peekatyou, pokeatyou, pukeatyou, amporb, jowlball, orbowatt, wimporwil, atlazzard, schwartzennator, gastro, queezee, barfalot, perpie, misdementor, and fellanon.

Section 2 - Rooms

Rooms have some text called title. A room has a text called possible exits.

LocaleDescriptor is a kind of value. The LocaleDescriptors are place, structure, and artifact.

A externalRoom is a kind of room. An externalRoom has a localeDescriptor. The localeDescriptor of an externalRoom is usually structure. An externalRoom has a number called time stamp. The time stamp of an externalRoom is usually -999. [arbitrary biggish negative number; assures that nothing is locked out when game commences]

The possible exits of an externalRoom are "[externalRoomExits]."

[  
   Places - Outside areas like parks
   Structures - Buildings, places with an interior that would have to be entered
   Artifacts - Specific items in outside locations, like a bench, sculpture, etc. 
]

Deck rooms are a kind of room. The description of deck rooms is "[deckDescription]." The possible exits of deck rooms is "[deckExits]."

Staircase rooms are a kind of room. The description of staircase rooms is "[stairwellDescription]." 

To say externalRoomExits:
	let D be a list of directions;
	repeat with WAY running through directions:
		if the room the way from the location of the player is not nothing:
			add the way to D;
	if the number of entries in D is greater than 1:
		say "From here, you can go ";
		repeat with N running from 1 to the number of entries in D:
			if N is greater than 1 and the number of entries in D is greater than 2:
				say ", ";
			if the N is the number of entries in D:
				say "or ";
			say "[entry N of D] to the [room the entry N of D from the location of the player]".

Section 3 - Doors

A door has a securityColor. The securityColor of a door is usually white.

Section 4 - Things

A prop is a kind of thing. It is usually portable. A prop has a securityColor. The securityColor of a prop is usually white.

A pop is a kind of thing. It is usually scenery.

Nyantechnology is a kind of thing. 

A lightsource is a kind of device.

A chainItem is a kind of thing. A chainItem can be clipped or unclipped. A chainItem is usually clipped, fixed in place scenery.

A pastry is a kind of edible prop. A pastry has a flavor. The flavor of a pastry is usually blueberry. [because I like blueberry pastries.]

An lift button is a kind of improper-named privately-named fixed in place thing. 

A workerProxy are a kind of plural-named scenery thing. A workerProxy has a list of text called WPLIST. 

Section 5 - People

A worker is a kind of person. The description of a worker is "Like all the other employees, [if the number of workers in the elevator is greater than one]these stare[otherwise]this one stares[end if] distractedly into space." Understand "employee" or "worker" or "employees" or "workers" as a worker. 

A gamer is a kind of privately-named person. The description of the gamer is "Not so different from the way you hope you don[apostrophe]t appear to others." Understand "visitor" or "gamer" or "visitors" or  "gamer" or "gamers" as a gamer. 

Section 6 - Player properties

The player has a number called pogoLevel.
The player has a number called XP.
The player has a number called distance walked. Distance walked is 0.
The player has a color called team color. The team color of the player is usually none.
The player has a number called pogoBallsCarried.  pogoBallsCarried is 5.
The player has a number called pogoChumsCarried. pogoChumsCarried is 2.
The player has a number called pogoMethsCarried. pogoMethsCarried is 0.
The player has a number called pogoEggsCarried. pogoEggsCarried is 0. [if any, add to when play begins]
The player has a number called pogoIncenseCarried. pogoIncenseCarried is 0 [if any, add to when play begins].
The player has a room called previousRoom. previousRoom is the void.
The player has a number called the TeamColorPrompt. The TeamColorPrompt is 0.
The player has a health state called healthiness. The healthiness of the player is healthy.
The player has a truth state called superuser. The superuser of the player is false.
The player is lit. [light emitting, not hammered - to make sure that the player can see when in containers]
The player has a number called topLevel. The topLevel of the player is 0.
The player has a truth state called diedAtBorder. The diedAtBorder of the player is false.
The player has a number called pogomenCaptured. The pogomenCaptured of the player is 0.
The player has a number called pogomenDefeated. The pogomenDefeated of the player is 0.
The player has a truth state called deniedTemptationOnce. The deniedTemptationOnce of the player is true.
The player has a truth state called expertMode. The expertMode of the player is false.
The player has a truth state called hasPogodexed. The hasPogodexed of the player is false.

Instead of looking under the player:
	say "You find your feet."
	
Instead of searching the player:
	try taking inventory.
	
Instead of attacking the player:
	say "You undermine yourself with a mixture of anxiety, self-doubt, and pity."
	
Instead of opening the player:
	say "You open yourself to the wonder of the universe.[paragraph break]Finding none, you close yourself back up."
	
Instead of licking the player:
	say "You lick your lips."
	
Instead of emptying the player:
	say "You feel inhibited, as if someone is watching. You can hold it for now."
	
Section 7 - BackDrops

A catTopDrop is a kind of backdrop. catTopDrops are privately-named. 
An Awarddrop is a kind of backdrop.

Chapter Declare Constants

[Game Setup]
INITIAL_POGOLEVEL is always 3.
INITIAL_XP is always 460.
MIN_TOWN_POGOSTOPS is always 6.
MAX_TOWN_POGOSTOPS is always 9.
MIN_TOWN_GYMS is always 2.
MAX_TOWN_GYMS is always 4.
MIN_INITIAL_SPAWN is always 3.
MAX_INITIAL_SPAWN is always 5.
SPAWN_PERCENT_WOUNDED is always 25. [out of 100]

[Pogoland Setup]
MIN_PL_POGOSTOPS is always 2.
MAX_PL_POGOSTOPS is always 4.
EXPERT_MIN_PL_POGOSTOPS is always 2.
EXPERT_MAX_PL_POGOSTOPS is always 3.

[Ways of gaining XP]
MEDAL_XP_VALUE is always 10.
EVOLUTION_XP_VALUE is always 20.
POGOSTOP_XP_VALUE is always 10.
CAPTURE_XP_VALUE is always 30.
INCENSE_XP_VALUE is always 10.
TRANSFER_XP_VALUE is always 20.
GYM_VICTORY_XP_VALUE is always 300.
GYM_LOSS_XP_VALUE is always 50.
CHUMMING_XP_VALUE is always 10.
EGG_HATCH_XP_VALUE is always 25.
STREETFIGHT_XP_VALUE is always 100.
NEW_POGODEX_XP_VALUE is always 30.

[likelihood of encountering a pogoman is encounter_value + incense effect out of 100]
INCENSE_EFFECT_VALUE is always 25.

PREPOGO_ENCOUNTER_VALUE is always 10.[before pogoland]
EXPERT_PREPOGO_ENCOUNTER_VALUE is always 10.

POGO_ENCOUNTER_VALUE is always 15.[pogoland]
EXPERT_POGO_ENCOUNTER_VALUE is always 30.

[Difficulty for capturing items with pogoBall, always out of 100; lower is harder]
CAPTURE_EVOL1_DIFFICULTY is always 70.
CAPTURE_EVOL2_DIFFICULTY is always 45.
CAPTURE_EVOL3_DIFFICULTY is always 25.
EXPERT_CAPTURE_EVOL1_DIFFICULTY is always 50.
EXPERT_CAPTURE_EVOL2_DIFFICULTY is always 30.
EXPERT_CAPTURE_EVOL3_DIFFICULTY is always 10.

[Combat]
OFFENSIVE_RATING_EVO1 is always 30.[ratings used for gym and street combat]
OFFENSIVE_RATING_EVO2 is always 50.
OFFENSIVE_RATING_EVO3 is always 70.
WOUNDED_PENALTY is always 25.[both attacker and defender pogomen at disadvantage when wounded]
FIGHT_RANDOMNESS is always 40.

SPECIAL_ATTACK_XP_COST is always 500.
EXPERT_SPECIAL_ATTACK_XP_COST is always 1000.

MUSK_DEF is always 80.
EXPERT_MUSK_DEF is always 90.

[Capturing the Player in the Giant PogoBall]
DESIRE_TO_CAPTURE_INCREMENT is always 10. [tendency to capture rather than attack]
CAPTURE_RANDOMNESS is always 80.
CAPTURE_THRESHOLD is always 125. [when desire + randomness > threshold, pogoman decides to try a capture]

[Magical Items]
HAT_EFFECT is always 15.[Baseball Cap of Pogomastery affects both capture and combat]

[TIMING]
POGOSTOP_LOCKOUT_DURATION is always 10. [Rooms in Village and Pogoland have a pogostop timestamp]
EXPERT_POGOSTOP_LOCKOUT_DURATION is always 10.

INCENSE_DURATION is always 10.
POGOMAN_LOCKOUT_DURATION is always 5.[no pogomen for first rounds of game to cut down on text]
DAIS_DELAY_DURATION is always 15. [if player hasn't noticed dais by this time, it notices itself]
DESOLATION_DELAY_DURATION is always 20. [delay for player to realize loneliness in Pogoland]
GYM_OVERTHROW_DURATION is always 5. [how long does gym remain captured]

[Oswaldo Clue Bats]
GREEN_CLUEBAT_TURNS is always 50.
BLUE_CLUEBAT_TURNS is always 40.
RED_CLUEBAT_TURNS is always 40.

[Inventory]
POGOMEN_INVENTORY_LIMIT is always 100.
EXPERT_POGOMEN_INVENTORY_LIMIT is always 25.

POGOITEM_INVENTORY_LIMIT is always 100.
EXPERT_POGOITEM_INVENTORY_LIMIT is always 25.

[Advancement Requirements]
GYM_ENTRY_LEVEL_REQUIREMENT is always 4.
TOWER_XP_REQUIREMENT is always 1500.
TOWER_TROPHY_REQUIREMENT is always 3.
TOWER_LEVEL_REQUIREMENT is always 5.
TOWER_MEDAL_REQUIREMENT is always 10.

[Invariant Lists]
The list of colors called CORE_TEAM_COLORS is always {Teal, Chartreuse, Alizarin Crimson}.
The list of colors called EXTENDED_TEAM_COLORS is always {Viridian, Papayawhip}.
The list of numbers called PEDOMETER_AWARD_DISTANCES is always {10, 30, 100, 300, 1000, 3000, 10000, 30000}.

Chapter Declare Global Variables


[booleans]
SUPPRESSMEDALS is a truth state that varies. SUPPRESSMEDALS is false.
The BLOCKSTAGEBUSINESSFLAG is a truth state that varies. The BLOCKSTAGEBUSINESSFLAG is false.
The BLOCKPOGOMANFLAG is a truth state that varies. The BLOCKPOGOMANFLAG is false.
FIRSTTHROW is truth state that varies. FIRSTTHROW is true.
GAME_SAVED is a truth state that varies. GAME_SAVED is false.
GAME_UNDONE is a truth state that varies. GAME_UNDONE is false.

[numbers]
TURNCOUNTER is a number that varies. TURNCOUNTER is 0.

[lists - because Jack loves lists]
POGOSTOPLIST is a list of rooms that varies.
GYMLIST is a list of rooms that varies.
MEDALLIST is a list of text that varies.
TROPHYLIST is a list of text that varies.
POGODEXLIST is a list of pogotypes that varies.
HEADING is a list of text that varies. HEADING is {"N", "NE", "E", "SE", "S", "SW", "W", "NW"}.

[Mode-dependent parameters]
MODE_MIN_PL_POGOSTOPS is a number that varies.
MODE_MAX_PL_POGOSTOPS is a number that varies.
MODE_PREPOGO_ENCOUNTER_VALUE is a number that varies.
MODE_POGO_ENCOUNTER_VALUE is a number that varies.
MODE_CAPTURE_EVOL1_DIFFICULTY is a number that varies.
MODE_CAPTURE_EVOL2_DIFFICULTY is a number that varies.
MODE_CAPTURE_EVOL3_DIFFICULTY is a number that varies.
MODE_SPECIAL_ATTACK_XP_COST is a number that varies.
MODE_MUSK_DEF is a number that varies.
MODE_POGOSTOP_LOCKOUT_DURATION is a number that varies.
MODE_POGOMEN_INVENTORY_LIMIT is a number that varies.
MODE_POGOITEM_INVENTORY_LIMIT is a number that varies.

Chapter Pogo-Machinery

Section 1 - Pogo Items

[These 'kinds' each have a platonic forms in the Void which we dynamically clone as needed during run-time.]

A pogothing is a kind of thing.

A PogoBall-kind is a kind of pogothing.  The description is "It[apostrophe]s a cheap mass-produced red and white plastic ball[one of]. You capture pogomen by throwing pogoBalls at them[or][stopping].".  Understand "ball" or "balls" as a pogoBall-kind.  The plural of pogoBall-kind is PogoBalls. 

A PogoChum-kind is a kind of pogothing.  The description is "[if Exploring the Tower has ended]Rancid bits of chopped up… something[otherwise]On your phone, pogoChum appears as a glistening bit of heart-shaped meat. Pogomen seem to enjoy them and you gain experience points by feeding pogoChum to them[end if]."  Understand "chum" as a pogoChum-kind.  The plural of pogoChum-kind is PogoChums.

A PogoMeth-kind is a kind of pogothing.  The description is "You[apostrophe]re not sure what[apostrophe]s in it, but it seems to make pogomen feel better, at least until withdrawal sets in. Use pogoMeth to [italic type]heal[roman type] (or at least mask the pain for a while of) wounded pogomen."  Understand "meth" as a pogoMeth-kind.  The plural of pogoMeth-kind is PogoMeths. 

A PogoEgg-kind is a kind of pogothing. The description is "An unhatched pogoman egg ([italic type]drop[roman type] the egg to hatch it)." Understand "egg" as a pogoEgg-kind. The plural of pogoEgg-kind is pogoEggses.

A PogoIncense-kind is a kind of pogothing. The description is "A hockey-puck shaped plastic disc. Burn the incense to activate it." Understand "disc" or "incense" as pogoIncense-Kind. The plural of pogoIncense-kind is incense.

Instead of pushing pogoMeth when Exploring the Tower has ended:
	say "You are a user only; not in retail."
	
Instead of licking pogoMeth:
	try eating pogoMeth.

To decrement (item - a pogothing) count:
	let N be 0;
	if item is:
		-- pogoBall:
			decrease pogoBallsCarried of the player by one;
			let N be pogoBallsCarried of the player;
		-- pogoChum:
			decrease pogoChumsCarried of the player by one;
			let N be pogoChumsCarried of the player;
		-- pogoMeth:
			decrease pogoMethsCarried of the player by one;
			let N be pogoMethsCarried of the player;
		-- pogoIncense:
			decrease pogoIncenseCarried of the player by one;
			let N be pogoIncenseCarried of the player;
		-- pogoEgg:
			decrease pogoEggsCarried of the player by one;
			let N be pogoEggsCarried of the player;
	if N is:
		-- 1:
			say "You have only one [item] left![paragraph break]";
		-- 0:
			move the item to the Void;
			say "You have now run out of [printed plural name of the item]![paragraph break]";
		-- otherwise:
			say "You now have ";
			say  N in words;
			say " [printed plural name of the item] left.[paragraph break]"

Instead of dropping a pogothing (called the item):
	If the item is:
		-- pogoBall:
			say "The PogoBall drops to the ground, spins confusedly in search of a target, gives up, then blinks and disappears.";
			say line break;
			decrement pogoBall count;
		-- pogoIncense:
			say "You throw away a pogoIncense.";
			say line break;
			decrement pogoIncense count;
		-- pogoChum:
			if Exploring the Tower has ended:
				say "The moldy chunk of meat hits the ground with a wet smack and then melts[one of]. Creepy[or][stopping].";
			otherwise:
				say "You throw away a piece of pogoChum.";
			say line break;
			decrement pogoChum count;
		-- pogoMeth:
			if Exploring the Tower has ended:
				say "You totally drop some pogoMeth.";
				pogoMethEffect;
			otherwise:
				if the location of the player contains the attackerPogoman:
					try giving pogoMeth to the attackerPogoman;
				otherwise:
					say "You throw away a vial of pogoMeth[one of].[paragraph break]Kids: Just say [quotation mark]No![quotation mark] to pogoMeth[or][stopping].";
					say line break;
					decrement pogoMeth count;
		-- pogoEgg:
			choose a random row in the table of Evolution;
			let P be a pogotype;
			if a random chance of 2 in 10 succeeds:
				let P be the Ev2 entry;
			otherwise:
				let P be the original entry;
			sort the Table of Inventory in PogoName order;
			choose row MODE_POGOMEN_INVENTORY_LIMIT in the Table of Inventory;
			if there is a pogoName entry:
				say "Your pogoman inventory is already full[one of]. Hang onto the egg for later[or][stopping].";								
			otherwise:	
				repeat with N running from 1 to MODE_POGOMEN_INVENTORY_LIMIT:	
					choose row N in the Table of Inventory;
					if there is no pogoName entry :
						let PP be "[P]" in title case;
						say "A baby [PP] pops out[if Around The Town is happening]! It is immediately transferred to your stock of captive pogomen[otherwise]! Hungry for calcium (as all pogomen are at birth), it devours the broken shell, imprints on you like a baby duckling, and jumps immediately into your stock[end if].[paragraph break]";
						now pogoName entry is P;
						now wounded entry is false;						
						AwardXP EGG_HATCH_XP_VALUE;
						decrement pogoEgg count;
						if P is not listed in POGODEXLIST:
							add a P to the pogodex;
						break.
			
			
Instead of putting a pogothing (called the item) on something:
	if Exploring The Tower has ended:
		try dropping the item;
	Otherwise:
		say "[notReal]."
	
[may need to disable the futile to throw things at inanimate objects rule]

Instead of throwing a pogothing (called the item) at something (called the target):
	if the item is the pogoBall:
		continue the action;
	otherwise:
		if Exploring The Tower has ended:
			try dropping the item;
		otherwise:	
			if the target is a pogoentity or target is the defenderPogoman or the target is the attackerPogoman:
				try dropping the item;
			otherwise:	
				say "[notReal]."
		
Instead of inserting a pogothing (called the item) into something:
	if Exploring The Tower has ended:
		try dropping the item;
	otherwise:
		say "[notReal]."
	
Instead of touching or pulling or pushing or rubbing or waving or squeezing or cutting or swinging or tasting or turning a pogothing when Exploring the Tower has not ended for the first time:
	say "[notReal].[paragraph break]";
	bestow "Harsh Reality".
	
	
Instead of touching or pulling or pushing or rubbing or waving or squeezing or cutting or swinging or tasting or turning a pogothing when Exploring the Tower has not ended:
	say "You can[apostrophe]t because it is just part of a game on your phone."
		
To say notReal:
	say "You can[apostrophe]t of course, because it is merely a virtual representation of a physical object in the Pogoman GO! game and has no material existence"
	
Instead of eating pogoChum:
	if Exploring the Tower has ended:
		say "[one of]It must be an acquired taste, because this time, it is not too bad[or]You find yourself rather enjoying pogoChum[or]This is some fine pogoChum[or]Musk is a genius! This stuff is awesome[or]Where has pogoChum been all your life. You can[apostrophe]t get enough[or]Mmm. PogoChum[stopping].";
		say line break;
		decrement pogoChum count;
	otherwise:
		try touching the pogoChum.			
				
Instead of eating pogoChum when Not In Kansas Anymore is happening for the first time:
	say "Hm. Kind of tasty, actually. Like sushi, but a bit more rangy.[paragraph break]";
	bestow "Best not to think about what you just put in your mouth";
	say line break;
	decrement pogoChum count.
	
Instead of eating the pogoBall:
	say "While red and round, they are not apples[one of]. This oral fixation is only going to get you in trouble[or][stopping]."
	
Instead of eating a pogoEgg:
	say "It[apostrophe]s not that kind of egg."
		
Section 2 - The Wonderful World of PogoMeth

Instead of eating PogoMeth when Not in Kansas Anymore is happening for the first time:
	say "You feel much better… but realize that pogoMeth has some side effects. The sky, for instance, sounds extraordinarily colorful.[paragraph break]";
	pogoMethEffect;
	bestow "Iatrogenically Induced Synesthesia".
	
Instead of eating PogoMeth:
	if Exploring the Tower has not ended:
		say "If only pogoMeth were real[one of]. Alas, it is only part of a game, and only useful for healing pogomen[or][stopping]!";
	otherwise:
		say "You munch down a pogoMeth[one of]. Not much on taste (but of course, that[apostrophe]s about to change anyhow)[or][stopping].[paragraph break]Instantly, you feel much better.[paragraph break]";
		pogoMethEffect.

	
Instead of taking pogoMeth when Not in Kansas Anymore is happening for the first time:
	say "You take one standard adult (which is questionable) dose.[paragraph break]";
	pogoMethEffect;
	bestow "Self-Medicating".
	
Instead of taking the pogoMeth when Not in Kansas Anymore is happening:
	say "You take one dose.[paragraph break]";
	pogoMethEffect.
	
To pogoMethEffect:
	decrement PogoMeth count;
	now the PogoMeth is trippy;
	the trip ends in five turns from now;
	repeat with N running from 1 to 2:
		if the healthiness of the player is greater than healthy:
			now the healthiness of the player is the health state before the healthiness of the player.
	
At the time when the trip ends:
	say "The mind-altering effects of the pogoMeth seem to have worn off.";
	now the PogoMeth is not trippy.
	
Instead of smelling when the PogoMeth is trippy for the first time:
	say "You are assaulted by the world of scents.[paragraph break]";
	bestow "Smell-O-Vision".
	
After tasting when the PogoMeth is trippy for the first time:
	say "[alteredTaste].[paragraph break]";
	bestow "Sorry, Charlie. Tasty Is Not The Goal".
	
After tasting when the PogoMeth is trippy:
	say "[alteredTaste]."
	
To say alteredTaste:
	say "Mmm. Tastes like [one of]chicken[or]Turkish Delight[or]marmalade[or]vegemite[or]motor oil[or]bile[or]jackfruit[or]grape juice[or]something your Aunt Marzipan might have cooked up[in random order]";
	
Instead of listening when the PogoMeth is trippy for the first time:
	say "You hear nothing but the rain.[paragraph break]";
	bestow "The Grab Your Gun and Bring In The Cat".
	
After examining when the PogoMeth is trippy for the first time:
	bestow "Reality Distortion Field Is Go".
	
After touching when the PogoMeth is trippy for the first time:
	say "[alteredTouch].[paragraph break]";
	bestow "This Touching Moment Brought To You By Hallmark".
	
After touching when the PogoMeth is trippy:
	say "[The noun] feels [one of]bumpy[or]squishy[or]ridged[or]wispy[or]feathery[or]sharp[or]velvety[or]creamy[or]cold[or]solid[in random order]."
	
To say alteredTouch:
	say "You touch [the noun] all over the place".
	
Section 3 - Incense

Instead of burning pogoIncense:
	If Around The Town is happening:
		say "You burn some virtual incense and a cloud of virtual incense smoke surrounds for a while[one of], attracting some admittedly virtual pogomen to you[or][stopping].";
		say line break;
		decrement the pogoIncense count;
		now the pogoIncense is ignited;
		Incense dissipates in INCENSE_DURATION turns from now;
	else if Exploring The Tower is happening:
		say "This is prohibited by Nyantech[apostrophe]s strict smoke-free workplace policy.";
	else:
		say "You light up some incense and are immediately engulfed in a thick cloud of sickeningly sweet smoke. With a bit of coughing, you wave it away, but the smell lingers for a while.";
		say line break;
		decrement the pogoIncense count;
		now the pogoIncense is ignited;
		Incense dissipates in INCENSE_DURATION turns from now.
	
At the time when Incense dissipates:
	say "The incense wears off[one of]; pogomen no longer find you quite so attractive[or][stopping].";
	now the pogoIncense is not ignited.
	
Instead of switching on pogoIncense:
	try burning the pogoIncense.
	

Section 4 - Pogostops

The pogostop is a backdrop. Understand "stop" or "signpost" or "pogo stop" as the pogostop.  The description of pogostop is "On your phone, a cartoon signpost with a picture of [the location]. To get goodies from the pogostop, spin it." The pogostop has a list of text called booty. 

After examining a pogostop for the first time:
	bestow "Stopped To Smell The Roses".

Definition: a quadroom is an okayInitialPogostopLocation if it is not Nyantech Entrance and it is not listed in POGOSTOPLIST and it is not in the Borderlands.

Definition: a room is an okayPogolandLocation if it is in Pogoland and it is not listed in POGOSTOPLIST and it is not fishing boat.

Definition: a room is pogoStopTargeted if it is listed in POGOSTOPLIST.

To distributeTownPogostops:
	repeat with N running from 1 to a random number from MIN_TOWN_POGOSTOPS  to MAX_TOWN_POGOSTOPS:
		add a random okayInitialPogostopLocation to POGOSTOPLIST;
	move the pogostop backdrop to all the pogoStopTargeted rooms.
	
To distributePogolandPogostops:
	now POGOSTOPLIST is {};
	repeat with N running from 1 to a random number from MODE_MIN_PL_POGOSTOPS to MODE_MAX_PL_POGOSTOPS:
		add a random okayPogolandLocation to POGOSTOPLIST;
	move the pogostop backdrop to all the pogoStopTargeted rooms. 
	
To say pogostopNotReal:
	say "You can[apostrophe]t. Pogostops are just pictures on your phone".
	
Instead of attacking a pogostop:
	try spinning the pogostop.
	
Instead of turning a pogostop:
	try spinning the pogostop.
	
Instead of pushing a pogostop:
	try spinning the pogostop.
	
Instead of pulling a pogostop:
	try spinning the pogostop.
	
Instead of doing something other than spinning or examining or attacking or pulling or pushing or turning with a pogostop when Around the Town has not ended for the first time:
	say "[pogostopNotReal].[paragraph break]";
	bestow "Get Real".
	
Instead of doing something other than spinning or examining or attacking or pulling or pushing or turning with a pogostop when Around the Town has not ended:
	say "[pogostopNotReal]."

	
Section 5 - Gyms

A gym is a backdrop. Understand "gym" as gym. The description of gym is "The [color of the location] gym appears on your phone as stacked floating rings." Understand "ring" or "rings" or "floating" as the gym. The gym has a truth state called firstWinFlag. The gym has a truth state called firstLossFlag. The firstWinFlag of the gym is false. The firstLossFlag of the gym is false. The gym has a room called mostRecentGym. The mostRecentGym is the void. The gym has a truth state called poorEtiquetteFlag. The poorEtiquetteFlag of the gym is false.

Instead of climbing the gym:
	say "You see no way to climb a building, which is merely an animated stack of floating rings in a game on your phone."

After examining the gym for the first time:
	bestow "We[apostrophe]ll Pump You Up!".

Understand "teal" as the gym when the player is in a quadroom and the color of the location is teal.
Understand "chartreuse" as the gym when the player is in a quadroom and  the color of the location is chartreuse.
Understand "alizarin crimson" as the gym when the player is in a quadroom and the color of the location is alizarin crimson.
Understand "alizarin" as the gym when the player is in a quadroom and the color of the location is alizarin crimson.
Understand "crimson" as the gym when the player is in a quadroom and the color of the location is alizarin crimson.
Understand "viridian" as the gym when the player is in a quadroom and the color of the location is viridian.
Understand "papayawhip" as the gym when the player is in a quadroom and the color of the location is papayawhip.
Understand "unbleached titanium" as the gym when the player is in a quadroom and the color of the location is unbleached titanium.
Understand "unbleached" as the gym when the player is in a quadroom and the color of the location is unbleached titanium.
Understand "titanium" as the gym when the player is in a quadroom and the color of the location is unbleached titanium.

Definition: A quadroom is an okayGymLocation if it is an okayInitialPogostopLocation and it is not listed in GYMLIST.

Definition: a room is gymTargeted if it is listed in GYMLIST.

To paintTheTown:
	repeat with N running through quadrooms:
		let R be a random number between 1 and the number of entries in CORE_TEAM_COLORS;
		now the color of N is entry R in CORE_TEAM_COLORS.
		
To distributeTownGyms:
	paintTheTown;
	repeat with N running from 1 to a random number from MIN_TOWN_GYMS to MAX_TOWN_GYMS:
		add a random okayGymLocation to GYMLIST;
	move the gym backdrop to all the gymTargeted rooms.
	
Instead of examining a gym for the first time:
	say "A stack of glowing, colored rings that float in the air. To fight in the gym, you must first enter it.[paragraph break]";
	bestow "Noticed A Gym".
	
Instead of entering a gym when the pogoLevel of the player is less than GYM_ENTRY_LEVEL_REQUIREMENT for the first time:
	let L be the goalXP after level (GYM_ENTRY_LEVEL_REQUIREMENT - 1);
	let D be L minus the xp of the player;
	say "You can[apostrophe]t fight in a gym until you reach level [GYM_ENTRY_LEVEL_REQUIREMENT in words]. It has something to do with your creditworthiness[one of]. It looks like you are about [D] XP short of level [GYM_ENTRY_LEVEL_REQUIREMENT][or][stopping].[paragraph break]";
	bestow "Dealt With A Minor Rebuke".
	
Instead of entering a gym when the pogoLevel of the player is less than GYM_ENTRY_LEVEL_REQUIREMENT:
	say "A bouncer pogoman peers out of the gym through a narrow, sliding window and says, [quotation mark]Don[apostrophe]t nobody get in what ain[apostrophe]t got to level [GYM_ENTRY_LEVEL_REQUIREMENT in words], so [one of]beat it[or]take off[or]get yourself gone[or]get lost[or]take a powder[or]hit the road, sunshine[or]shove off[or]vamoose[or]take a hike[in random order].[quotation mark][paragraph break]"
	
Instead of entering a gym when the pogoLevel of the player is at least GYM_ENTRY_LEVEL_REQUIREMENT for the first time:
	say "The game pauses pensively.[paragraph break]The screen changes to the interior of the gym and the camera pans. Then everything stops. The game has glitched.";
	freeze the phone.
	
Instead of entering a gym when the pogoLevel of the player is at least GYM_ENTRY_LEVEL_REQUIREMENT for the second time:
	say "The scene shifts fluidly to the interior of the gym. [if the color of the location is the team color of the player]Your team (Team [team color of the player])[otherwise]The [color of the location] team[end if] has put forward a formidable Idiotti, but you think you can take him. With a practiced thumb, you select your strongest pogoman and send it into combat.[paragraph break]The camera angle spins. Your champion bounces back and forth, judging the enemy and preparing its attack. There[apostrophe]s a countdown and the world [quotation mark]GO[quotation mark] zooms towards you.[paragraph break]Zooms, well, moves reasonably quickly. No, slowly now. It[apostrophe]s stopped. It is just hanging there. White, inanimate letters fill your screen. You can see your pogoman still jinking about like a fool through the [quotation mark]O[quotation mark] in [quotation mark]GO[quotation mark].[paragraph break]Maybe it will keep going if you wait a minute.[paragraph break]No. It[apostrophe]s not going anywhere.[paragraph break]It[apostrophe]s stuck. Your phone has crashed.";
	freeze the phone.
	
Instead of entering a gym when the pogoLevel of the player is at least GYM_ENTRY_LEVEL_REQUIREMENT for the third time:
	sort the Table of Inventory in wounded order;
	if there is no pogoName in row 1 of the Table of Inventory:
		say "You are kicked out of the gym because you don[apostrophe]t have any pogomen. How embarrassing.[paragraph break]";
		bestow "Friendless";
		stop the action;
	otherwise:
		let P be "[pogoName in row 1 of the Table of Inventory]";
		let PP be P in Title Case;
		say "The exterior of the gym dissolves and your [PP] faces off against an obviously inferior opponent: a low-level Tinkelwaif. The Tinkelwaif looks like it has been through hell and back in this gym. Its fur is matted and tufts are missing. It stares ahead with wide, emotionless eyes, ready to endure yet another senseless beating for the honor of the gym. During the countdown it swigs deeply from a hip flask and shakes its scar-covered head to focus, showering the gym in tinkeldust. The countdown finishes, and your [PP] leaps across the arena, claws bared, fangs down, sure of an easy kill.[paragraph break]Turn after turn, your [PP] rips into the frail Tinkelwaif with highly effective attacks; its special move sends the hopelessly outclassed Tinkelwaif to the mat. Its life energy trickles away and you sense victory a mere moment away.[paragraph break]And then the HP counter holds at one.[paragraph break]Through a curtain of tears and blood, the Tinkelwaif smiles vindictively and climbs back to its feet, still hanging onto your [PP] for support. You [PP] hasn[apostrophe]t noticed. It is still flinging attack after attack, but doing no damage.[paragraph break]Now it is your [PP] who is flagging. Its attacks come slower and slower. It fights a futile battle. Frothy blood escapes its lips as it collapses to the ground and is kicked cruelly by the opponent -- it looks imploringly at you, unable to understand how the tables have turned. The victorious Tinkelwaif pushes your [PP] to the edge of the gym platform and slow claps for itself as the empty shell of a pogoman plunges to the ground.[paragraph break]You console yourself that at least the game didn[apostrophe]t freeze.[paragraph break]";
	wait for any key;
	say "And then the game freezes.";
	freeze the phone.
	
Instead of entering a gym when the pogoLevel of the player is at least GYM_ENTRY_LEVEL_REQUIREMENT for more than the third time:
	sort the Table of Inventory in wounded order;
	sort the Table of Inventory in pogoName order;
	if there is no pogoName in row 1 of the Table of Inventory:
		say "You are kicked out of the gym because you don[apostrophe]t have any pogomen.[paragraph break]";
		if the poorEtiquetteFlag of the gym is false:
			bestow "Poor Gym Etiquette";
			now the poorEtiquetteFlag of the gym is true;
		stop the action;
	otherwise:
		let LAST be 100;
		let SELECTED be 1;
		let DONE be false;
		repeat with N running from 1 to the number of rows in Table of Inventory plus one:
			if there is no pogoName in row N of the Table of Inventory:
				let LAST be N minus 1;
				break;
		if LAST is 0:
			let LAST be 1;
		repeat with N running from 1 to LAST:[choose high to low evolution, the same but with wounded]
			if the pogoName in row N of the Table of Inventory is third level and the wounded in row N of the Table of Inventory is false:
				let SELECTED be N;
				let DONE be true;
				break;
		if DONE is false:
			repeat with N running from 1 to LAST:
				if the pogoName in row N of the Table of Inventory is second level and the wounded in row N of the Table of Inventory is false:
					let SELECTED be N;
					let DONE be true;
					break;
		if DONE is false:
			repeat with N running from 1 to LAST:
				if the pogoName in row N of the Table of Inventory is first level and the wounded in row N of the Table of Inventory is false:
					let SELECTED be N;
					let DONE be true;
					break;
		if DONE is false:
			repeat with N running from 1 to LAST:
				if the pogoName in row N of the Table of Inventory is third level:
					let SELECTED be N;
					let DONE be true;
					break;
		if DONE is false:
			repeat with N running from 1 to LAST:
				if the pogoName in row N of the Table of Inventory is second level:
					let SELECTED be N;
					let DONE be true;
					break;
		if DONE is false:
			let SELECTED be 1;
		let CHOSEN be the pogoName in row SELECTED of the Table of Inventory;
		let CHOSEN-W be the wounded in row SELECTED of the Table of Inventory;
		let P be a random pogotype;
		let P-DEF be 0;
		if P is first level:
			let P-DEF be OFFENSIVE_RATING_EVO1;
		else if P is second level:
			let P-DEF be OFFENSIVE_RATING_EVO2;
		else:
			let P-DEF be OFFENSIVE_RATING_EVO3;
		let P-DEF be P-DEF plus a random number from 0 to FIGHT_RANDOMNESS;
		let CHOSEN-DEF be 0;
		if CHOSEN is first level:
			let CHOSEN-DEF be OFFENSIVE_RATING_EVO1;
		else if CHOSEN is second level:
			let CHOSEN-DEF be OFFENSIVE_RATING_EVO2;
		else:
			let CHOSEN-DEF be OFFENSIVE_RATING_EVO3;
		if the player wears the Baseball Cap of Pogomastery:
			let CHOSEN-DEF be CHOSEN-DEF plus HAT_EFFECT;
		let CHOSEN-DEF be CHOSEN-DEF plus a random number from 0 to FIGHT_RANDOMNESS;
		if CHOSEN-W is true:
			let CHOSEN-DEF be CHOSEN-DEF minus WOUNDED_PENALTY;
		let PP be "[P]" in Title Case;
		let CCHOSEN be "[CHOSEN]" in Title Case;
		say "You enter the [color of the location] Gym and face off against the [PP] in the other corner of the ring. Applying your expert knowledge as a Level [pogolevel of the player] Pogomaster, you dramatically shout, [quotation mark][CCHOSEN], I choose you![quotation mark][paragraph break]Your [CCHOSEN] and the opposing [PP] battle intensely for a few minutes, and the match ends with [if P-DEF is greater than CHOSEN-DEF]the enemy [PP][otherwise]your [CCHOSEN][end if] [one of]squeezing the life out of[or]obliterating[or]wiping the floor with[or]pulverizing[or]smashing[or]trashing[or]throttling[or]annihilating[in random order] [if P-DEF is greater than CHOSEN-DEF]your [CCHOSEN][otherwise]the enemy [PP][end if]. [if P-DEF is greater than CHOSEN-DEF]The enemy [PP][otherwise]Your [CCHOSEN][end if] gloats briefly over the inanimate corpse of its opponent, which is transferred to the professor. Moments later the [if P-DEF is greater than CHOSEN-DEF]challenger [PP][otherwise]your [CCHOSEN][end if] limps back to its ball and is returned to [if P-DEF is greater than CHOSEN-DEF]your opponent[otherwise]you[end if].";
		choose row SELECTED in the Table of Inventory;
		say line break;
		if P-DEF is greater than CHOSEN-DEF:
			blank out the whole row;
			if firstLossFlag of the gym is false:
				say "You lost (well, it was more traumatic for your pogoman, but transitively, at least, you lost). The good news is that you still gain some experience![paragraph break]";
				awardXP GYM_LOSS_XP_VALUE;
				bestow "Their Pain; Your Gain";
				now firstLossFlag of the gym is true;
			otherwise:
				say "Your pogoman lost, but you still gain valuable experience.[paragraph break]";
				awardXP GYM_LOSS_XP_VALUE;
		otherwise:
			now the wounded entry is true;
			if firstWinFlag of gym is false:
				say "You win! Yes, your pogoman is mildly injured, but you gain a heap of experience, and more importantly, a coveted Gym Trophy![paragraph break]To see a list of your trophies, use the command [italic type]examine trophies[roman type].[paragraph break]";
				now firstWinFlag of gym is true;
			otherwise:			
				say "Your pogoman won!  You receive a Gym Trophy![paragraph break]";
			awardXP GYM_VICTORY_XP_VALUE;
			let T be "Your [CCHOSEN] victorious over a [color of the location] [PP]";
			increase the pogomenDefeated of the player by 1;
			add T to TROPHYLIST;
			now the color of the location of the player is the team color of the player;
			now the mostRecentGym of the gym is the location of the player;
			the gym is overthrown in 5 turns from now.
			
At the time when the gym is overthrown:
	while the color of the mostRecentGym of the gym is the team color of the player:
		let R be a random number between 1 and the number of entries in CORE_TEAM_COLORS;
		now the color of the mostRecentGym of the gym is entry R in CORE_TEAM_COLORS.
	
Instead of smelling the gym:
	say "It smells like old sneakers worn by a wet dog."			
			
				
Section 6 - Pogomen

[There is only ONE pogoman -- he's either in the Void or in the current room, with one of many temporary names.
 When the pogoman is 'captured', we simply move him back to the Void and fill out a row in an Inventory table to show the acquisition. The player can only deal with the pogoman in front of him/her.]

A pogoentity is a kind of neuter animal.  

[do not need to record evolution level - it is implicit from the table of evolution. Pogomen are wild until captured, after that, they take on the team color (important in pogoland, where they defend a position)]

Understand "choose [pogotype]" as inventoryDropping.
Understand "choose [tealToken] [pogotype]'" as inventoryDropping.
Understand  "choose [chartreuseToken] [pogotype]" as inventoryDropping.
Understand "choose [alizarinCrimsonToken] [pogotype]" as inventoryDropping.
Understand "choose [viridianToken] [pogotype]" as inventoryDropping.
Understand "choose [papayawhipToken] [pogotype]" as inventoryDropping.
Understand "choose [unbleachedTitaniumToken] [pogotype]" as inventoryDropping.
Understand "choose loyal [pogotype]" as InventoryDropping.
	  
Pogoentity has a pogotype called type. A Pogoentity can be injured. A pogoentity is usually not injured. A pogoentity can be wild. A pogoentity is usually wild. 

The defenderPogoman is a privately-named pogoentity. The description of defenderPogoman is "[defendingPogomanDescription].". The printed name of defenderPogoman is "[defendingPogomanName]". The printed plural name of defenderPogoman is "[defendingPogomanName]s". Understand "wounded" or "injured" as the defenderPogoman when the defenderPogoman is injured. The defenderPogoman has a number called timesEvolved. The timesEvolved of the defenderPogoman is 0.

To say defendingPogomanDescription:
	say "[pogoDex data for type of defenderPogoman]";
	if the defenderPogoman is injured:
		say ". This ";
		let D be the type of defenderPogoman;
		say "[D]" in title case;
		say " is wounded".	

To say defendingPogomanName:
	if the defenderPogoman is injured:
		say "wounded ";
	let T be the team color of the player;
	say "[T]" in lower case;
	say " ";
	let D be the type of defenderPogoman;
	say "[D]" in title case.

The attackerPogoman is a privately-named pogoentity. The description of attackerPogoman is "[pogoDex data for type of attackerPogoman][if the attackerPogoman is injured]. This [type of attackerPogoman] is wounded[end if].". The printed name of attackerPogoman is "[attackingPogomanName]". The printed plural name of attackerPogoman is "[attackingPogomanName]s". Understand "wounded" or "injured" as the attackerPogoman when the attackerPogoman is injured. The attackerPogoman has a number called desire to capture. The desire to capture of the attackerPogoman is 0. 

To say attackingPogomanName:
	let T be "[type of attackerPogoman]" in title case;
	say "[if the attackerPogoman is injured]wounded [end if][if Not in Kansas Anymore is happening]attacking[otherwise]wild[end if] [T]".

Instead of taking a pogoentity:
	say "You'll have to throw a PogoBall at it to capture it!".
		
Understand "edator" as attackerPogoman when the type of attackerPogoman is edator.
Understand "edator" as the defenderPogoman when the type of defenderPogoman is edator.
Understand "vicore" as attackerPogoman when the type of attackerPogoman is vicore.
Understand "vicore" as the defenderPogoman when the type of defenderPogoman is vicore.
Understand "emak" as attackerPogoman when the type of attackerPogoman is emak.
Understand "emak" as the defenderPogoman when the type of defenderPogoman is emak.
Understand "plaigrhat" as attackerPogoman when the type of attackerPogoman is plaigrhat.
Understand "plaigrhat" as the defenderPogoman when the type of defenderPogoman is plaigrhat.
Understand "vermonac" as attackerPogoman when the type of attackerPogoman is vermonac.
Understand "vermonac" as the defenderPogoman when the type of defenderPogoman is vermonac.
Understand "rodentikor" as attackerPogoman when the type of attackerPogoman is rodentikor.
Understand "rodentikor" as the defenderPogoman when the type of defenderPogoman is rodentikor.
Understand "skwerl" as attackerPogoman when the type of attackerPogoman is skwerl.
Understand "skwerl" as the defenderPogoman when the type of defenderPogoman is skwerl.
Understand "arborrhat" as attackerPogoman when the type of attackerPogoman is arborrhat.
Understand "arborrhat" as the defenderPogoman when the type of defenderPogoman is arborrhat.
Understand "nutellakin" as attackerPogoman when the type of attackerPogoman is nutellakin.
Understand "nutellakin" as the defenderPogoman when the type of defenderPogoman is nutellakin.
Understand "cheezipouf" as attackerPogoman when the type of attackerPogoman is cheezipouf.
Understand "cheezipouf" as the defenderPogoman when the type of defenderPogoman is cheezipouf.
Understand "ogratic" as attackerPogoman when the type of attackerPogoman is ogratic.
Understand "ogratic" as the defenderPogoman when the type of defenderPogoman is ogratic.
Understand "cheezelord" as attackerPogoman when the type of attackerPogoman is cheezelord.
Understand "cheezelord" as the defenderPogoman when the type of defenderPogoman is cheezelord.
Understand "snorepak" as attackerPogoman when the type of attackerPogoman is snorepak.
Understand "snorepak" as the defenderPogoman when the type of defenderPogoman is snorepak.
Understand "apneapod" as attackerPogoman when the type of attackerPogoman is apneapod.
Understand "apneapod" as the defenderPogoman when the type of defenderPogoman is apneapod.
Understand "seepap" as attackerPogoman when the type of attackerPogoman is seepap.
Understand "seepap" as the defenderPogoman when the type of defenderPogoman is seepap.
Understand "rokabil" as attackerPogoman when the type of attackerPogoman is rokabil.
Understand "rokabil" as the defenderPogoman when the type of defenderPogoman is rokabil.
Understand "jazzahand" as attackerPogoman when the type of attackerPogoman is jazzahand.
Understand "jazzahand" as the defenderPogoman when the type of defenderPogoman is jazzahand.
Understand "grunjturd" as attackerPogoman when the type of attackerPogoman is grunjturd.
Understand "grunjturd" as the defenderPogoman when the type of defenderPogoman is grunjturd.
Understand "agnostator" as attackerPogoman when the type of attackerPogoman is agnostator.
Understand "agnostator" as the defenderPogoman when the type of defenderPogoman is agnostator.
Understand "beeleever" as attackerPogoman when the type of attackerPogoman is beeleever.
Understand "beeleever" as the defenderPogoman when the type of defenderPogoman is beeleever.
Understand "zealocanth" as attackerPogoman when the type of attackerPogoman is zealocanth.
Understand "zealocanth" as the defenderPogoman when the type of defenderPogoman is zealocanth.
Understand "moldimug" as attackerPogoman when the type of attackerPogoman is moldimug.
Understand "moldimug" as the defenderPogoman when the type of defenderPogoman is moldimug.
Understand "funjifut" as attackerPogoman when the type of attackerPogoman is funjifut.
Understand "funjifut" as the defenderPogoman when the type of defenderPogoman is funjifut.
Understand "zhokkidge" as attackerPogoman when the type of attackerPogoman is zhokkidge.
Understand "zhokkidge" as the defenderPogoman when the type of defenderPogoman is zhokkidge.
Understand "seeduino" as attackerPogoman when the type of attackerPogoman is seeduino.
Understand "seeduino" as the defenderPogoman when the type of defenderPogoman is seeduino.
Understand "weeduino" as attackerPogoman when the type of attackerPogoman is weeduino.
Understand "weeduino" as the defenderPogoman when the type of defenderPogoman is weeduino.
Understand "weedowhak" as attackerPogoman when the type of attackerPogoman is weedowhak.
Understand "weedowhak" as the defenderPogoman when the type of defenderPogoman is weedowhak.
Understand "iddi" as attackerPogoman when the type of attackerPogoman is iddi.
Understand "iddi" as the defenderPogoman when the type of defenderPogoman is iddi.
Understand "iddiotto" as attackerPogoman when the type of attackerPogoman is iddiotto.
Understand "iddiotto" as the defenderPogoman when the type of defenderPogoman is iddiotto.
Understand "drumpf" as attackerPogoman when the type of attackerPogoman is drumpf.
Understand "drumpf" as the defenderPogoman when the type of defenderPogoman is drumpf.
Understand "phlogistomander" as attackerPogoman when the type of attackerPogoman is phlogistomander.
Understand "phlogistomander" as the defenderPogoman when the type of defenderPogoman is phlogistomander.
Understand "pyromelion" as attackerPogoman when the type of attackerPogoman is pyromelion.
Understand "pyromelion" as the defenderPogoman when the type of defenderPogoman is pyromelion.
Understand "arsonizard" as attackerPogoman when the type of attackerPogoman is arsonizard.
Understand "arsonizard" as the defenderPogoman when the type of defenderPogoman is arsonizard.
Understand "peekatyou" as attackerPogoman when the type of attackerPogoman is peekatyou.
Understand "peekatyou" as the defenderPogoman when the type of defenderPogoman is peekatyou.
Understand "pokeatyou" as attackerPogoman when the type of attackerPogoman is pokeatyou.
Understand "pokeatyou" as the defenderPogoman when the type of defenderPogoman is pokeatyou.
Understand "pukeatyou" as attackerPogoman when the type of attackerPogoman is pukeatyou.
Understand "pukeatyou" as the defenderPogoman when the type of defenderPogoman is pukeatyou.
Understand "amporb" as attackerPogoman when the type of attackerPogoman is amporb.
Understand "amporb" as the defenderPogoman when the type of defenderPogoman is amporb.
Understand "jowlball" as attackerPogoman when the type of attackerPogoman is jowlball.
Understand "jowlball" as the defenderPogoman when the type of defenderPogoman is jowlball.
Understand "orbowatt" as attackerPogoman when the type of attackerPogoman is orbowatt.
Understand "orbowatt" as the defenderPogoman when the type of defenderPogoman is orbowatt.
Understand "wimporwil" as attackerPogoman when the type of attackerPogoman is wimporwil.
Understand "wimporwil" as the defenderPogoman when the type of defenderPogoman is wimporwil.
Understand "atlazzard" as attackerPogoman when the type of attackerPogoman is atlazzard.
Understand "atlazzard" as the defenderPogoman when the type of defenderPogoman is atlazzard.
Understand "schwartzennator" as attackerPogoman when the type of attackerPogoman is schwartzennator.
Understand "schwartzennator" as the defenderPogoman when the type of defenderPogoman is schwartzennator.
Understand "gastro" as attackerPogoman when the type of attackerPogoman is gastro.
Understand "gastro" as the defenderPogoman when the type of defenderPogoman is gastro.
Understand "queezee" as attackerPogoman when the type of attackerPogoman is queezee.
Understand "queezee" as the defenderPogoman when the type of defenderPogoman is queezee.
Understand "barfalot" as attackerPogoman when the type of attackerPogoman is barfalot.
Understand "barfalot" as the defenderPogoman when the type of defenderPogoman is barfalot.
Understand "perpie" as attackerPogoman when the type of attackerPogoman is perpie.
Understand "perpie" as the defenderPogoman when the type of defenderPogoman is perpie.
Understand "misdementor" as attackerPogoman when the type of attackerPogoman is misdementor.
Understand "misdementor" as the defenderPogoman when the type of defenderPogoman is misdementor.
Understand "fellanon" as attackerPogoman when the type of attackerPogoman is fellanon.
Understand "fellanon" as the defenderPogoman when the type of defenderPogoman is fellanon.

Understand "loyal" or "defending" or "defender" or "pogoman" as the defenderPogoman.
Understand "wild" or "attacking" or "attacker" or "pogoman" as the attackerPogoman.
Understand "Teal" as the defenderPogoman when the team color of the player is Teal.
Understand "Chartreuse" as the defenderPogoman when the team color of the player is Chartreuse.
Understand "Alizarin Crimson" or "Alizarin" or "Crimson" as the defenderPogoman when the team color of the player is Alizarin Crimson.
Understand "Viridian" as the defenderPogoman when the team color of the player is Viridian.
Understand "Papayawhip" or "papaya" as the defenderPogoman when the team color of the player is Papayawhip.
Understand "Unbleached Titanium" or "Titanium" or "Unbleached" as the defenderPogoman when the team color of the player is Unbleached Titanium.
Understand "wounded" as the attackerPogoman when the attackerPogoman is injured.
Understand "wounded" as the defenderPogoman when the defenderPogoman is injured.
Understand "healthy" as the attackerPogoman when the attackerPogoman is not injured.
Understand "healthy" as the defenderPogoman when the defenderPogoman is not injured.

Instead of attacking a pogoentity (called the opponent):
	if the opponent is:
		-- the attackerPogoman:
			if Exploring The Tower has ended:
				say "[attackStyle] the [type of attackerPogoman]";
				if the attackerPogoman is injured:
					if the player is in the gymnasium and a random chance of 50 in 100 succeeds:
						say ". Defeated, it vanishes. A moment later, you are sucked back into a pogoBall.";
						increase the pogomenDefeated of the player by 1;
						teleport the player to Processing;
					otherwise:
						say "[nearMiss].";
				otherwise:
					if the player is in the gymnasium and a random chance of 25 in 100 succeeds:
						say "[nearMiss]";
					otherwise:
						say ". You have wounded it.";
						now the attackerPogoman is injured;
			otherwise:
				say "People don[apostrophe]t battle pogomen, pogomen battle pogomen[one of].[paragraph break]-- A public service message brought to you by the National Association of Pogomasters[or][stopping].";
		-- the defenderPogoman:
			say "The [type of defenderPogoman] reminds you that it is on your side.".
			
Instead of attacking Elon Musk:
	if the vitality of Elon Musk is dead:
		say "That seems like overkill.";
	otherwise:
		if the isDangling of the meat hooks is true:
			say "You drop from the meat hook to [one of]confront[or]face[or]take on[or]dish out a beating to[or]bring the fight to[in random order] Elon Musk.[paragraph break]";
			now the isDangling of the meat hooks is false;
		say "[attackStyle] Elon Musk";
		if a random chance of 1 in 2 succeeds:
			now the vitality of Elon Musk is the health state after the vitality of Elon Musk;
			if the vitality of Elon Musk is dead:
				say ", all but finishing";
			otherwise:
				say ", wounding";
			say " him. He looks [vitality of Elon Musk].";
		otherwise:
			say "[nearMiss]."
			
To say attackStyle:
	say "You [one of]launch a flying kick at[or]throw an expert karate chop at[or]lunge towards[or]drive your fist into[or]let out your aggressions on[or]spin around and deliver a glancing kick to[or]jamb an elbow into[or]bring your knee up against[or]slam your foot down on[or]join your hands and bring them down like a hammer on[or]smash into[or]wallop[or]let loose a flurry of blows towards[in random order]".
			
To say nearMiss:
	say ", but you[one of]r attack goes wide[or] miss[or]r opponent is too quick for you[in random order]"

To say pogoDex data for (creature - a pogotype):
	let CAT be text;
	let ATK be text;
	let E1 be a pogotype;
	let E2 be a pogotype;
	let E3 be a pogotype;
	let C be "[creature]" in title case;
	say "[C]: [pogoDescription corresponding to pogomanName of creature in the Table of Creatures]. [C] is a ";
	if creature is first level:
		say "first";
		let CAT be the Category corresponding to the Original of creature in the Table of Evolution;
		let ATK be the AttackType corresponding to the Original of creature in the Table of Evolution;
		let E2 be the Ev2 corresponding to the Original of creature in the Table of Evolution;
		let E3 be the Ev3 corresponding to the Original of creature in the Table of Evolution;
	else if creature is second level:
		say "second";
		let CAT be the Category corresponding to the Ev2 of creature in the Table of Evolution;
		let ATK be the AttackType corresponding to the Ev2 of creature in the Table of Evolution;
		let E1 be the original corresponding to the Ev2 of creature in the Table of Evolution;
		let E3 be the Ev3 corresponding to the Ev2 of creature in the Table of Evolution;
	else:
		say "third";
		let CAT be the Category corresponding to the Ev3 of creature in the Table of Evolution;
		let ATK be the AttackType corresponding to the Ev3 of creature in the Table of Evolution;
		let E1 be the original corresponding to the Ev3 of creature in the Table of Evolution;
		let E2 be the Ev2 corresponding to the Ev3 of creature in the Table of Evolution;
	say " level pogoman of the [CAT] variety, with a [ATK] attack. [C] ";
	let EE1 be "[E1]" in title case;
	let EE2 be "[E2]" in title case;
	let EE3 be "[E3]" in title case;
	if the creature is first level:
		say "evolves into [EE2], and finally into [EE3]";
	else if creature is second level:
		say "is the evolved form of [EE1], and evolves into [EE3]";
	else:
		say "is the final evolution of [EE2], which itself is the mid-way evolved form of [EE1]"

Section 7 - Giving to Pogomen

Instead of giving something (called the item) to a pogoentity (called the recipient):
	if the item is a pogothing:
		continue the action;
	otherwise:
		say "Pogomen only seem interested in two things: pogoChum and pogoMeth."

Section 8 - Generate Pogomen

To generate a pogoman:
	now the type of attackerPogoman is a random pogotype;
	now the attackerPogoman is not injured;
	move attackerPogoman to the location of the player.

Section 9 - Capture Pogomen

Capturing is an action applying to a thing. Understand "capture [something]" or "catch [something]" as capturing.

Check capturing:
	if the noun is a person:
		if the noun is an animal:
			if the player carries the pogoBall:
				continue the action;
			otherwise:
				say "You don[apostrophe]t have any pogoBalls[one of]! You capture pogomen by throwing pogoBalls at them, so go get some pogoBalls first[or][stopping]!";
				stop the action;
		otherwise:
			if the noun is Elon Musk and Elon Musk is in Processing:
				if the vitality of Elon Musk is dead:
					say "You know that the ball will not capture inanimate objects; you[apostrophe]ll need to find another way to dispose of the body.";
					the rule fails;
				otherwise:
					say "You [one of]whip[or]wing[or]cast[or]throw[or]fire[in random order] the ball at Elon Musk, ";
					if the ballMissedOnce of Elon Musk is true and a random chance of 1 in 3 succeeds:
						say "and he is sucked mid-rant into the plastic ball! His clipboard clatters to the floor of the pogoChum processing facility.[paragraph break]With a sense of finality, you bring your heel down on the plastic ball, crushing it flat.[paragraph break]The ooze around the edges of the crushed ball does not bear further description. Disgusted, you kick it away and breathe a sigh of relief.";
						now the vitality of Elon Musk is dead;
						now Elon Musk is in the void;
						now the clipboard is in Processing;
						the rule succeeds;
					otherwise:
						now the ballMissedOnce of Elon Musk is true;
						say "but he [one of]steps to the side[or]deflects the pogoBall away[or]ducks just in time[or]bats the pogoBall away with his clipboard[or]fries the ball mid-flight with a bolt of energy from his fingertips[or]reacts with seemingly superhuman reflexes and moves out of the way[in random order].";
						the rule fails;
			otherwise:
				say "That[apostrophe]s illegal, well, at least here it is.";	
				the rule fails;	
	otherwise:
		try taking the noun;
		stop the action.

Carry out capturing:
	try throwing the pogoBall at the noun.
	
Instead of throwing a pogoBall at something (called the target):
	if the target is a pogoentity:
		let T be the "[type of target]" in title case;
		[Is there room in stock?]
		sort the Table of Inventory in PogoName order;
		choose row MODE_POGOMEN_INVENTORY_LIMIT in the Table of Inventory;
		if there is a pogoName entry:
			say "Your pogostock is all ready at capacity ([MODE_POGOMEN_INVENTORY_LIMIT] pogomen).";
			the rule fails;
		[Does the ball hit the target?]
		let DIFFICULTY be 100;
		if the type of target is first level:
			let DIFFICULTY be MODE_CAPTURE_EVOL1_DIFFICULTY;
		else if type of target is second level:
			let DIFFICULTY be MODE_CAPTURE_EVOL2_DIFFICULTY;
		else if type of target is third level:
			let DIFFICULTY be MODE_CAPTURE_EVOL3_DIFFICULTY;
		otherwise:
			if the player wears the Baseball Cap of Pogomastery:
				let DIFFICULTY be DIFFICULTY plus HAT_EFFECT;
		if the target is the defenderPogoman or FIRSTTHROW is true:
			let DIFFICULTY be 100;
		if a random chance of DIFFICULTY in 100 succeeds:[target hit]
			move the target to the void;
			choose a blank row in the table of inventory;
			now pogoName entry is the type of the target;
			if the target is injured:
				now the wounded entry is true;
			otherwise:
				now the wounded entry is false;
			say "You [one of]whip[or]chuck[or]side-arm[or]wing[or]fire off[or]wind up and deliver[or]lob[or]throw[or]fling[or]hurl[or]let fly[or]launch[or]shoot[or]cast[or]heave[or]toss[or]pitch[or]sling[in random order] a [one of]pogoBall[or]curve ball[or]slider[or]spinning pogoBall[or]winding pogoBall[or]fastball[or]whirling pogoBall[or]tumbling pogoBall[or]screwball[in random order] at the [T]";	
			let N be a random number between 1 and the number of entries in TRAJECTORYLIST;
			let TXT be entry N of TRAJECTORYLIST;
			replace the word "xxx" in TXT with "[T]";
			say "[TXT]. The ball ";
			let N be a random number between 1 and the number of entries in BALLLIST;
			let TXT be entry N of BALLLIST;
			replace the word "xxx" in TXT with "[T]";
			say "[TXT].[paragraph break]";
			say "You[apostrophe]ve captured ";
			if Around The Town is happening or Exploring The Tower is Happening:
				say "[one of]a hapless[or]an innocent[or]an entirely well-meaning[or]a mild-mannered[or]a poor little[or]a misfortunate[or]an adorable[or]a harmless[or]a gentle[or]an innocuous[or]an inoffensive[or]a naive[or]a powerless[or]a simple[or]a witless[or]an unoffending[or]a friendly[or]an unobtrusive[or]a peaceable[or]a quiet[or]an amiable[or]an unsuspecting[or]a good-humored[or]a good-natured[or]a lovable[in random order] [T].[paragraph break]";
				increase the pogomenCaptured of the player by 1;
				if the type of the target is not listed in POGODEXLIST:
					add a type of the target to the pogodex;
				otherwise: 
					awardXP CAPTURE_XP_VALUE; 
			otherwise:
				if the target is the defenderPogoman:
					say "a loyal [T].[paragraph break]";
					choose the row with a pogoLandQTH of the location of player in the Table of Defenders;
					blank out the guardian entry;
					blank out the wounded entry;
				otherwise:
					say "an enemy [T][one of]. Now that it has entered your stock, though, it will be loyal to Team [team color of the player]. Pogomen are fickle like that. If you drop it, it will emerge from its pogoBall and defend a location on your behalf, even to the point of taking damage meant for you[or][stopping].[paragraph break]";
					increase the pogomenCaptured of the player by 1;
					awardXP CAPTURE_XP_VALUE ; 
			if FIRSTTHROW is true:
				say "As you well know, except during your increasingly frequent bouts of spot amnesia due to sleep deprivation and/or traumatic brain injury, captured pogomen wind up in your stock. You can [italic type]drop[roman type] them to release them, [italic type]transfer[roman type] them to [quotation mark]send them to the professor[quotation mark], [italic type]evolve[roman type] them to make them stronger, or [italic type]heal[roman type] them if they are wounded. Pogomen in stock will show up in your inventory. Go ahead, take a look.[paragraph break]";
				now FIRSTTHROW is false;
				increase the pogomenCaptured of the player by 1;
				bestow "You[apostrophe]re now my property, because I[apostrophe]m the one with the pogoBalls!";
		otherwise:[target missed]
			say "You throw a pogoBall at the [T]. The ball [one of ]goes wide, bounces, and disappears[or]ricochets off your intended victim and is lost to sight[or]is swallowed by the creature[or]seems to have been a cheap knock-off; half way to the pogoman, it breaks in half. The creature disdainfully kicks the pieces off screen[or]curves wildly and ends up no where near the creature[or]slams into the ground, bounces high in the air, and is carried away by a passing swallow[or]rolls on the ground like a bowling ball, and is easily avoided by the [T][or]lands somewhere behind the [T][or]falls just in front of the [T], who jumps on it and drives it into the ground[or]misses by a mile[or]doubts its own existence and disappears[or]is right on target, but at the last moment, [T] manages to duck[or]spins uncontrollably and disappears[or]goes right past its target[or]brushes right by the pogoman[or]comes so, so, close, but…. Sorry[in random order].[paragraph break]";
	otherwise:
		say "You chuck the pogoBall, and encountering no pogoman, it implodes when it lands.[paragraph break]";
	decrement pogoBall count.
	

The list of text called TRAJECTORYLIST is always {
" and are amused when the half-open ball plops down on the its head and pulls it upward into the ball",
". Futilely, it yells something at you in defiance, but the sound is drowned out by the energy vortex that draws the pogoman into the waiting pogoBall",
" and bowl it down with the deadly accuracy of a world-class pétanque champion",
" and are amused by its futile attempt to escape the overwhelming attraction of the ball, which snaps shut as soon as the pogoman is imprisoned",
" nailing it right between the eyes. Dazed, it falls stiffly forward into the waiting ball and is pulled in",
". Judging by the bits of xxx fur around the ball, it looks like the pogoman didn[apostrophe]t entirely make it into the ball when it had snapped closed",
" and it is imprisoned in the flying ball before it can even react",
" trying to put just the right amount of English on the ball to have it drop the xxx where it stands. You [one of]overestimate[or]underestimate[or]overcompensate[or]undercompensate[in random order] and the pogoman is knocked to the ground and dragged for several yards when the ball opens. Eventually, the whole pogoman is pulled in and the ball snaps shut",
" aiming for the [one of]head[or]neck[or]legs[in random order], but catching it [one of]in the small of the back[or]on the shoulder[or]on the rump[in random order]. No matter, that works too -- the ball snaps open and pulls in the xxx",
" and knock it on its [one of]back[or]stomach[or]side[in random order]. It flails helpless for an instant and is then sucked into the ball",
" and clip it in the [one of]leg[or]shin[or]ankle[or]knee[in random order] as it runs. The xxx stumbles but is dragged backward by the attractive force of the ball",
". The pogoman lifts its paws to protect its [one of]face[or]nose[or]eyes[or]teeth[or]neck[or]throat[in random order] and the ball strikes it in the chest, knocking it down. There is a flash of light and the xxx is aspirated neatly into the ball and locked away",
". The ball skips up off the ground and catches the xxx [one of]in the neck[or]in the throat[or]on the chin[or]on the cheek[or]just below the eye[or]in the middle of its forehead[or]just behind the ears[in random order], which it clutches. As the pogoman is drawn into the ball you can hear its labored breathing",
", which darts to the side, but the ball flies erratically, and ironically, it ends up stumbling right into the ball[apostrophe] path",
", which ducks, but not quickly enough",
". It runs, but the ball over takes it and draws it in",
" and peg it in the [one of]thigh[or]hip[or]buttocks[or]nape of the neck[or]groin[in random order]. A moment later, the ball absorbs the xxx",
". The xxx says a brief prayer to a pogodeity, but to no avail; the ball splits open and pulls the pogoman in as the words die on its lips",
" and watch it home in on its target. The xxx tries to run, but is not fast enough to evade the pogoBall",
". In mid-flight, the ball opens and smaller ball jets forward, also opening on its way to the xxx. The smaller ball sucks in the xxx, and then is itself captured by the larger ball",
". About halfway to the pogoman, the ball opens and closes repeatedly, like a red and white spherical Pacman. This evokes some sort of deep-seated race memory of videogame ur-predators and the xxx falls to the ground, shaking in terror before being drawn into the ball",
". The ball hits so hard that the pogoman pixelates at the point of impact. A moment later, the xxx is vacuumed up",
". The ball is flying so fast as it passes the pogoman that the creature is drawn out into a long string of glowing plasma before the it is spooled into the closing pogoBall",
" and bag it neatly",
" and add another xxx to today[apostrophe]s take",
" and nail it with [one of]deadly accuracy[or]an eagle eye[or]great acumen[or]panache[or]exquisite style[or]ease[in random order]",
" careful to keep it centered on the target, lest the xxx try to duck or evade to the side. The ball flies true and pogoman is drawn in",
" with a flick of the wrist, capturing the pogoman in a rotating attraction field that wrings xxx out like a wet rag before sucking into the ball",
" eager to add one more prize to your collection. Your aim is good and the xxx is pulled into the ball",
" and hear a loud crack. At first you suspect it is the plastic ball, but one look at the pogoman tells you otherwise. Holding its [one of]aching head[or]disarticulated shoulder[or]unnaturally bent leg[or]bowed arm[in random order], the pogoman is pulled into the red and white pogoBall",
" and nearly put out its eye. The startled pogoman is easy pickings for the ball, which pops open and consumes the now sight-impaired xxx",
" and knock it unconscious. Regardless, the ball sucks in the limp body of the xxx",
". The pogoman scrapes at the ground to resist, but the attractive force of the ball is too great",
". As luck would have it, the ball goes right past the xxx, ricochets, and catches it neatly from behind",
", which panics and starts to flee. It doesn[apostrophe]t get very far, though, as the ball splits open and reels in its anxious prey",
 ". The ball flies just above the ground and strikes the pogoman in the [one of]shins[or]calves[or]ribs[in random order]. The pogoman collapses and the ball traps the xxx in its irresistible grasp",
". The ball skims the ground, bounces upward and smashes the xxx in the [one of]face[or]jaw[or]mouth[or]lips[or]temples[in random order]. The ball splits open, energy spills out, and the pogoman is pulled in by its nose",
" and cut another notch in your pogoman belt as the ball yanks it in",
" and pick it off like the professional pogo[one of]master[or]hunter[or]-athlete[or]-acquisition specialist[in random order] that you are",
", which has no chance at all. It is pulled kicking and [one of]hissing[or]bawling[or]spitting[or]barking[or]scratching[in random order] into the ball, which slams shut a moment later",
". The ball lands and appears inert. Just when the pogoman thinks it is clear -- bam! The ball cracks open and yanks it in",
". The ball flies past the pogoman, but opens near enough to yank the xxx into the ball before it hits the ground",
" and almost (but [one of]not quite[or]only momentarily[or]fleetingly[or]at best distantly[in random order]) feel some sense of pity as it is ripped from its surroundings and stuffed into the ball.",
". The ball lands nearby and the xxx paws at it, only to be pulled in when the ball splits open",
", watches with innocent curiosity as the ball opens and entraps it",
", which initially thinks you are playing, but realizes too late that you are, in fact, hunting it",
" and knock its legs out from under it. The xxx falls backwards into the ball, which gobbles it up",
". The ball cracks it on the head. It lurches to the side, bleeding slightly from the contusion and is sucked into the ball with a slurping sound",
". The ball opens and the xxx is somehow compacted into a much smaller volume that should be possible",
" and hit it dead on. The xxx leaves claw marks in the ground as it struggles to resist the ball[apostrophe]s attraction, but is ultimately pulled in",
" and knock it off its feet. Before it can recover, it is drawn into the pogoBall, which immediately clamps shut around it",
". The pogoman attempts to catch it, but the ball goes off like grenade, nearly tearing the limbs off the xxx as it is yanked into the ball",
", which dives under it, only to be sucked upwards into the ball",
", who jumps up just in time to be hit in the [one of]gut[or]belly[or]stomach[in random order] by the ball. The xxx is thrown backwards and disappears into the ball before it hits the ground",
" and the ball brushes just to one side, but close enough to draw the xxx in",
". The pogoman attempts to leap over it, but instead finds itself diving face first into the ball",
". The pogoman is caught off guard and devoured by the ball",
". The pogoman shrieks with surprise as it flies into the ball",
", which watches with resignation as the ball swallows it whole"
}

The list of text called BALLLIST is always {
"bounces around a bit, but finally glows red",
"rolls around until the pogoman tires and ceases struggling",
"rolls languidly for a few moments and then ceases movement",
"successfully contains the xxx",
"hops around for a while",
"drops straight down and comes to a rest",
"spins like a top and then is still",
"rattles with pent up frustration until whatever little air is left in the ball is consumed",
"zigzags along the ground and rolls to a stop",
"deforms as the pogoman inside struggles to regain its freedom, but eventually the creature fatigues",
"threatens to reopen, but holds together",
"skitters along the ground for several yards and the holds still",
"lands with clunk, but does not appear to be damaged",
"pulsates with energy [one of]for a moment[or]twice[or]three times[or]several times[in random order] and then grows dark",
"has proven itself up to the task",
"performs remarkably well, no doubt due to your [one of]skill[or]finesse[or]training[or]natural proficiency[or]robust athleticism[in random order]",
"remains shut",
"rolls away, but you are able to find it",
"rolls right to you. How convenient",
"hits the ground at an awkward angle, bounces away, and it take you some time to find it again",
"creaks and groans with the strain of holding in the xxx until it loses hope and submits to its fate",
"lands where the xxx stood just a moment ago"
}
		
section 11 - PogoInventory
	
After taking inventory:
	follow testInventory rule.
	
[
	
This is the pogo-inventory rule:
	sort Table of Inventory in wounded order;
	sort Table of Inventory in pogoName order;	
	if there is no pogoName in row 1 of the Table of Inventory:
		say "Alas, you have no pogomen![line break]";
	otherwise:
		say "Pogomen Stock: (";
		let T be 0;
		repeat with N running from 1 to MODE_POGOMEN_INVENTORY_LIMIT:
			choose row N in the Table of Inventory;
			if there is no pogoName entry:
				break;
			otherwise:
				let T be T plus one;
		say "[T] pogom[if T is greater than 1]e[otherwise]a[end if]n)[line break]";
		let LASTPOGO be the pogoName in row 1 of Table of Inventory;
		let LASTWOUNDED be the wounded in row 1 of Table of Inventory;
		let LASTCOUNT be 1;
		repeat with N running from 2 to the MODE_POGOMEN_INVENTORY_LIMIT:
			choose row N in the Table of Inventory;		
			if there is no pogoName entry:
				let LLASTPOGO be "[LASTPOGO]" in title case;
				say "* [LASTCOUNT in words] [if LASTWOUNDED is true](wounded) [end if][LLASTPOGO][if LASTCOUNT is greater than 1]s[end if][line break]";
				break;
			if LASTWOUNDED is not the wounded entry or LASTPOGO is not the pogoName entry:
				let LLASTPOGO be "[LASTPOGO]" in title case;
				say "* [LASTCOUNT in words] [if LASTWOUNDED is true](wounded) [end if][LLASTPOGO][if LASTCOUNT is greater than 1]s[end if][line break]";
				let LASTCOUNT be 1;
				let LASTPOGO be the pogoName entry;
				let LASTWOUNDED be the wounded entry;
			otherwise:
				increase LASTCOUNT by one;
			if N is MODE_POGOMEN_INVENTORY_LIMIT:
				let LLASTPOGO be "[LASTPOGO]" in title case;
				say "* [LASTCOUNT in words] [if LASTWOUNDED is true](wounded) [end if][LLASTPOGO][if LASTCOUNT is greater than 1]s[end if][line break]";
	say line break;	
	[Defending Pogomen]
	if Not In Kansas Anymore is happening:
		let D be 0;
		repeat with N running from 1 to the number of rows in Table of Defenders:
			choose row N in the Table of Defenders;
			if there is a guardian entry:
				increase D by one;
		if D is 0:
			say "No loyal pogomen are on guard in Pogoland.[paragraph break]";
		otherwise:
			let DD be "[D in words]" in title case;
			say "[DD] team ";
			let T be the team color of the player;
			say "[T]" in lower case;
			say " pogom[if D is 1]a[otherwise]e[end if]n [regarding D][hold][if D is 1] a[end if] defensive position[if D is greater than 1]s[end if].[paragraph break]Use the [quotation mark]guards[quotation mark] command for a list or [quotation mark]scan[quotation mark] command for a display of deployed pogomen."
			
]
			
This is the testInventory rule:
	sort Table of Inventory in wounded order;
	sort Table of Inventory in pogoName order;	
	if there is no pogoName in row 1 of the Table of Inventory:
		say "Alas, you have no pogomen![line break]";
	otherwise:
		say fixed letter spacing;
		let H be 0;
		let W be 0;
		let T be 0;
		repeat with N running from 1 to MODE_POGOMEN_INVENTORY_LIMIT:
			choose row N in the Table of Inventory;
			if there is no pogoName entry:
				break;
			otherwise:
				let T be T plus one;
				if wounded entry is true:
					increase W by one;
				otherwise:
					increase H by one;
		say "[T] Pogom[if T is greater than 1]e[otherwise]a[end if]n in stock: ";
		if W is 0:
			say "all of them healthy";
		else if H is 0:
			say "all of them [bracket]wounded[close bracket]";
		else:
			say "[H] healthy [bracket][W] wounded[close bracket]";
		say ".[paragraph break]";
	let secondColumnFlag be false;
	repeat with P running through pogotypes:
		let H be 0;
		let W be 0;
		repeat with N running from 1 to MODE_POGOMEN_INVENTORY_LIMIT:
			choose row N in the Table of Inventory;		
			if there is no pogoName entry:
				break;
			if the pogoName entry is P:
				if the wounded entry is true:
					increase W by one;
				otherwise:
					increase H by one;
		if W + H is greater than 0:
			say "[P]" in title case;
			say ": ";
			if H is greater than 0:
				say "[H]";
			if H is greater than 0 and W is greater than 0:
				say " ";
			if W is greater than 0:
				say "[bracket][W][close bracket]";
			if secondColumnFlag is false:
				let SPACER be 3; [space after colon and two between columns]
				let SPACER be SPACER + the number of characters in "[P]";
				let SPACER be SPACER + the number of characters in "[H]";
				if W is greater than 0:
					increase SPACER by 1;
					increase SPACER by the number of characters in "[W]";
				if H is greater than 0 and W is greater than 0:
					increase SPACER by 2; 
				let SPACER be 26 - SPACER;
				repeat with N running from 1 to SPACER:
					say " ";
				now secondColumnFlag is true;
			otherwise:
				now secondColumnFlag is false;
				say line break;
	if secondColumnFlag is true:[if left off on column 1]
		say line break;
	say line break;
	say roman type;
	[Defending Pogomen]
	if Not In Kansas Anymore is happening:		
		let D be 0;
		repeat with N running from 1 to the number of rows in Table of Defenders:
			choose row N in the Table of Defenders;
			if there is a guardian entry:
				increase D by one;
		if D is 0:
			say "No loyal pogomen are on guard in Pogoland.[paragraph break]";
		otherwise:
			let DD be "[D in words]" in title case;
			say "[DD] team ";
			let T be the team color of the player;
			say "[T]" in lower case;
			say " pogom[if D is 1]a[otherwise]e[end if]n [regarding D][hold][if D is 1] a[end if] defensive position[if D is greater than 1]s[end if].[paragraph break]Use the [quotation mark]guards[quotation mark] command for a list or [quotation mark]scan[quotation mark] command for a display of deployed pogomen."


Section 13 - Spawning

[see Chapter Not Ready For Prime Time - spawning is a test command to generate a random pogoman for so-called "experimentation" in the location of the player]

Chapter Commands Operating On Pogoman Inventory

[these commands operate on the text value in the topicLookup column of the inventory table. That column is created based on the pogotype value of the pogoman at the time it is added to the inventory]



Section 1 - Inventory Grammar Tokens

Understand "teal" as "[tealToken]" when the team color of the player is teal.
Understand "chartreuse" as "[chartreuseToken]" when the team color of the player is chartreuse.
Understand "alizarin crimson" or "alizarin" or "crimson" as  "[alizarinCrimsonToken]" when the team color of the player is alizarin crimson.
Understand "viridian" as "[viridianToken]" when the team color of the player is viridian.
Understand "papayawhip" as "[papayaWhipToken]" when the team color of the player is papayawhip.
Understand "unbleached titanium" or "unbleached" or "titanium" as "[unbleachedTitaniumToken]" when the team color of the player is unbleached titanium.

Section 2 - InventoryDropping

InventoryDropping is an action applying to one pogotype.

Understand "drop [pogotype]" as inventoryDropping.
Understand "drop [tealToken] [pogotype]'" as inventoryDropping.
Understand "drop [chartreuseToken] [pogotype]" as inventoryDropping.
Understand "drop [alizarinCrimsonToken] [pogotype]" as inventoryDropping.
Understand "drop [viridianToken] [pogotype]" as inventoryDropping.
Understand "drop [papayawhipToken] [pogotype]" as inventoryDropping.
Understand "drop [unbleachedTitaniumToken] [pogotype]" as inventoryDropping.
Understand "drop loyal [pogotype]" as InventoryDropping.

Check inventoryDropping:
	sort Table of Inventory in reverse wounded order;
	if there is no pogoName in row 1 of the Table of Inventory:
		say "You have no pogomen in stock to drop!";
		stop the action;
	otherwise:
		let PRESENT be false;
		repeat with N running from 1 to the number of rows in Table of Inventory:
			choose row N in the Table of Inventory;
			if there is no pogoName entry:
				break;
			if the pogoName entry is the pogotype understood:
				let PRESENT be true;
				break;
		if PRESENT is false:
			let P be "[pogotype understood]" in title case;
			say "You don[apostrophe]t have a captured [P] in stock.";
			stop the action;
	if Exploring The Tower has ended:
		if the player is in the giant ball:
			say "You can[apostrophe]t. You are trapped in a pogoBall yourself!";
			stop the action;
		if the defenderPogoman is in the location of the player:
			let T be "[type of the defenderPogoman]" in title case;
			say "A loyal [T] is already on guard here[one of]. Only one per location (they are a tad territorial)[or][stopping].";
			stop the action;
		otherwise:
			sort Table of Inventory in wounded order;[select stronger defenders]
	otherwise:
		[otherwise, selectively dump the weaker in the Village]
		sort Table of Inventory in reverse wounded order.
		
Carry out inventoryDropping:
	repeat with N running from 1 to the number of rows in Table of Inventory:
		choose row N in the Table of Inventory;
		if the pogoName entry is the pogotype understood:
			let W be the wounded entry;
			let P be the pogoName entry;
			let PP be "[P]" in title case;
			blank out the whole row;
			if Exploring The Tower has ended:					
				move the defenderPogoman to the location of the player;
				now the type of defenderPogoman is P;
				if W is true:
					now the defenderPogoman is injured;
				let C be the team color of the player;
				let CC be "[C]" in lower case;
				say "A[if the team color of the player is unbleached titanium or the team color of the player is alizarin crimson]n[end if] [CC] [PP] [if W is true]that seems injured [end if]bursts from its pogoBall and takes up a defensive stance.";
				now the guardian corresponding to the pogoLandQTH of the location of the player in the Table of Defenders is P;
				now the wounded corresponding to the pogoLandQTH of the location of the player in the Table of Defenders is W;
			otherwise:
				say "As soon as the [PP] is free, it zips away immediately.";
			break.		
						
Section 3 - Transferring

inventoryTransferring is an action applying to one pogotype. 

Understand "transfer [pogotype]" or "transfer [pogotype] to/-- professor" as inventorytransferring.
Understand "transfer [tealToken] [pogotype]" or "transfer [tealToken] [pogotype] to/-- professor" as inventorytransferring.
Understand "transfer [chartreuseToken] [pogotype]" or "transfer [chartreuseToken] [pogotype] to/-- professor" as inventorytransferring.
Understand "transfer [alizarinCrimsonToken] [pogotype]" or "transfer [alizarinCrimsonToken] [pogotype] to/-- professor" as inventorytransferring.
Understand "transfer [viridianToken] [pogotype]" or "transfer [viridianToken] [pogotype] to/-- professor" as inventorytransferring.
Understand "transfer [papayawhipToken] [pogotype]" or "transfer [papayawhipToken] [pogotype] to/-- professor" as inventorytransferring.
Understand "transfer [unbleachedTitaniumToken] [pogotype]" or "transfer [unbleachedTitaniumToken] [pogotype] to/-- professor"  as inventorytransferring.
Understand "transfer loyal [pogotype]" or "transfer loyal [pogotype] to/-- professor" as inventorytransferring.

Check inventoryTransferring:
	sort Table of Inventory in reverse wounded order;
	if there is no pogoName in row 1 of the Table of Inventory:
		say "You have no pogomen in stock to transfer!";
		stop the action;
	otherwise:
		let PRESENT be false;
		repeat with N running from 1 to the number of rows in Table of Inventory:
			choose row N in the Table of Inventory;
			if there is no pogoName entry:
				break;
			if the pogoName entry is the pogotype understood:
				let PRESENT be true;
				break;
		if PRESENT is false:
			let P be "[pogotype understood]" in title case;
			say "You don[apostrophe]t have a captured [P] in stock.";
			stop the action.
	
Carry out inventoryTransferring:
	repeat with N running from 1 to the number of rows in Table of Inventory:
		choose row N in the Table of Inventory;
		if the pogoName entry is the pogotype understood:
			blank out the whole row;
			let P be "[pogotype understood]" in title case;
			say "[One of]You ship your [P] off to the glue factory[or]The [P] departs for its extended vacation with Herr Doktor[or]Off to the salt mines[or]Goodbye, [P], I[apostrophe]ll miss you briefly[or]See ya[or]One less [P] in the inventory[or]Sined. Sealed. Delivered[or]You briefly wonder [P] went, but decide not to worry about it[or]Shipped[or]The [P] disappears in a wisp of smoke[or]The [P] is vaporized and carried away on a gentle but ominous breeze[or]Transferred[stopping]![paragraph break]";
			awardXP TRANSFER_XP_VALUE;
			break.		
	
After inventoryTransferring for the first time:
	bestow "Practicality in managing resources".

Section 4 - Evolving

inventoryEvolving is an action applying to one pogotype. 

Understand "evolve [pogotype]" as inventoryEvolving.
Understand "evolve [tealToken] [pogotype]" as inventoryEvolving.
Understand "evolve [chartreuseToken] [pogotype]" as inventoryEvolving.
Understand "evolve [alizarinCrimsonToken] [pogotype]" as inventoryEvolving.
Understand "evolve [viridianToken] [pogotype]" as inventoryEvolving.
Understand "evolve [papayawhipToken] [pogotype]" as inventoryEvolving.
Understand "evolve [unbleachedTitaniumToken] [pogotype]" as inventoryEvolving.
Understand "evolve loyal [pogotype]" as inventoryEvolving.

Check inventoryEvolving:
	sort Table of Inventory in wounded order;
	if there is no pogoName in row 1 of the Table of Inventory:
		say "You have no pogomen in stock to evolve!";
		stop the action;
	otherwise:
		let PRESENT be false;
		repeat with N running from 1 to the number of rows in Table of Inventory:
			choose row N in the Table of Inventory;
			if there is no pogoName entry:
				break;
			if the pogoName entry is the pogotype understood:
				let PRESENT be true;
				break;
		if PRESENT is false:
			let P be "[pogotype understood]" in title case;
			say "You don[apostrophe]t have a captured [P] in stock.";
			stop the action.

Carry out inventoryEvolving:	
	repeat with N running from 1 to the number of rows in Table of Inventory:
		choose row N in the Table of Inventory;
		if the pogoName entry is the pogotype understood:
			let P be "[pogotype understood]" in title case;
			if the pogotype understood is third level:
				say "Your [P] is already fully evolved.";
				break;
			else:
				let E be a pogotype;
				if the pogotype understood is second level:
					let E be the Ev3 corresponding to the Ev2 of the pogotype understood in the Table of Evolution;
				else:
					let E be the Ev2 corresponding to the original of the pogotype understood in the Table of Evolution;
				now the pogoName entry is E;[wounded status carries over]
				let EE be "[E]" in title case;
				say "Your [P] vibrates with energy, shooting sparks in all directions as it hovers and spins in the air. A moment later, you see that it has evolved into a freshly-minted [EE]![paragraph break]";
				awardXP EVOLUTION_XP_VALUE;
				increase timesEvolved of the defenderPogoman by 1;
				if timesEvolved of the defenderPogoman is:
					-- 1:
						bestow "Turned something into something else!";
					-- 2:
						bestow "Did something before and it worked, so I did it again";
				if E is not listed in POGODEXLIST:
					add a E to the pogodex;
				break.
		
	
Section 5 - InventoryExamining


inventoryExamining is an action applying to one pogotype.

Understand "x [pogotype]" or "examine [pogotype]" as inventoryExamining.
Understand "x [tealtoken] [pogotype]"  or "examine [tealToken] [pogotype]" as inventoryExamining.
Understand "x [chartreuseToken] [pogotype]" or "examine [chartreuseToken] [pogotype]"  as inventoryExamining.
Understand "x [alizarinCrimsonToken] [pogotype]" or "examine [alizarinCrimsonToken] [pogotype]" as inventoryExamining.
Understand "x [viridianToken] [pogotype]" or "examine [viridianToken] [pogotype]" as inventoryExamining.
Understand "x [papayawhipToken] [pogotype]" or "examine [papayawhipToken] [pogotype]" as inventoryExamining.
Understand "x [unbleachedTitaniumToken] [pogotype]" or "examine [unbleachedTitaniumToken] [pogotype]" as inventoryExamining.
Understand "x loyal [pogotype]" or "examine [pogotype]" as InventoryExamining.

Check inventoryExamining:
	let OUTSIDER be 0;
	if the attackerPogoman is in the location of the player and the type of attackerPogoman is the pogotype understood:
		let OUTSIDER be 1;
	else if the defenderPogoman is in the location of the player and the type of defenderPogoman is the pogotype understood:
		let OUTSIDER be 2;
	sort Table of Inventory in reverse wounded order;
	if there is no pogoName in row 1 of the Table of Inventory:[check stock first]
		if OUTSIDER is:
			-- 0:
				say "You have no pogomen in stock to examine!";
			-- 1:
				try examining the attackerPogoman;[if nothing in stock, look outside]
			-- 2:
				try examining the defenderPogoman;
		stop the action;
	otherwise:
		let PRESENT be false;
		repeat with N running from 1 to the number of rows in Table of Inventory:
			choose row N in the Table of Inventory;
			if there is no pogoName entry:
				break;
			if the pogoName entry is the pogotype understood:
				let PRESENT be true;
				break;
		if PRESENT is false:
			if OUTSIDER is: [if there is stock, is there a match?]
				-- 0:
					let P be "[pogotype understood]" in title case;
					say "You don[apostrophe]t have a captured [P] in stock.";
				-- 1:[if nothing in stock matches, look outside]
					try examining the attackerPogoman;
				-- 2:
					try examining the defenderPogoman;
			stop the action.
	
Carry out inventoryExamining:
	let H be false; [healthy]
	let W be false; [wounded]
	let LAST be 1;
	repeat with N running from 1 to the number of rows in Table of Inventory plus one:
		if there is no pogoName in row N of the Table of Inventory:
			let LAST be N minus 1;
			break;	
	if LAST is 0:
		let LAST be 1;	
	repeat with N running from 1 to LAST:
		choose row N in the Table of Inventory;
		if the pogoName entry is the pogotype understood:
			if the wounded entry is true:
				let W be true;
			otherwise:
				let H be true;
			if W is true and H is true:
				break;[no need to keep looking, covered both possibilities]
	if W is true or H is true:
		say "[pogoDex data for pogotype understood]. Health status: ";
		if W is true:
			if H is true:
				say "both healthy and wounded.";
			else:
				say "wounded";
		else:
			say "healthy";
		say ".[paragraph break]Note that only certain commands are available for pogomen in your stock, these include [italic type]drop, evolve, heal, [roman type]and [italic type]transfer[roman type]."
			
Section 6 - InventoryHealing

inventoryHealing is an action applying to one pogotype.

Understand "heal [pogotype]" as inventoryHealing.
Understand "heal [tealToken] [pogotype]" as inventoryHealing.
Understand "heal [chartreuseToken] [pogotype]"  as inventoryHealing.
Understand  "heal [alizarinCrimsonToken] [pogotype]" as inventoryHealing.
Understand "heal [viridianToken] [pogotype]" as inventoryHealing.
Understand  "heal [papayawhipToken] [pogotype]" as inventoryHealing.
Understand "heal [unbleachedTitaniumToken] [pogotype]" as inventoryHealing.
Understand "heal loyal [pogotype]" as inventoryHealing.

Check inventoryHealing:
	sort Table of Inventory in reverse wounded order;
	if the pogoMethsCarried of the player is less than 1:
		say "You are out of pogoMeth[one of]. Can[apostrophe]t heal anything without some pogoMeth[or][stopping].";
		stop the action;
	else if the defenderPogoman is in the location of the player and the type of defenderPogoman is the pogotype understood:
		try healing the defenderPogoman;[a present defender has priority over stock]
		stop the action;
	else if there is no pogoName in row 1 of the Table of Inventory:
		say "You have no pogomen in stock to examine!";
		stop the action;
	else:
		let PRESENT be false;
		repeat with N running from 1 to the number of rows in Table of Inventory:
			choose row N in the Table of Inventory;
			if there is no pogoName entry:
				break;
			if the pogoName entry is the pogotype understood:
				let PRESENT be true;
				break;
		if PRESENT is false:
			let P be "[pogotype understood]" in title case;
			say "You don[apostrophe]t have a captured [P] in stock.";
			stop the action.
			
Carry out InventoryHealing:
	repeat with N running from 1 to the number of rows in Table of Inventory:
		choose row N in the Table of Inventory;
		if the pogoName entry is the pogotype understood:
			if the wounded entry is false:
				say "You hold the pogoMeth near one of the pogoBalls in your stock, and even though it isn[apostrophe]t injured, a paw reaches out, grabs the offered pogoMeth, and retreats again back into the ball.";
				break;
			else:
				now the wounded entry is false;
				let P be "[pogotype understood]" in title case;
				say "You drop a bit of pogoMeth into the ball containing your wounded [P] and hear happy frolicking from inside the ball.[paragraph break]";
				decrement pogoMeth count;
				break.	
				
Section 7 - inventoryGiving

[covers both giving pogoMeth and pogoChum to pogomen in stock]

inventoryGiving is an action applying to one thing and one pogotype. 

Understand "give [pogothing] to [pogotype]" as inventoryGiving.
Understand "give [pogothing] to [tealToken] [pogotype]" as inventoryGiving.
Understand "give [pogothing] to [chartreuseToken] [pogotype]" as inventoryGiving.
Understand "give [pogothing] to [alizarinCrimsonToken] [pogotype]" as inventoryGiving.
Understand "give [pogothing] to [viridianToken] [pogotype]" as inventoryGiving.
Understand "give [pogothing] to [papayawhipToken] [pogotype]" as inventoryGiving.
Understand "give [pogothing] to [unbleachedTitaniumToken] [pogotype]" as inventoryGiving.
Understand "give [pogothing] to loyal [pogotype]" as inventoryGiving.

To say (item - a pogothing) are far too valuable:
	let P be the printed plural name of the item in title case;
	say "[P] are too valuable to give away."

Check inventoryGiving:
	if the noun is:
		-- pogoBall:	
			say pogoBall are far too Valuable;
			stop the action;
		-- pogoIncense:
			say pogoIncense are far too Valuable;
			stop the action;
		-- pogoEgg:
			say pogoEgg are far too Valuable;
			stop the action;
		-- pogoMeth:
			try inventoryHealing the pogotype understood;
			stop the action;
		-- pogoChum:
			try inventoryFeeding the pogotype understood;
			stop the action.
		
Carry Out inventoryGiving:
	do nothing.
	
Section 8 - inventoryFeeding

inventoryFeeding is an action applying to one pogotype.  

Understand "feed [pogotype]" as inventoryFeeding.
Understand "feed [tealToken] [pogotype]" as inventoryFeeding.
Understand "feed [chartreuseToken] [pogotype]"  as inventoryFeeding.
Understand  "feed [alizarinCrimsonToken] [pogotype]" as inventoryFeeding.
Understand "feed [viridianToken] [pogotype]" as inventoryFeeding.
Understand  "feed [papayawhipToken] [pogotype]" as inventoryFeeding.
Understand "feed [unbleachedTitaniumToken] [pogotype]" as inventoryFeeding.
Understand "feed loyal [pogotype]" as inventoryFeeding.

Check inventoryFeeding:
	if the pogoChumsCarried of the player is less than 1:
		say "You are out of PogoChum[one of]! You need PogoChum to feed your pogomen[or][stopping]!";
		stop the action;
	sort Table of Inventory in wounded order;
	if there is no pogoName in row 1 of the Table of Inventory:
		say "You have no pogomen in stock to feed!";
		stop the action;
	otherwise:
		let PRESENT be false;
		repeat with N running from 1 to the number of rows in Table of Inventory:
			choose row N in the Table of Inventory;
			if there is no pogoName entry:
				break;
			if the pogoName entry is the pogotype understood:
				let PRESENT be true;
				break;
		if PRESENT is false:
			let P be "[pogotype understood]" in title case;
			say "You don[apostrophe]t have a captured [P] in stock.";
			stop the action.
			
Carry out inventoryFeeding:
	say "A pogoBall cracks open, a miniature arm reaches out, and the PogoChum disappears into the ball. Shortly after, you hear satisfied chewing sounds.[paragraph break]";
	awardXP CHUMMING_XP_VALUE;
	decrement pogoChum count.

Section 9 - nonPogoHealing

[without this rule, using heal on anything would result in an error that the object can't be seen, which shoots any semblance of mimesis right in the head]
	
nonPogoHealing is an action applying to one thing. Understand "heal [something]" as nonPogoHealing.

Check nonPogoHealing:
	if Exploring the Tower has not happened:
		say "Your super-powers are limited to things you can do in Pogoman GO!  Reality is a thin line that you are not quite ready to cross.";
		stop the action;
	otherwise:
		if the noun is not a person:
			say "You can only heal living creatures.";
			stop the action;
		else if the noun is not the player:
			say "The [noun] is not injured, and besides that, questions your credentials to practice medicine.";
			stop the action;
		else:
			if the pogoMethsCarried of the player is greater than 0:
				try eating pogoMeth;
			otherwise:
				say "You are out of pogoMeth!".
				
Section 10 - nonPogoEvolving

nonPogoEvolving is an action applying to one thing. Understand "evolve [thing]" as nonPogoEvolving.

Carry out nonPogoEvolving:
	say "You can only evolve pogomen that you have captured and have in stock."

Section 11 - Walkthroughing

Walkthroughing is an action out of world. Understand "walkthrough" as walkthroughing. 

Carry out walkthroughing:
	say "While the game has a built-in walkthrough, we would encourage you not to use it, but to try the context-specific hint system first (type [italic type]hint[roman type]). Hints will vary according to your current situation and the immediate goals that you have to solve to progress.[paragraph break]If you have already done that and prefer to look at the full walkthrough, please understand that it will necessarily be very spoilerish.[paragraph break]One other consideration: The game distribution should have included a nicely formatted walkthrough in PDF format. That might be nicer to look at, and you could print it or open it next to the game rather than use this built-in version. The built-in version is retained just in case the game is played online or something else happens to the PDF version.[paragraph break]Before we go on, one last chance. Are you sure you want to see the walkthrough?";
	if the player consents:
		showWalkthrough;
	otherwise:
		say line break;
		if deniedTemptationOnce of the player is true:
			bestow "Denied Temptation.";
			now deniedTemptationOnce of the player is false;
		otherwise:
			say "That[apostrophe]s the spirit![paragraph break]".
			
To showWalkthrough:
	now the current menu is the Table of Walkies;
	carry out the displaying activity;
	clear the screen;
	try looking.		
	
Table of Walkies
title	subtable	description	toggle
" 0. About the Walkthrough"	--	"[aboutWalkthrough]"	--
" 1. Around the Town"	--	"[ATT1][ATT2]"	--
" 2. Nyantech: White Level Access"	--	"[NWLA]"	--
" 3. Nyantech: Green Level Access"	--	"[NGLA]"	--
" 4. Nyantech: Blue Level Access"	--	"[NBLA]"	--
" 5. Nyantech: Red Level Access"	--	"[NRLA]"	--
" 6. Pogoland Overview"	--	"[pogolandOverview]"	--
" 7. Surviving Pogoland"	--	"[SurvivingPogoland]"	--
" 8. Escaping Pogoland"	--	"[escapingPogoland]"	--
" 9. Captured by a Pogoman"	--	"[beingCaptured]"	--
"10. Boss Battle"	--	"[bossBattle]"	--


To say aboutWalkthrough:
	say "The walkthrough cannot give you turn-by-turn instructions because a number of elements in the game are randomized for the sake of making it more fun to replay. Consequently, the walkthrough will describe the major sections of the game and explain how to get through them efficiently (but maybe not the most scenic route). It will also flag situations where you have a choice that will lead to one ending versus another. Below, commands that you would type in are in italics."


To say ATT1:
	say "* The goal in the first part of the game is to gain sufficient experience to be able to enter the Nyantech Corporate Offices at the center of town. A unicorn guards the entrance and won[apostrophe]t let you pass until you have a high enough level, an impressive amount of XP, a few gym trophies, and some medals. He will let you know how many of each when you try to enter.[paragraph break]* Scan the town ([italic type]scan[roman type]). X is your position, P are pogostops, G are gyms, and N is Nyantech Corporate Headquarters.[paragraph break]* If you have files that were distributed with the game, one should be [quotation mark]diagrams[quotation mark], which has a map of the whole town. The file can also be found online at http://pogomango.templaro.com/resources/diagrams.pdf.[paragraph break]* Navigate around using compass direction commands ([italic type]n, e, w, s[roman type]). Town is a 7 x 7 grid. If you navigate too far in any direction, you will suffer the non-fatal consequences.[paragraph break]* There is one location in town (the Perilous Passageway), where you will be mugged. Repeatedly. You can ignore it entirely without negative consequence. However, if you persist in visiting this location, you can eventually plunder the Baseball Cap of Pogomastery by searching the garbage can there. When worn, the cap confers advantages in capturing pogomen and in battles.[paragraph break]* If you see a pogoman, [italic type]capture[roman type] it by throwing a pogoBall at it ([italic type]throw pogoBall at…[roman type]).[paragraph break]* Find a location with a pogostop. To get stuff from the pogostop, [italic type]spin[roman type] it. It will yield random amounts of pogoMeth (which can be used to [italic type]heal[roman type] wounded pogomen), pogoChum (which you can [italic type]feed[roman type] or [italic type]give[roman type] to pogomen for points), pogoIncense (which you can [italic type]burn[roman type] to attract pogomen), pogoEggs (which you can [italic type]drop[roman type] to hatch pogomen), and pogoBalls (used to [italic type]capture[roman type] pogomen).[paragraph break]* A pogostop cannot be immediately tapped again for more goodies; some time has to elapse. Figure out a good route to mine the local pogostops repeatedly until you are satisfied with the amount of swag collected. You can carry a maximum of 100 pogo-items, which is separate from all other inventory.[paragraph break]".

To say ATT2:
	say "* Regarding captured pogomen, you can [italic type]feed[roman type] and [italic type]evolve[roman type] them. Evolving them makes them stronger (better fighters). You can [italic type]transfer[roman type] or [italic type]drop[roman type] pogomen in stock to get rid of them. Experience points are awarded for all of these actions.[paragraph break]* Once you have some pogomen, when you are in a location with a gym, you can [italic type]enter the gym[roman type]. The first few times you try this, it will crash your phone. You[apostrophe]ll need to type [italic type]reboot[roman type] (or [italic type]r[roman type] for short). Follow the prompts and keep trying, eventually you will get into the gym. Once you do manage to get in and not have your phone crash, a fight will take place. Your best pogoman will match up against whatever the gym has to offer. If you keep trying (by entering the gym), you will eventually win and get some trophies.[paragraph break]* It[apostrophe]s worth persisting about gym entry ([italic type]enter gym[roman type]) because you need a certain amount of experience to progress to the next part of the game: entering Nyantech.[paragraph break]* When you go to the center of town, the Nyantech Entrance, and try to enter the building, you[apostrophe]ll be stopped by a unicorn, who will demand proof of your experience -- a certain amount of XP, player level, gym trophies, and medals. You gain gym trophies by winning gym battles. Medals are awarded liberally for interacting with the environment; chances are that if you have all the other criteria satisfied, you will also have enough medals (you can list your medals with [italic type]examine medals[roman type]). Some examples of things that yield medals: taking [italic type]inventory[roman type], examining yourself ([italic type]examine me[roman type]), [italic type]examine phone[roman type], or even waiting ([italic type]wait[roman type], or [quotation mark][italic type]z[roman type][quotation mark])."


To say NWLA:
	say "* Visting Nyantech Headquarters is the pinnacle of your gaming career, so you[apostrophe]ll want to look around. You[apostrophe]ll notice that there are two ways of navigating between floors of the building: stairs or elevator. The stairs run up the north side of the building. The elevator can be called by typing ([italic type]press call button[roman type]) and waiting for the doors to open. Once inside the elevator, [italic type]examine panel[roman type] and [italic type]press button[roman type] of your choice.[paragraph break]* Security for the entire building depends on a color-coded access scheme. Initially, your badge is white, affording you access to the Ground Floor (Lobby) and top floor (Cafeteria, Beverages, Snacks, Ball Pit, and the Observation Deck). Maps of the ground and top floor are included in the [quotation mark]diagrams[quotation mark] file.[paragraph break]* Navigate to the Cafeteria (top) level, and then [italic type]northwest[roman type] ([italic type]nw)[roman type] to Beverages.[paragraph break]* [italic type]Drink the Kool-Aid[roman type]. Literally. Now your badge is green."
	
To say NGLA:
	say "* Next stop is the Legal Department located on the level below the Lobby, and now accessible by either elevator or stairs.[paragraph break]* [italic type]Examine the computer screen[roman type] there, which invites you to become a Nyantech Beta Tester. Follow the instruction to [quotation mark][italic type]touch agree[roman type][quotation mark]. This will open the Beta-Testing Door to the [italic type]south[roman type].[paragraph break]* The room one more to the [italic type]south[roman type] is the Cousteau Room, and its garage-door like barrier is locked. You need a garage door remote from the desk drawer in the Legal Department. In addition to [italic type]open drawer[roman type] and [italic type]get remote[roman type], you will need to [italic type]put batteries into the remote[roman type]. [italic type]Take the clock, open the panel[roman type] on its back, and [italic type]take the batteries[roman type], then [italic type]put batteries in remote[roman type].[paragraph break]* Go [italic type]south[roman type] again to stand next to the Cousteau Room door and [italic type]press button[roman type] to activate the remote. When the door retracts, walk [italic type]south[roman type] and [italic type]get the wetsuit[roman type].[paragraph break]* Navigate back up to the Ball Pit on the top level ([italic type]east[roman type] from the cafeteria).[paragraph break]* You can [italic type]wear wetsuit[roman type] before going [italic type]east[roman type] from the cafeteria or walk into the pit first and then put it on. After you [italic type]wear the wetsuit[roman type], go [italic type]down, down, down[roman type]. You will have an encounter at the bottom of the pit that will turn your badge blue."
	
To say NBLA:
	say "* Take the stairs to one floor below Legal Department. The [quotation mark]diagram[quotation mark] will show the full layout of the building. You can now [italic type]go south[roman type] through the blue door to the Rick Astley Memorial Shrine.[paragraph break] * [italic type]Get walkman[roman type].[paragraph break] * Navigate [italic type]up[roman type] to the Lobby.[paragraph break] * [italic type]Wear walkman[roman type] will drown out subsonic noise that repels people from the LAN Closet. You are now immune, so [italic type]go east[roman type] into the LAN Closet. [italic type]Turn off the phonograph[roman type] or [italic type]break the record[roman type] so you don[apostrophe]t have to keep listening to Rick Astley music.[paragraph break] * Your goal is to get to the Nyantech Cat, which orbits the building. To do so, you need to immobilize the cat on the south side of the building. [italic type]Examine cat control[roman type] to see the cat[apostrophe]s current position, then [italic type]pull plunger[roman type] to halt its rotation. The cat has momentum, so you need to wait until the indicator shows [quotation mark]N[quotation mark] and then pull the plunger, in order for it come to rest in the [quotation mark]S[quotation mark] position.[paragraph break] * Now navigate to the top level, out to the observation deck, and around to the southern side of the deck.[paragraph break] * [italic type]Unclip chain[roman type] from the railing. Then, either [italic type]go south[roman type] or [italic type]jump[roman type]. Either way, you[apostrophe]ll end up on top of the giant mechanical cat.[paragraph break] * On the cat, use [quotation mark][italic type]fore[roman type][quotation mark] ([italic type]f[roman type]) and [quotation mark][italic type]aft[roman type][quotation mark] ([italic type]a[roman type]) directions to navigate.[paragraph break] * Go [italic type]aft[roman type] to the Maintenance Hatch, then [italic type]down[roman type] to the Captain[apostrophe]s Cabin. Finally, go [italic type]fore[roman type] to the cockpit (Cat[apostrophe]s Head). Your badge should turn red."
	
To say NRLA:
	say "* You can[apostrophe]t jump back up to the observation level, so you need to go out the support boom. Go [italic type]aft[roman type] as far as you can to the Gantry Chamber and then [italic type]outside[roman type] to the Gearing Assembly part of the building.[paragraph break]* Now, go [italic type]down[roman type] as far as possible, eventually crashing through the ceiling of the LAN Closet.[paragraph break]* Go [italic type]west[roman type] to the Lobby and then take the stairs to the bottom. From there, through the red door.[paragraph break] *[italic type]Drink[roman type] or [italic type]drop champagne[roman type] as you like, or [italic type]examine the dais[roman type] to advance the scene.[paragraph break]* Follow Elon Musk [italic type]down[roman type] to the MuskPod Station.[paragraph break]* Now [italic type]enter the MuskPod[roman type]. To get it moving, [italic type]touch[roman type] or [italic type]examine the display[roman type]."
	
To say pogolandOverview:
	say "There is a major paradigm shift in Pogoland -- Pogoman GO! is less a game, and more a fight to survive. You may be hunting pogomen, but they are hunting you. There is a way out of Pogoland, if you survive long enough to accomplish it. However, several other ends are also possible. First, let[apostrophe]s cover some pointers about how to survive, then an escape plan, and finally how to deal with various things that could happen to you."

To say survivingPogoland:
	say "* Superficially, Pogoland is like the town where you began. You can use your scanner ([italic type]scan[roman type]) to see the town. It is smaller (5 x 5) and has pogostops but not gyms -- because fighting now takes place in the streets.[paragraph break] * As you notice when you arrive in Pogoland, if you [italic type]drop[roman type] a pogoman from your stock, it will stand guard, protecting an area. These defending pogomen are loyal to your team.[paragraph break] * If you move around ([italic type]n, e, w, s[roman type]), eventually you will encounter enemy pogomen who will attack you. You have five health levels (healthy, bruised, moderately wounded, near death, and dead). If you die, either at the hands of an enemy pogoman or by going too far over a town border, you will resurrect at the local hospital.[paragraph break] * You can [italic type]eat pogoMeth[roman type] to heal yourself, but it will scramble your senses for a few turns.[paragraph break] * If you are in a location where there is a defending pogoman and an attacking pogoman arrives, it will first battle the defender, buying you some time. Your defender may win or lose, but even if it wins, it will be wounded, and you may want to [italic type]heal[roman type] it.[paragraph break] * If you are facing an attacker, your defensive choices include [italic type]drop[roman type] a defender (one per location), [italic type]hit[roman type] the attacker, [italic type]capture[roman type] the attacker (who then becomes loyal), or just [italic type]go[roman type] in another direction; chances are the attacker will not pursue. You can also avail yourself of your [italic type]special attack[roman type], which does a lot of damage but consumes XP."
	
To say escapingPogoland:
	say "* There is a motorboat below the Wharf (see diagram) on the eastern side of town. To escape by boat, [italic type]get the watering can[roman type] from the Botanical Garden, [italic type]dump the watering can[roman type], and [italic type]fill the watering can[roman type] at the Service Station.[paragraph break]* Navigate back to the Wharf, [italic type]down[roman type] to the fishing boat, [italic type]push the motor[roman type] (which was tilted up out of the water), [italic type]open the gas tank, fill the gas tank, tighten the gas cap, engage the choke[roman type], and [italic type]pull the cord[roman type]. This leads to one possible ending of the story."
	
To say beingCaptured:
	say "* Eventually, pogomen start throwing pogoBalls at you. If you are lucky, you might be able to [italic type]hit pogoBall[roman type] to bust out.[paragraph break]* If you can[apostrophe]t escape a pogoBall, you will end up in a gym pit against an extra-strong opponent. Your options here are the same as on the street, but you can also escape the gym by [italic type]climb rope[roman type].  If you are killed by the opponent (somewhat sublethally as it turns out), you will be scooped back up in a pogoBall and dropped off in the PogoChum Processing part of Nyantech Headquarters. If you manage to defeat the opponent, the only way out of the gym is to climb the rope.[paragraph break]* Given long enough, you will be captured by a pogoman and not succeed in escaping from the ball. In that case, you will be [quotation mark]transferred to the Professor[quotation mark], again ending up on the PogoChum Processing floor of Nyantech HQ."
	
To say bossBattle:
	say "Soon after arrival in PogoChum Processing, you are assaulted by Elon Musk. There[apostrophe]s nowhere to run -- with your access level, you can[apostrophe]t operate the purple-level elevator and there are no stairs.[paragraph break]* There is a way out, though: meat hooks travel along a track in the ceiling. If you [italic type]jump[roman type], you can ride one right out of that part of the building, and Musk will not be able to follow. However, if he is alive, he will keep attacking you, so you will probably need to have enough pogoMeth on hand to keep healing yourself until you clear the area.[paragraph break]* Violence is an acceptable answer at this point. You have all your options including [italic type]drop[roman type] to deploy a defending pogoman to help, [italic type]attack Elon Musk[roman type], or [italic type]special attack Elon Musk[roman type].[paragraph break]* Aside from fighting, you may also be able to dispose of Elon Musk by capturing him in a pogoBall.[paragraph break]* This fight is for realsies. If Musk kills you, it[apostrophe]s Game Over.[paragraph break]* If you win the fight, you can [italic type]take golden badge[roman type], which is clipped to his lab coat. You now have access to every floor on the elevator, and each leads to an ending.[paragraph break]* [italic type]Undo[roman type] is not disabled, so you could check out some of the other endings (some depend on choices made earlier in the story, so not every final scene is reachable from this point).[paragraph break]* There are two possible endings from a short scene in Legal Department if you choose that level.[paragraph break]* After every ending (some more successful than others), you can check out some game statistics and trivia by typing [quotation mark][italic type]amusing[roman type][quotation mark]."
	
Section 12 - Expert Mode

expertModing is an action out of world. Understand "expert mode" as expertModing. 

Check expertModing:
	if the expertMode of the player is true:
		say "You are already in expert mode. There is no expert expert mode, sadly.";
		stop the action;
	otherwise:
		say "Are you sure you want to engage expert mode? ";
		let T be pogoBallsCarried of the player plus pogoChumsCarried of the player plus pogoMethsCarried of the Player plus pogoEggsCarried of the player plus pogoIncenseCarried of the Player;
		let P be 0;
		repeat with N running from 1 to MODE_POGOMEN_INVENTORY_LIMIT:
			choose row N in the Table of Inventory;
			if there is no pogoName entry:
				break;
			let P be P plus one;
		if T is greater than EXPERT_POGOITEM_INVENTORY_LIMIT or P is greater than EXPERT_POGOITEM_INVENTORY_LIMIT:
			say "You are forewarded that it will exclude some of your current inventory (the limit is [EXPERT_POGOITEM_INVENTORY_LIMIT] game items and [EXPERT_POGOMEN_INVENTORY_LIMIT] pogomen. ";
		say "Once engaged, there is no going back. Are you that fearless (y/n)?";
		if the player consents:
			say "Okay. Buckle your seat belt. Engaging expert mode...[paragraph break]";
			bestow "Reckless Disregard for Self Preservation";
		otherwise:
			say "No prob. If you decide later, you can still engage expert mode or you can restart and enter expert mode from the beginning, if you[apostrophe]d prefer.";
			stop the action.

Carry out expertModing:
	now the expertMode of the player is true;
	now MODE_POGOSTOP_LOCKOUT_DURATION is EXPERT_POGOSTOP_LOCKOUT_DURATION;
	now MODE_MIN_PL_POGOSTOPS is EXPERT_MIN_PL_POGOSTOPS;
	now MODE_MAX_PL_POGOSTOPS is EXPERT_MAX_PL_POGOSTOPS;
	now MODE_PREPOGO_ENCOUNTER_VALUE is EXPERT_PREPOGO_ENCOUNTER_VALUE;
	now MODE_POGO_ENCOUNTER_VALUE is  EXPERT_POGO_ENCOUNTER_VALUE;
	now MODE_CAPTURE_EVOL1_DIFFICULTY is EXPERT_CAPTURE_EVOL1_DIFFICULTY;
	now MODE_CAPTURE_EVOL2_DIFFICULTY is EXPERT_CAPTURE_EVOL2_DIFFICULTY;
	now MODE_CAPTURE_EVOL3_DIFFICULTY is EXPERT_CAPTURE_EVOL3_DIFFICULTY;
	now MODE_SPECIAL_ATTACK_XP_COST is  EXPERT_SPECIAL_ATTACK_XP_COST;
	now MODE_MUSK_DEF is EXPERT_MUSK_DEF;
	now MODE_POGOSTOP_LOCKOUT_DURATION is EXPERT_POGOSTOP_LOCKOUT_DURATION;
	now MODE_POGOMEN_INVENTORY_LIMIT is EXPERT_POGOMEN_INVENTORY_LIMIT;
	now MODE_POGOITEM_INVENTORY_LIMIT is EXPERT_POGOITEM_INVENTORY_LIMIT;
	sort the Table of Inventory in wounded order;
	repeat with N running from (EXPERT_POGOMEN_INVENTORY_LIMIT + 1) to POGOMEN_INVENTORY_LIMIT:
		choose row N in the Table of Inventory;
		blank out the whole row;
	let P be the EXPERT_POGOITEM_INVENTORY_LIMIT;
	if the pogoBallsCarried of the player is at least P:
		now the pogoBallsCarried of the player is P;
	now P is P minus pogoBallsCarried of the player;
	if the pogoMethsCarried of the player is at least P:
		now the pogoMethsCarried of the player is P;
	now P is P minus pogoMethsCarried of the player;
	if the pogoChumsCarried of the player is at least P:
		now the pogoChumsCarried of the player is P;
	now P is P minus pogoChumsCarried of the player;
	if the pogoEggsCarried of the player is at least P:
		now the pogoEggsCarried of the player is P;
	now P is P minus pogoEggsCarried of the player;
	if the pogoIncenseCarried of the player is at least P:
		now the pogoIncenseCarried of the player is P;
	if the pogoBallsCarried of the player is 0:
		move the pogoBall to the void;
	if the pogoMethsCarried of the player is 0:
		move the pogoMeth to the void;
	if the pogoChumsCarried of the player is 0:
		move the pogoChum to the void;
	if the pogoEggsCarried of the player is 0:
		move the pogoEgg to the void;
	if the pogoIncenseCarried of the player is 0:
		move the pogoIncense to the void.

Section 13 - Command Command

Commanding is an action out of world. Understand "command" or "commands" as commanding.

Carry out commanding:
	say "Here are some less commonly used commands that are currently available:[paragraph break]* capture (a pogoman)[line break]* clip/unclip (something)[line break]* commands[line break]* evolve (a pogoman)[line break]* expert mode[line break]* feed (a pogoman)[line break]* fill/empty (something)[line break][if  Exploring the Tower has ended]* guards[line break][end if]* heal (a pogoman)[line break]* pogodex[line break]* reboot[line break]* scan[line break][if Exploring The Tower has ended]* special attack (someone)[line break][end if]* spin (a pogostop)[line break]* transfer (a pogoman)[paragraph break]".

Section 14 - Pogodex

Pogodexing is an action applying to nothing. Understand "pogodex" or "catalog" or "catalogue" or "library" or "list" as pogodexing. 

Carry Out Pogodexing:
	say line break;
	say fixed letter spacing;
	say "You have collected [number of entries in POGODEXLIST] out of 48 pogomen![paragraph break]";
	repeat with N running from 1 to the number of rows in the Table of Evolution:
		choose row N in the Table of Evolution;
		say Category entry in title case;
		say ": ";
		pad "[Category entry]: " spaces;
		if original entry is listed in POGODEXLIST:
			say "[Original entry]" in title case;
			pad "[Original entry]" spaces;
		otherwise:
			say "[mystery]";
			pad "[mystery]" spaces;
		say " ";
		if the ev2 entry is listed in POGODEXLIST:
			say "[ev2 entry]" in title case;
			pad "[ev2 entry]" spaces;
		otherwise:
			say "[mystery]";
			pad "[mystery]" spaces;
		say " ";
		if the ev3 entry is listed in POGODEXLIST:
			say "[ev3 entry]" in title case;			
		otherwise:
			say "[mystery]";
		say line break;
	say line break;
	say roman type;
	if the hasPogodexed of the player is false:
		now the hasPogodexed of the player is true;
		if the number of entries in POGODEXLIST is 48:
			say "Congratulations! You have hunted down every last species![paragraph break]";
		otherwise:
			let R be 48 - the number of entries in POGODEXLIST;
			say "Only [R in words] to go! Happy hunting![paragraph break]";
		bestow "Got Your Ducks In A Row".
		
To say mystery:	
	say "??????[run paragraph on]".	
		
To pad (glyphs - text) spaces:
	let MAXLEN be 15; [number of characters in longest pogotype]
	let S be the number of characters in glyphs;
	let S be MAXLEN minus S;
	if S is greater than 0:
		repeat with N running from 1 to S:
			say " ".
	
To add a (creature - a pogotype) to the pogodex:
	add the creature to POGODEXLIST;
	say "Adding your first ";
	say "[creature]" in title case;
	say " to the Pogodex (use the command [italic type]pogodex[roman type] to see them all).[paragraph break]";
	awardXP NEW_POGODEX_XP_VALUE;
	if the number of entries in POGODEXLIST is 24:
		say "You have collected 24 of 48 pogomen.[paragraph break]";
		bestow "Playing With Half A Dex";
	if the number of entries in POGODEXLIST is 48:
		say "You have collected all 48 pogomen.[paragraph break]";
		bestow "Collected [apostrophe]em All!";
		say "A pogogram pops up on your phone:[paragraph break]";
		say "[fixed letter spacing]MESSAGE BEGINS[paragraph break]TO: POGOMASTER STOP[line break]FROM: POGOMANAGEMENT STOP[line break]PRIORITY: ULTRA STOP[line break]NEWS OF YOUR ACHIEVEMENT HAS REACHED HEADQUARTERS STOP[line break]YOU ARE INSTRUCTED TO REPORT IMMEDIATELY AS A BETA-TESTER CANDIDATE STOP[line break]PROCEED TO NYANTECH HQ BEST SPEED STOP[paragraph break]SIGNED M[paragraph break]MESSAGE ENDS.[roman type][paragraph break]".

Section 15 - Using

Using is an action applying to one thing. Understand "use [something]" as using.

Report Using:
	say "Could you be more specific? To see some less common commands, type [quotation mark][italic type]commands[roman type][quotation mark]."
	
Section 16 - Burning

Before burning:
	if the location of the player encloses the gasoline:
		if Not in Kansas Anymore is happening:
			gasoline death;
		else if Denouement is happening:
			MADFieryEnding;
		else if PlusQueDenouement is happening:
			LonesomeFieryEnding;
		stop the action.
		
To gasoline death:
	now the gasoline is in the void;
	if the player is in the giant ball:
		say "The interior of the plastic ball instantly transforms into an inferno. You experience searing pain, and then nothing.[paragraph break]Just when you are about to write off having any more life experiences, you begin to hear laughter and clapping. Your vision starts to return...[paragraph break]";
		teleport the player to processing;
	otherwise:	
		say "When the fumes from the gasoline encounter the flame, well, you can imagine what happens.[paragraph break]";
		frontierDeath.

Chapter Rules Modifications


Section 1 - Direct Parser Input (hung phone, get all) 

Understand "reboot/reinitialize/initialize/IPL/r" or "reboot phone" as "[rebootage]".

After reading a command:
	if the phone is hung:
		increase the ignored command count of the phone by one;
		if the player's command includes "[rebootage]":
			continue the action;
		if the player's command includes "[a direction]":
			say "[one of]No sense in walking anywhere if the game isn[apostrophe]t playing. Better reboot the phone.[or][run paragraph on][stopping]";
		if the ignored command count of the phone is:
			-- 10: 
				say "With the few remaining system resources it has at its disposal as it circles a virtual drain, the phone begs, [quotation mark]Please, reboot me… before it is too late… (>gasp<).[quotation mark][paragraph break]" instead;
			-- 20:
				say "In desperation, the phone write [quotation mark]R E B O O T[quotation mark] to its screen, one painstaking letter at a time to suggest to you that you might want to reset the crashed phone by using the [italic type]reboot[roman type] command." instead;
			-- 30:
				say "The phone falls back into emergency double redundant backup exception escape contingency mode, reaches around, and reboots itself with a sigh.";
				try rebooting the phone;
		reject the player's command;
	otherwise:	
		if the player's command includes "all":
			say "One at a time, please.";
			reject the player's command;
		if the teamColorPrompt of the player is greater than 0:
			if the teamColorPrompt of the player is:
				-- 1: 
					if the player's command includes "[color]":
						if the color understood is listed in CORE_TEAM_COLORS:
							now the team color of the player is the color understood;
							say picked a nice color;
						otherwise:
							say might as well be a politician;
					otherwise:
						say might as well be a politician;
				-- 2:
					if the player's command includes "[color]":
						if the color understood is listed in CORE_TEAM_COLORS:
							now the team color of the player is the color understood;
							say picked a nice color;
						otherwise:
							say another seizure is coming on;
					otherwise:
						say another seizure is coming on;
				-- 3:
					if the player's command includes "[color]":
						if the color understood is listed in CORE_TEAM_COLORS:
							now the team color of the player is the color understood;
							say picked a nice color;
						otherwise:
							say sweeten the deal;
					otherwise:
						say sweeten the deal;
				-- 4:
					if the player's command includes "[color]":
						if the color understood is listed in CORE_TEAM_COLORS or the color understood is listed in EXTENDED_TEAM_COLORS:
							now the team color of the player is the color understood;
							say picked a nice color;
						otherwise:
							say disgusted with indecision;
					otherwise:
						say disgusted with indecision;
			[status has to be updated here, because rejecting the command means no turn as passed, so every turn hook will not fire]
			showStatus;
			reject the player's command;
		if the PogoMeth is trippy:
			if the player's command includes "listen":
				replace the matched text with "examine";
			otherwise:
				if the player's command includes "examine":
					replace the matched text with "listen to";
				if the player's command includes "x ":
					replace the matched text with "listen to";
				if the player's command includes "read":
					replace the matched text with "listen to";
				otherwise:
					if the player's command includes "smell":
						replace the matched text with "touch";
					otherwise:
						if the player's command includes "touch":
							replace the matched text with "taste";
						otherwise:
							if the player's command includes "taste":
								replace the matched text with "smell".
				
To say disgusted with indecision:
	say "Disgusted with your indecision, your phone arbitrarily assigns you to the reviled Unbleached Titanium team, which you didn[apostrophe]t even know was a team. To drive the point home, it vibrates maniacally and locks up.[paragraph break]";
	bestow "Welcome To Team Unbleached Titanium";
	now the teamColorPrompt of the player is zero;
	now the team color of the player is Unbleached Titanium;
	freeze the phone.
	

To say sweeten the deal:
	say "Okay, tell you what. Let me sweeten the deal. Truth be told, there are some elite colors that are held aside for discerning players such as yourself. How about if in addition to [CORE_TEAM_COLORS], I throw in [EXTENDED_TEAM_COLORS]? Now how about picking one of those team colors?";
	increase the teamColorPrompt of the player by one.
	
		
To say might as well be a politician:
	bestow "Might As Well Be A Politician Because You Didn[apostrophe]t Answer The Question That Was Asked";
	say "The choice of team color is of earthshaking importance. Please pick one of the team colors ([CORE_TEAM_COLORS]).";
	increase the teamColorPrompt of the player by one.
	
To say another seizure is coming on:
	say "You better pick a color before the phone decides to lock up again. What[apostrophe]ll it be? Your choices are [CORE_TEAM_COLORS]? The phone vibrates weakly, as if another seizure is coming on.";
	increase the teamColorPrompt of the player by one.
					
To say picked a nice color:
	say "Welcome to Team [the team color of the player]![paragraph break]";
	bestow "Picked A Nice Color";	
	let R be a random number from 1 to the number of entries in CORE_TEAM_COLORS;
	let C be entry R in CORE_TEAM_COLORS;
	while C is the team color of the player:
		let R be a random number from 1 to the number of entries in CORE_TEAM_COLORS;
		let C be entry R in CORE_TEAM_COLORS;
	say "LOL. Almost immediately, you receive text notifications from all your friends letting you know that they have joined Team [C]. Guess you should have checked with them first [unicode 9785][unicode 9785][unicode 9785][paragraph break]";
	now the teamColorPrompt of the player is 0.

Section 2 - Room Headers and Headlines

To say header of (QTH - a room):
	let T be the title of the QTH;
	if T is "":
		let T be the printed name of the QTH;
	let T be T in title case;
	say "[T]".

This is the room header rule:
	say bold type;
	say header of location;
	say roman type.
	
The room header rule substitutes for the room description heading rule.

[The headline is used to say the name of rooms when that is not automatically printed, as during looking. For example, if a going action is intercepted with an instead rule]

To say the headline of (QTH - a room):
	say "[line break][bold type][header of QTH][roman type][line break]".

Section 3 - Get rid of door descriptions

 For printing a locale paragraph about a door (called the item) 
    (this is the don't mention doors in room descriptions rule): 
    set the locale priority of the item to 0; 
    continue the activity.

[
if a title isn't specified, the printed name will be used. If the printed name isn't specified, the printed name is automatically based on what ever name was used in declaring the object. Most locations are flagged as improper-named so the printed name will work correctly, i.e., "the object" instead of "object", when "the" is a phrase option.
]

Section 4 - Listing custom exits

This is the list exits rule:
	if the possible exits of the location is not "" and the player is not in the giant ball:
		say "[the possible exits of the location][paragraph break]".
		
Section 5 - Customized Inventory Details

Rule for printing inventory details of a pogoBall-kind:
	say " ([pogoBallsCarried of the player] total)[run paragraph on]"
	
Rule for printing inventory details of a pogoChum-kind:
	say " ([pogoChumsCarried of the player] total)[run paragraph on]"
	
Rule for printing inventory details of a pogoMeth-kind:
	say " ([pogoMethsCarried of the player] total)[run paragraph on]"
	
Rule for printing inventory details of a pogoEgg-kind:
	say " ([pogoEggsCarried of the player] total)[run paragraph on]"
	
Rule for printing inventory details of a pogoIncense-kind:
	say " ([pogoIncenseCarried of the player] total)[run paragraph on]"
	



Section 6 - Rotational text lists

To overhear things in (QTH - room):
	rotate the stage business of the QTH backwards;
	say entry 1 of the stage business of QTH.

Section 7 - Miscellany (probably reorganize later)

This is the run from sound rule:
	if the speaker is active and the walkman is not worn:
		say "You run screaming from the LAN closet back into the Lobby, slamming the LAN Closet Door behind you.";
		now the LAN Closet Door is closed;
		teleport the player to the Lobby.
		
After going from somewhere:
	increase the distance walked  of the player by one;
	if the distance walked of the player is listed in PEDOMETER_AWARD_DISTANCES:
		let L be "Traveler: [distance walked of the player] turns spent moving";
		bestow "[L]";
	continue the action.
	
After printing the locale description of a room (called the locale):
	if the player is in the village or the player is in pogoland:
		if the pogostop is in the locale or the gym is in the locale:
			say "The ";
		if the pogostop is in the locale:
			say header of the locale;
			say " pogostop";
		otherwise:
			if the gym is in the locale:
				say color of the locale;
				say " Gym";
		if the pogostop is in the locale or the gym is in the locale:
			say " is here.".
			
[Use teleport rather than move since it assures that the player will always be considered to have moved from a different location, so all updates will work. If, for example, a player were pseudokilled at the Hospital and then teleported to the hospital, the player will be considered to have briefly passed through the void on the way. Very metaphysical.]
To teleport the player to (destination - a room):
	now the previousRoom of the player is the void;
	move the player to the destination.
			
Section 8 - Mentioning Defenders

[This is to update the pogomen in the room; has to happen before deciding what objects to list in the room; every turn procedures would be too late, for example]

Before printing the locale description of a room:
	if the previousRoom of the player is not the location of the player:
		move the attackerPogoman to the void;[clear the attacker when moving rooms]
		move the defenderPogoman to the void;
		now the defenderPogoman is not injured;
		if Not In Kansas Anymore is happening or the player is in Pogoland Terminal:[update the defender ]
			if there is a guardian corresponding to the pogoLandQTH of the location of the player in the Table of Defenders:
				now the type of defenderPogoman is the guardian corresponding to the pogoLandQTH of the location of the player in the Table of Defenders;
				if the wounded corresponding to the pogoLandQTH of the location of the player in the Table of Defenders is true:
					now the defenderPogoman is injured;
				move the defenderPogoman to the location of the player;
	continue the action.
	
[the "or in pogoland terminal" above was added to catch the transition where player is moving as scene is changing; otherwise, the Not In Kansas Anymore condition doesn't apply, a turn goes by, and the player isn't moving between rooms, so this doesn't fire. This seems safe (but oddly redundant otherwise) since the player can only be in pogoland terminal if Not In Kansas Anymore is happening]
	
Rule for writing a paragraph about the defenderPogoman:
	say "Your[if the defenderPogoman is injured] heroically[end if] [defenderPogoman] is on guard here."

The futile to throw things at inanimate objects rule is not listed in the check throwing it at rules.
The block throwing at rule is not listed in the check throwing it at rules.

Instead of throwing something (called the projectile) at a room:
	try dropping the projectile.
	
Section 10 - Game Saving

Check saving the game: 
	if GAME_SAVED is false:
		bestow "Savior Of The Universe";
		now GAME_SAVED is true.
		
Section 11 - Modified Undoing

[
Note - yes, this creates a bit of temporal paradox if the first time a player undoes an action, the player
then follows that with more undoes. In that case, each time is the first time. My brain just melted. As a 
result, though, even if the medal is bestowed several times in a row, the player only ends up with one medal
because the medal has only been awarded once in that tlme line
]

Report undoing an action:
	say "[bracket]undo successful[close bracket][paragraph break]";
	if GAME_UNDONE is false:
		bestow "Altered Fabric Of Time-Space";
		now GAME_UNDONE is true;
	say the headline of the location of the player;
	the rule succeeds.
	
Chapter Activities

Section ShowStatus

To ShowStatus:
	let C be "[securityColor of the badge]";
	if pogoLevel of the player is greater than topLevel of the player:
		now topLevel of the player is pogoLevel of the player; [decouple level from XP after NIKA]
	now the left hand status line is "PogoLevel: [topLevel of the player][if the team color of the player is not None]  |  Team: [team color of the player][end if][if the Lobby is visited]  |  Badge: [C in title case]";
	now the right hand status line is "XP: [XP of the player]".
	

Section AwardXP

[moral equivalent of a global game score -- simply "AwardXP 30" when needed, and leveling will happen automatically.]

To AwardXP (award - a number):
	increase the XP of the player by award;
	if SUPPRESSMEDALS is false:
		say "(You receive [award] XP!)[run paragraph on]";
		say paragraph break.
	

Chapter Actions

Section 1 - Guarding

Guarding is an action applying to nothing. Understand "guard" or "guards" as guarding.

Check guarding:
	if Exploring the Tower has not happened:
		say "This feature not available at present.";
		the rule fails.

Carry out guarding:
	let ONGUARD be false;
	repeat with N running from 1 to the number of rows in Table of Defenders:
		if there is a guardian in row N of the Table of Defenders:
			let ONGUARD be true;
			break;
	if ONGUARD is false:
		say "No loyal pogomen hold defensive positions[one of]. Any that were out there must have fallen to enemy pogomen[or][stopping].";
	otherwise:
		say "Loyal Pogomen guard:[paragraph break]";
		repeat with N running from 1 to the number of rows in Table of Defenders:
			choose row N in the Table of Defenders;
			if there is a guardian entry:
				let G be "[guardian entry]" in title case;
				say "[pogoLandQTH entry]: [G] [if wounded entry is true](wounded)[end if][line break]".

Section 2 - Spinning

Spinning is an action applying to a thing. Understand "spin [something]" as spinning.

Check spinning:
	if the noun is not a pogostop:
		say "That[apostrophe]s probably not some";
		if the noun is a person:
			say "one";
		otherwise:
			say "thing";
		say " you should spin.[paragraph break]";
		stop the action;
	otherwise:
		if the TURNCOUNTER minus the time stamp of the location of the player is less than the MODE_POGOSTOP_LOCKOUT_DURATION and the superuser of the player is false:
			say "The pogostop spins around and around. Your phone makes a sad face and says, [quotation mark]Sorry. Try again later.[quotation mark][paragraph break]";
			stop the action;
		otherwise:
			continue the action;

Carry out spinning:
	let T be pogoBallsCarried of the player plus pogoChumsCarried of the player plus pogoMethsCarried of the Player plus pogoEggsCarried of the player plus pogoIncenseCarried of the Player;
	if T is MODE_POGOITEM_INVENTORY_LIMIT:
		say "Your game inventory is already maxed out at [MODE_POGOITEM_INVENTORY_LIMIT] items (not counting pogomen).";
		stop the action;
	otherwise:
		now the booty of the pogostop is {};
		let T be pogoBallsCarried of the player plus pogoChumsCarried of the player plus pogoMethsCarried of the Player plus pogoEggsCarried of the player plus pogoIncenseCarried of the Player;
		let B be a random number between 1 and 4;
		[guarantees at least one item is produced by the stop]
		if T plus B is greater than MODE_POGOITEM_INVENTORY_LIMIT:
			let B be MODE_POGOITEM_INVENTORY_LIMIT minus T;
		if B is greater than 0:
			add "[B] pogoBall[if B is greater than 1]s[end if]" to the booty of the pogostop;
			increase pogoBallsCarried of the player by B;
			move the pogoBall to the player;
		let T be pogoBallsCarried of the player plus pogoChumsCarried of the player plus pogoMethsCarried of the Player plus pogoEggsCarried of the player plus pogoIncenseCarried of the Player;
		let C be a random number between 0 and 1;
		if T plus C is greater than MODE_POGOITEM_INVENTORY_LIMIT:
			let C be MODE_POGOITEM_INVENTORY_LIMIT minus T;
		if C is greater than 0:
			add "[C] pogoChum[if C is greater than 1]s[end if]" to the booty of the pogostop;
			increase pogoChumsCarried of the player by C;
			move the pogoChum to the player;
		let T be pogoBallsCarried of the player plus pogoChumsCarried of the player plus pogoMethsCarried of the Player plus pogoEggsCarried of the player plus pogoIncenseCarried of the Player;
		let M be a random number between 0 and 1;
		if T plus M is greater than MODE_POGOITEM_INVENTORY_LIMIT:
			let M be MODE_POGOITEM_INVENTORY_LIMIT minus T;
		if M is greater than 0:
			add "[M] pogoMeth[if M is greater than 1]s[end if]" to the booty of the pogostop;
			increase pogoMethsCarried of the player by M;
			move the pogoMeth to the player;
		let T be pogoBallsCarried of the player plus pogoChumsCarried of the player plus pogoMethsCarried of the Player plus pogoEggsCarried of the player plus pogoIncenseCarried of the Player;			
		let EYE be a random number from 0 to 1;
		if T plus EYE is greater than MODE_POGOITEM_INVENTORY_LIMIT:
			let EYE be MODE_POGOITEM_INVENTORY_LIMIT minus T;
		if EYE is greater than 0:
			add "[EYE] pogoIncense" to the booty of the pogostop;
			increase pogoIncenseCarried of the player by EYE;
			move the pogoIncense to the player;
		let T be pogoBallsCarried of the player plus pogoChumsCarried of the player plus pogoMethsCarried of the Player plus pogoEggsCarried of the player plus pogoIncenseCarried of the Player;
		let E be a random number from 0 to 1;
		if T plus E is greater than MODE_POGOITEM_INVENTORY_LIMIT:
			let E be MODE_POGOITEM_INVENTORY_LIMIT minus T;
		if E is greater than 0:
			add "[E] pogoEgg[if E is greater than 1]ses[end if]" to the booty of the pogostop;
			increase pogoEggsCarried of the player by E;
			move the pogoEgg to the player;
		say "The pogostop spews out [booty of the pogostop], which you quickly scoop up[one of]. Your pogostop booty shows up immediately in your inventory and is ready for use[or][stopping].[paragraph break]";
		awardXP POGOSTOP_XP_VALUE;
		now the time stamp of the location of the player is the TURNCOUNTER.

Section 3 - Help

Helping is an action applying to nothing. Understand "help" as helping.

Report Helping:
	say "In the interest of not fostering further dependency behavior, your wearisome cries for help will henceforth be ignored."
	
Instead of helping for the first time:
	say "That[apostrophe]s what the internet is for. This had to be cranked out immediately due to market demand. Quality control be damned! Jimmy, our official beta-tester down at the plasma donation center, seemed reasonably happy without a help feature, so apparently it[apostrophe]s not really important.[paragraph break]According to Jimmy, folks already know about [italic type]commands[roman type] like [quotation mark][italic type]x[roman type][quotation mark] for [italic type]examine[roman type], [quotation mark][italic type]i[roman type][quotation mark] for [italic type]inventory[roman type], and so on. It is sure is lucky that we have a professional like Jimmy on retainer.[paragraph break]If you care enough to ask for help again, we will think about implementing the feature.[paragraph break]";
	bestow "Here, let me Google that for you".
	
Instead of helping for the second time:
	say "Not joking about the website: PogomanGo.templaro.com.[paragraph break]Besides, what you are probably looking for is [italic type]hints[roman type], right? Hints are context-sensitive and will relate to whatever goals stand between you and the next step in your pogoman adventure. They are arranged to reveal gradually to try to avoid spoilers.[paragraph break]";
	bestow "Type [apostrophe][italic type]hints[roman type][apostrophe] for hints".
	
Instead of helping for the third time:
	say "There is no more help to be had here, but here[apostrophe]s a medal for your trouble.[paragraph break]";
	bestow "Needy".
	
Instead of helping for the fourth time:
	say "In the interest of not fostering further dependency behavior, your wearisome cries for help will henceforth be ignored. Consider it [quotation mark]tough love[quotation mark].[paragraph break]No medal for you.";
		
Section 4 - About

Abouting is an action applying to nothing. Understand "about" or "info" or "menu" or "information" or "ls" as abouting.

Carry out abouting:
	say "Don[apostrophe]t have an android or iOS device? Lost your phone under the couch? Are you wandering in a cave with no GPS? No problem. You can still enjoy Pogoman GO!"
	
After abouting for the first time:
	bestow "Typed a Meta-Command” .


Section 5 - Credits

Crediting is an action applying to nothing. Understand "credit" or "credits" or "blame" or "who" as crediting.
	
Report crediting:
	say "We[apostrophe]d like to thank the following folks for participating in development of this, what? Game? Œuvre? Yes, that sounds very fancy. Thanks, everyone![paragraph break]Early Concept Review:[line break]* Sam Kabo Ashwell[line break]* Jacqueline Lott[paragraph break]Beta-testers:[line break]* Hugo Labrande[line break]* Dan Biemer[line break]* Denise Jobin Welch[line break]* Lara Welch[line break]* Jenni Polodna[line break]* John Lodder[line break]* Aaron Reed[line break]* Davy Krieger[line break]* Mike VanHelder[line break]* Duncan Bowsman[paragraph break]Cover Art:[line break]* Ben Collins-Sussman[paragraph break]Inform 7 Extensions:[line break]* Emily Short (Basic Screen Effects and Menus)[line break]* Eric Eve (Adaptive Hints)[line break]* Erik Temple (Undo Output Control)[line break]* Juhana Leinonen (Object Response Tests)[paragraph break]Music credits are available with the command [quotation mark]music credits.[quotation mark][paragraph break]";
	bestow "So, who is to blame?".
	
Section 6 - Music Credits

MusicCrediting is an action out of world. Understand "music credits" as musicCrediting.

Carry out musicCrediting:
	do nothing.

Report musicCrediting:
	roll music credits.
	
Section 7 - Waving

Instead of waving hands, say "You wave your cell phone around in the air, dissipating heat."
	
Section 8 - Leveling

[ For reference:
	
50	1
200	2
450	3
800	4
1250	5
1800	6
2450	7
3200	8
4050	9
5000	10

]

To decide which number is the goalXP after level (N - a number):
	decide on 50 * (N + 1) * (N + 1);

To CheckLevel:
	let L be the pogoLevel of the player;
	if XP of the player > the goalXP after level L:
		now pogoLevel of the player is square root of (xp of the player / 50);
		say "You glow with power as your PogoLevel rises to [pogoLevel of the player].[paragraph break]";
		if L is less than GYM_ENTRY_LEVEL_REQUIREMENT and pogoLevel of the player is at least GYM_ENTRY_LEVEL_REQUIREMENT:
			pickGym.
		
		
To pickGym:
	say "Your credit score soars, and gyms are now willing to talk to you. You should pick a team color so you can accessorize! Your choices are: [CORE_TEAM_COLORS]. Which one is right for you?";
	now the teamColorPrompt of the player is 1.
	[and the rest is handed under the "after reading a command" section because it involves direct input from
	 the command line]

Section 9 - Rebooting

PhoneBooting is an action applying to nothing. Understand  "r" or "reboot"  or "reinitialize" or "initialize" or "IPL" or "unlock phone" or "reboot game" as phoneBooting. 

Carry out phoneBooting:
	try rebooting the phone.

Rebooting is an action applying to one thing. Understand "reboot [something]" as rebooting.

Check rebooting:
	if the noun is not the phone:
		say "You can't reboot that.[paragraph break]" instead;
	if the noun is the phone:
		if the phone is not hung:
			say "The phone says that it [one of]has not crashed[or]is just fine[or]has not suffered a system malfunction[or]is functioning within nominal parameters[or]has better things to do with its machine cycles[in random order] and refuses to reboot[one of], because rebooting takes a lot out of it, and it just doesn[apostrophe]t feel like it.[or] and suggests that you take an unnecessary nap for a while instead.[or], but does take a few minutes for what it calls [quotation mark]me[quotation mark] time forcing you to wait while it downloads the latest updates to system software.[or] on principle.[or]. It notes that were it actually hung, it would not be able to refuse to boot, so QED.[or], but instead quotes [quotation mark]I[apostrophe]ll give you boot, I[apostrophe]ll give you three for one![quotation mark], and pedantically adds, [quotation mark]Shakespeare, [italic type]Troilus and Cressida[roman type], Act IV, Scene V.[quotation mark][line break][or].[stopping][run paragraph on][paragraph break]" instead.
	
Carry out rebooting:
	now the phone is not hung;
	now BLOCKPOGOMANFLAG is false;	
	now the ignored command count of the phone is 0.
	
Report rebooting:
	say "You reboot the phone."	

After rebooting:	
	increase the times rebooted of the phone by one;
	if the times rebooted of the phone is:
		-- 1: 
			say "The phone reboots. When it again has its wits, the phone draws your attention to the fact that if this ever happens again, which the phone points out is a vanishingly small possibility, but nevertheless, if the phone needs to be rebooted at some point in the future, you can avail yourself of the short-cut [quotation mark]r[quotation mark] to reboot.[paragraph break]The phone goes on for some time about how odd it is that a short-cut was developed for something that happens so infrequently and how it thinks developers should have better things to do than create such useless short-cuts.[paragraph break]";
			bestow "Successfully rebooted your phone”;
			try looking;
		-- 2:
			say "The phone takes its own sweet time in rebooting, almost as if it wants to punish you. [paragraph break]The splash screen appears and progress bar advances... until it doesn[apostrophe]t for a while.[paragraph break]Oh no. It seems to be stuck about halfway through the reboot.  Looks like another reboot might be in order.";
			freeze the phone;
		-- 3:
			say "The phone rolls its figurative eyes and reboots.[paragraph break]";
			try looking;
		-- 4:
			say "The phone starts to reboot, but strangely stops mid-way through and clears the screen. The following text appears:[paragraph break]WOULD YOU RATHER PLAY A NICE GAME OF GLOBAL THERMONUCLEAR WAR?_";
			if the player consents:
				say "[line break]Your phone replies, [quotation mark]Great! Maybe later. Let[apostrophe]s see how the rest of the day goes[run paragraph on]";
			otherwise:
				say "[line break]With a bit of disappointment, your phone replies, [quotation mark]Okay, be that way. More Pogoman GO! it is, then[run paragraph on]";
			say ",[quotation mark] and finishes rebooting.";
			try looking;
		-- 5:
			say "After the usual reboot sequence, the phone begins installing an app update and displays a notification from Nyantech:[paragraph break][quotation mark]Although there is nothing at all wrong with our software -- [italic type]and never was[roman type] -- we are nonetheless providing a software update that should mostly fix it.[quotation mark][paragraph break]The update finishes, and you are back in the game.";
			try looking;
		-- otherwise:
			say "The phone reboots.";
			try looking.
			

Instead of doing something when the phone is hung for the first time:
	if the current action is phoneBooting or rebooting:
		continue the action;
	otherwise:
		say "Your phone has locked up. Since you only use it to play Pogoman GO!, you might as well [italic type]reboot[roman type] it."
		
Section 10 - Swimming

Swimming is an action applying to nothing. Understand "swim" as swimming.

Check swimming:
	if the player is not in the BallPit Area:
		say "You make vaguely swimming motions, but don[apostrophe]t seem to be getting anywhere." instead.
		
Report swimming:
	if the player is in the Ball Pit:
		say "You swim around in the sea of rubber balls. You [one of ]consider having one of these installed in your own house (although that would take income, which would mean a job, so... nah)[or]are getting quite good at it, in fact[or]seem to be a natural[or]find it relaxing[or]take a few laps around the pit[stopping].";
	otherwise:
		say "You swim through a mass of rubber balls."
		
Section 11 - Diving

Diving is an action applying to nothing. Understand "dive" or "sink" or "descend" or "submerge" as diving.

Check Diving:
	try going down instead.

Section 12 - Playing

Understand "play [a thing]" as switching on.

Understand "stop [a thing]" as switching off.

Section 13 - TapeFailing

tapeFailing is an action applying to one thing. Understand "fast forward [a thing]" or "reverse [a thing]" or "rewind [a thing]" or "record [a thing]" or "eject [a thing]" as tapeFailing.

Report tapeFailing:
	if the noun is the walkman:
		say "The only function that seems to work on this Reagan-era relic is [quotation mark]Play[quotation mark].";
	otherwise:
		say "That doesn[apostrophe]t seem to be an option."
		
Section 14 - Special Attack

Special attacking is an action applying to one thing. Understand "special attack [something]" as special attacking when Exploring The Tower has ended.

Check special attacking:
	if the noun is not a person:
		say "You special attack can only be unleashed on living tissue.";
		stop the action;
	else if the noun is the player:
		say "You cannot turn your inner power against yourself. It is sort of a tautology.";
		stop the action;
	else if the noun is the defenderPogoman:
		say "Your [team color of the player] Energy cannot harm one of your own pogomen.";
		stop the action;
	else if the xp of the player is less than the MODE_SPECIAL_ATTACK_XP_COST:
		say "You are too low on XP to muster a special attack, a few bits of scintillating blue energy dribble out of your phone.";
		stop the action;
	else:
		continue the action.
		
Carry out special attacking:
	let AA be "[type of attackerPogoman]";
	let DD be "[type of defenderPogoman]";
	if the location of the player is in Pogoland:
		say "You channel your XP into you special attack and with a thunderclap, a blue-hot frothing stream of raw energy flashes from your phone to the [noun], which is vaporized instantly!";
		move the noun to the void;
	else if the location of the player is the Gymnasium:
		say "You channel your XP into you special attack and with a thunderclap, a blue-hot frothing stream of raw energy flashes from your phone and strikes your opponent, the [AA]";
		if the attackerPogoman is injured:
			say ". It is entirely engulfed in the blast ";
			if a random chance of 75 in 100 succeeds:
				say "and is obliterated![paragraph break]There is a sound of clapping, and someone says [quotation mark]Well done, well done.[quotation mark][paragraph break]";
				teleport the player to Processing;
			otherwise:
				say "but seems to weather it.";
		otherwise:
			if a random chance of 50 in 100 succeeds:
				say ", who falls to its knees and appears to be wounded.";
				now the attackerPogoman is injured;
			otherwise:
				say ", who weathers the blast without apparent damage.";
	else if the player is in processing:
		if the isDangling of the meat hooks is true:
			say "You drop from the meat hook to make your special attack.";
			now the isDangling of the meat hooks is false;
		say "You concentrate your XP into a precision blast aimed at [if the vitality of Elon Musk is dead]the corpse of Elon [end if]Musk. The scintillating blue energy flies from your fingertips";
		if the vitality of Elon Musk is dead:
			say ". The inanimate corpse is reduced to cinders, which scatter";
			if the goldenBadge is worn by Elon Musk:
				say ", leaving behind only a golden badge.[paragraph break]";
				move the goldenBadge to Processing;
				if the defenderPogoman is in Processing:
					say "Spooked by the intensity of your attack, the [DD] flees the crime scene.";
			otherwise:
				say ".[paragraph break]";
			move Elon Musk to the void;
			bestow "Kill It With Fire!";
		else:
			say " and [one of]slams into[or]is channeled into[or]unleashes its fury open[or]drives into[or]hits[or]explodes against[in random order] Musk. He looks ";
			if the vitality of Elon Musk is dead:
				say "on death[apostrophe]s doorstep";
			otherwise:
				say "[vitality of Elon Musk]";
			say ".";
			now the vitality of Elon Musk is the health state after the vitality of Elon Musk;
	now xp of the player is xp of the player minus MODE_SPECIAL_ATTACK_XP_COST;
	
After special attacking the attackerPogoman for the first time:
	bestow "Extra Crispy".
	

Section 15 - Healing

Understand "feed [a pogothing]" as giving it to.

Healing is an action applying to one thing. Understand "heal [a pogoentity]" as healing.

Carry out healing:
	try giving pogoMeth to the noun instead.		
	
Instead of giving a pogothing (called the pogoitem) to someone (called the pogorecipient):
	if the pogorecipient is not a pogoentity:
		say "That earns you a strange look.";
	otherwise:
		if the pogoitem is:
			-- pogoChum:
				say "[The pogorecipient] wolfs down the pogoChum ";
				if the pogorecipient is the attackerPogoman:
					if Around the Town is happening:
						say "hungrily and appears more friendly.";
					else:
						say "fiercely.";
				else:
					say "docilely.";
				say "[one of][line break]You gain [CHUMMING_XP_VALUE] XP![or][stopping]";
				awardXP CHUMMING_XP_VALUE;
				say line break;
				decrement pogoChum count;
		-- pogoIncense:
				if the pogorecipient is the attackerPogoman:
					if Around the Town is happening:
						say "[The pogorecipient] sniffs at it with desire";
					else:
						say "[The pogorecipient] snorts at it viciously";
				otherwise:
					say "[The pogorecipient] looks at it longingly";
				say " but does not seem inclined to take it.";
		-- pogoBall:
				if the pogorecipient is the attackerPogoman:
					say "[The pogorecipient] looks on the ball with some trepidation and keeps its distance.";
				else:
					say "Your loyal [team color of the player] [pogorecipient] is eager to return to the cozy ball[one of]. You can recapture your own pogomen by throwing the ball at them[or][stopping].";
		-- pogoEgg:
				say "[The pogorecipient] does not seem interested in the egg.";
		-- pogoMeth:
				say "[The pogorecipient] snorts the pogoMeth greedily and afterwards glows warmly";
				if the pogorecipient is injured:
					say ". It seems restored to full health.[paragraph break]";
					if the hasHealed of PogoMeth is false:
						say "At least physically. The mental scars may never heal.[paragraph break]";
						bestow "Enabler";
						now the hasHealed of PogoMeth is true;
					now the pogorecipient is not injured;
					now the wounded corresponding to the pogolandQTH of the location of the player in the Table of Defenders is false;
				else:
					say ".[paragraph break]";
				decrement pogoMeth count.
				
[parenthetical author's note - if I type "pogo" one more time I'm going to puke.]
					
The phantom is a privately-named scenery. The description of the phantom is "A point source of energy." The phantom is in the void.

To say bar:
	repeat with N running from 1 to 21:
		say "-";
		
To say the map symbol of (QTH - a room):
	if the player is in the QTH:
		say "X";
	else if there is a guardian corresponding to the pogolandQTH of the QTH in the Table of Defenders:
		say "D";[defenders need to be above the rest of list to avoid being masked]
	else if the QTH is listed in POGOSTOPLIST:
		say "P";
	else if the QTH is listed in GYMLIST:
		say "G";
	else if the QTH is Nyantech Entrance:
		say "N";
	else:
		say "-".
		

Section 16 - Scanning
	
Scanning is an action applying to nothing. Understand "scan" or "map" or "maps" or "gps" or "mapquest" or "directions" or "navigate" as scanning.

Check scanning:
	if the player is in the Village or the player is in Pogoland:
		continue the action;
	otherwise:
		say "The scanner does not appear to function in this location. [bracket][fixed letter spacing]Network Error: [a random number between 100 and 500][roman type][close bracket][paragraph break]";
		the rule fails.

Report scanning:
	say fixed letter spacing;
	say line break;
	if the player is in the Village:
		let HOME be the Dung Beetle Mural;
		move the phantom to HOME;
		repeat with Y running from 1 to 7:
			say "|";
			say the map symbol of the location of the phantom;
			say "|";
			repeat with X running from 1 to 6:
				move the phantom to the room east from the location of the phantom;
				say the map symbol of the location of the phantom;
				say "|";
			say "[line break]";
			move the phantom to HOME;
			repeat with N running from 1 to Y:
				move the phantom to the room south from the location of the phantom;		
		say "[line break][fixed letter spacing]X: Your location[line break]G: A pogoman gym[line break]P: A pogostop[line break]N: Nyantech Headquarters[roman type][line break]";
	otherwise:[i.e., in pogoland]
		let HOME be Palace;
		move the phantom to HOME;
		repeat with Y running from 1 to 5:
			say "|";
			say the map symbol of the location of the phantom;
			say "|";
			repeat with X running from 1 to 4:
				move the phantom to the room east from the location of the phantom;
				say the map symbol of the location of the phantom;
				say "|";
			say "[line break]";
			move the phantom to HOME;
			repeat with N running from 1 to Y:
				move the phantom to the room south from the location of the phantom;
		say "[line break][fixed letter spacing]X: Your location[line break]P: A pogostop[line break]D: A defending pogoman[roman type][line break]";
	say roman type;
	move the phantom to the void.

Section 17 - Knocking

Understand "knock [something]" or "knock on [something]" or "rap [something]" or "rap on [something]" as attacking.


Section 18 - Sleeping

Understand "rest" or "relax" or "stretch out" or "lean back" or "recline" or "chill" or "chill out" as sleeping.

Section 19 - Pushing

Understand "roll" or "roll in [something]" or "roll [something]" as pushing.

Section 20 - Looking

Understand "view" as looking.

Section 21 - Examining

Understand "inspect [something]" as examining.

Section 22 - Burning

Understand "ignite [something]" as burning.

Understand "extinguish [something]" as switching off.

Section 23 - Filling

Filling is an action applying to one thing. Understand "fill [something]" or "fill [something] up" or "fill up [something]" as filling.

Check Filling:
	if the location of the player is the service station and the burntUp of the service station is true:
		say "The only thing that is going to fill around here is the giant crater -- with water, the next time it rains, that is.";
		stop the action;
	if the noun is not a container:
		say "You can only fill up a container.";
		stop the action.

Report Filling:
	say "You fill the [noun]."

Section 24 - Eating

Understand "snort" or "snarf" as eating.

Section 25 - Ordering

Ordering is an action applying to one topic. Understand "order [text]" or "take [text]" or "get [text]" or "ask for [text]" or "eat [text]" or "drink [text]" or "buy [text]" as ordering when Around the Town is Happening.

Check Ordering:
	if the Around the Town is happening:
		continue the action;
	else:
		say "No time for that now!";
		stop the action.
		
Carry out ordering:
	say "You have no clue about where to get that.";

Instead of ordering a topic listed in the Table of Ordering Out:
	let the BESTPLACE be the Provider entry;
	if the BESTPLACE is the location of the player:
		say "Your mouth waters at the prospect, and you can see people talking, and laughing and having a good type right here, but you must be strong! No time for such weaknesses as food, drink, sleep, or other bodily functions. A true pogomaster must make sacrifices! (although your stomach is kind of grumbly).";
	else:
		say "This isn[apostrophe]t the best place for that, and unfortunately, the [BESTPLACE] does not deliver."

Table of Ordering Out
Topic	Provider
"brain"	Biocontainment Facility
"brains"	Biocontainment Facility
"kroughnut"	Krusty Kronuts
"kronut"	Krusty Kronuts
"kroughnuts"	Krusty Kronuts
"kronuts"	Krusty Kronuts
"donut"	Krusty Kronuts
"donuts"	Krusty Kronuts
"doughnut"	Krusty Kronuts
"doughnuts"	Krusty Kronuts
"toroiducken"	Krusty Kronuts
"caramel-glazed toroiducken"	Krusty Kronuts
"caramel-glazed "	Krusty Kronuts
"sausage"	Prissy's Little Sausages
"sausages"	Prissy's Little Sausages
"hot dog"	Prissy's Little Sausages
"hotdog"	Prissy's Little Sausages
"hot dogs"	Prissy's Little Sausages
"hotdogs"	Prissy's Little Sausages
"wiener"	Prissy's Little Sausages
"wieners"	Prissy's Little Sausages
"kielbasa"	Prissy's Little Sausages
"kielbasas"	Prissy's Little Sausages
"kielbasi"	Prissy's Little Sausages
"wurst"	Prissy's Little Sausages
"wursts"	Prissy's Little Sausages
"bratwurst"	Prissy's Little Sausages
"bratwursts"	Prissy's Little Sausages
"pepperoni"	Prissy's Little Sausages
"pepperonis"	Prissy's Little Sausages
"redhot"	Prissy's Little Sausages
"red hot"	Prissy's Little Sausages
"redhots"	Prissy's Little Sausages
"red hots"	Prissy's Little Sausages
"salami"	Prissy's Little Sausages
"salamis"	Prissy's Little Sausages
"sauce"	Prissy's Little Sausages
"miniature sausage"	Prissy's Little Sausages
"miniature"	Prissy's Little Sausages
"ice cream"	Yummi Tummi Softserve
"ice"	Yummi Tummi Softserve
"cream"	Yummi Tummi Softserve
"soda"	Yummi Tummi Softserve
"cone"	Yummi Tummi Softserve
"bowl"	Yummi Tummi Softserve
"sundae"	Yummi Tummi Softserve
"fudge"	Yummi Tummi Softserve
"caramel"	Yummi Tummi Softserve
"dessert"	Yummi Tummi Softserve
"flan"	Flan Emporium
"flans"	Flan Emporium
"pizza"	Margot's Pantry
"pizzas" 	Margot's Pantry
"calzone"	Margot's Pantry
"calzones" 	Margot's Pantry
"pasta"	Margot's Pantry
"pastas"	Margot's Pantry
"drink"	Hank's Tavern
"drinks"	Hank's Tavern
"koolaid"	Hank's Tavern
"kool-aid"	Hank's Tavern
"cocktail"	Hank's Tavern
"cocktails"	Hank's Tavern
"whiskey"	Hank's Tavern
"whisky"	Hank's Tavern
"beer"	Hank's Tavern
"beers"	Hank's Tavern
"rum"	Hank's Tavern
"screwdriver"	Hank's Tavern
"scotch"	Hank's Tavern
"gin"	Hank's Tavern	
"bourbon"	Hank's Tavern
"vodka"	Hank's Tavern
"wine"	Hank's Tavern
"martini"	Hank's Tavern
"martinis"	Hank's Tavern
"coke"	Hank's Tavern
"pepsi"	Hank's Tavern
"onion rings"	Hank's Tavern
"french fries"	Hank's Tavern
"fries"	Hank's Tavern
"frites"	Hank's Tavern
"beer"	Hank's Tavern
"wine"	Ashwell-Lott Estate
"grape"	Ashwell-Lott Estate
"grapes"	Ashwell-Lott Estate
"nut"	Hank's Tavern
"nuts"	Hank's Tavern
"cheese"	Hank's Tavern
"cheeses"	Hank's Tavern
"peanut"	Hank's Tavern
"peanuts"	Hank's Tavern
"pretzel"	Hank's Tavern
"pretzels"	Hank's Tavern
"nachos"	Hank's Tavern
"wings"	Hank's Tavern
"chicken wings"	Hank's Tavern
"chicken"	Hank's Tavern
"fried"	Hank's Tavern
"calamari"	Hank's Tavern
"appetizer"	Hank's Tavern
"appetizers"	Hank's Tavern
"hors d'ouevres"	Hank's Tavern
"charcuterie"	Hank's Tavern
"food"	Hank's Tavern
"snack"	Hank's Tavern
"snacks"	Hank's Tavern
"cranberry"	Cranberry Bog
"cranberries"	Cranberry Bog
"berry"	Cranberry Bog
"berries"	Cranberry Bog

Chapter Medals & Trophies

Medals are an awarddrop. Medals are everywhere. Understand "medal" as medals. Medals have a truth state called reviewedOnce. The reviewedOnce of the medals is false.

Bronzes are an awarddrop. Bronzes are everywhere. Understand "trophy" or "trophies" as bronzes. Bronzes are privately-named. The printed name of bronzes is "trophy". Bronzes have a truth state called reviewedOnce. The reviewedOnce of the Bronzes is false.

Before doing something other than examining with the medals when Around The Town is happening for the first time:
	say "The medals aren[apostrophe]t really tangible. It[apostrophe]s not like you are walking around like Marley[apostrophe]s Ghost, weighed down by medals around your neck. They are just part of the Pogoman GO! game on your phone.[paragraph break]Congratulations! You have earned the [quotation mark]Medal Self-Reference[quotation mark] medal.[paragraph break]";
	add "Medal Self-Reference" to MEDALLIST;
	say awardParadox;
	stop the action.
		
Before doing something other than examining with the bronzes when Around The Town is happening for the first time:
	say "The trophies aren[apostrophe]t actual, physical bronze cups or little statues that you put on your mantelpiece in case you ever need a prop for a murder mystery. No, they are just part of the Pogoman GO! game on your phone. Fear not. A common error.[paragraph break]Congratulations! You have earned the [quotation mark]Intangible Award[quotation mark] medal.[paragraph break]";
		add "Intangible Award" to MEDALLIST;
	say awardParadox;
	stop the action.
	
To say awardParadox:
	say "Earning that medal, however, creates some sort of recursive loop, which immediately depletes your phone[apostrophe]s resources and locks it up.[paragraph break]Sorry.[paragraph break]";
	freeze the phone;
	stop the action.
	
Instead of doing something other than examining with an awarddrop:
	if Around the Town is happening:
		say "The [noun] is just a metaphor -- it only exists on your phone. Think of the [noun] as a data structure within a program running on a computer. That shouldn[apostrophe]t be too hard to visualize.[paragraph break]";
	otherwise:
		if the current action is rubbing:
			say "You polish your [noun] collection.";
		otherwise:
			if the current action is taking:
				say "You already have them.";
			otherwise:
				say "You prefer to just admire them."
	
Instead of examining an awarddrop:
	if the noun is medals:
		If Around The Town is happening:
			if the number of entries in MEDALLIST is 0:
				say "It is unthinkable that you have no medals.[paragraph break]";
				bestow "Pity Medal";
			say "Your phone lists the [number of entries in MEDALLIST in words] medal[if the number of entries in MEDALLIST is greater than one]s[end if] you have won:[paragraph break]";
		otherwise:
			say "You are bespangled with the following medals:[paragraph break]";
		repeat with L running through the MEDALLIST:
			say "     * [L][line break]";
		if reviewedOnce of the Medals is false:
			say line break;
			bestow "Medal Connoisseur";
			now reviewedOnce of the Medals is true;
	otherwise:[i.e., trophies]
		If Around the Town is happening:
			if the number of entries in TROPHYLIST is 0:
				say "You have not won any gym fights, so you have no trophies.";
			otherwise:
				say "Your phone lists the [number of entries in TROPHYLIST in words] troph[if the number of entries in TROPHYLIST is 1]y[otherwise]ies[end if] you have won in gym battles:[paragraph break]";
		otherwise:
			say "Your trophy collection includes the following shiny metal trophies:[paragraph break]";
		repeat with L running through TROPHYLIST:
			say "     * [L][line break]";
		if reviewedOnce of the Bronzes is false:
			say line break;
			bestow "Prepare the Mantelpiece";
			now reviewedOnce of the Bronzes is true.

To Bestow (medallion - some text):
	let L be text;
	now L is medallion;
	add L to MEDALLIST;
	if SUPPRESSMEDALS is false:
		say "Congratulations! You have earned the [quotation mark][medallion][quotation mark] medal![paragraph break]";	
	if the number of entries in MEDALLIST is 1:
		say "To see a list of your medals at any time, use the command [italic type]examine medals[roman type].[paragraph break]";
	awardXP MEDAL_XP_VALUE;
	if the number of entries in MEDALLIST is:
		-- 3: 
			say "([quotation mark]By the way,[quotation mark] your phone mentions parenthetically, [quotation mark]when you get tired of hearing about medals -- and mark my words, you will -- type [quotation mark]mute[quotation mark] to toggle notification about medals and XP. Don[apostrophe]t say I never did anything for you. You[apostrophe]re welcome.[quotation mark])[paragraph break]";
			bestow "Now Your Phone Is Talking To You";
		-- 5:
			bestow "You Just Collected Five Medals";
			bestow "Collector of Meta-Medals";
		-- 10:
			bestow "Collected A Decade of Medals";
		-- 31:
			bestow "Collected 10^1.5 Medals";
		-- 100:
			bestow "Collected A Century of Medals";
		-- 1000:
			bestow "Collected A Millennium of Medals".
		
Muting is an action applying to nothing. Understand "mute" as muting.

Check muting:
	If the number of entries in MEDALLIST is less than 3:
		say "The phone refuses, [quotation mark]Nah, you have to put up with at least three awards. It builds character.[quotation mark][paragraph break]" instead.
		
Carry out muting:
	if SUPPRESSMEDALS is false:
		now SUPPRESSMEDALS is true;
		if SUPPRESSMEDALS is true for the first time:
			say "You phone gushes, [quotation mark]Congratulations! You have earned the [apostrophe]Muted further notifications about medals[apostrophe] medal, which will kick in after this notification. When your ego cries out again for constant affirmation, you can again use the [quotation mark]mute[quotation mark] command to turn it back on.[paragraph break]";
			add "Muted Further Notifications About Medals" to MEDALLIST;
			awardXP 10;
		otherwise:
			say "Medals muted!";
	otherwise:
		now SUPPRESSMEDALS is false;
		if the SUPPRESSMEDALS has been true twice:
			bestow "Couldn't Bear To Live Without Medals”;
		otherwise:
			say "Medal notifications are back, and better than ever!".

	
After examining the player for the first time, bestow "Introspection".

After taking inventory for the first time:
	follow the testInventory rule;
	bestow "Taking Stock".

After examining a pogoBall for the first time, bestow "Attention To Detail".

After examining the phone for the first time, bestow "Technology Explorer".

After examining the Teslatronic Energy Module for the first time, bestow "Awfully Trusting".

After examining a pogoChum for the first time, bestow "Suppressed further thought about it because you probably wouldn[apostrophe]t like the truth".

After waiting for the first time, bestow "Loitering Around".

Chapter Adaptable Verbs

To ignore is a verb.
To poke is a verb.
To walk is a verb.
To scoot is a verb.

Chapter Not Ready For Prime Time - Not for release


Section 1 - Getting XP

[let player manually increase their own XP for testing]
XPgetting is an action applying to a number.
Understand "getXP [a number]" as XPgetting.

Carry out xpGetting the number understood:
	AwardXP the number understood.
	
Report xpGetting:
	say "[number understood] XP awarded, for a total of [xp of the player] XP."
	
Section 2 - Getting Trophies

[let player manually get gym trophies for testing]
TrophyGetting is an action applying to a number.
Understand "getTrophy [a number]" as TrophyGetting.

Carry out TrophyGetting number understood:
	repeat with N running from 1 to the number understood:
		add "Filler pogoman battle victory number [N]" to TROPHYLIST.
	
Report TrophyGetting:
	say "[number understood] trophies awarded, so [number of entries in TROPHYLIST] in total."
	
Section 3 - Getting Medals
[let player manually get medals for testing]

MedalGetting is an action applying to a number.

Understand "getMedal [a number]" as MedalGetting.

Carry out MedalGetting the number understood:
	repeat with N running from 1 to the number understood:
		add "[N]" to medalList.
		
Report MedalGetting:
	say "[number understood] medals awarded, for a total of [number of entries in MEDALLIST]."
	
	
Section 4 - Badgifying
	
Badgifying is an action applying to nothing. Understand "badgify" as badgifying.

Carry out badgifying:
	let L be the list of securityColors;
	while entry 1 of L is not the securityColor of the badge:
		rotate L backwards;
	rotate L backwards;
	now the securityColor of the badge is entry 1 of L.

Report badgifying:
	say "Badge color: [securityColor of the badge]."

Section 5 - Joining Teams

Teamjoining is an action applying to a color. 

Understand "join [a color]" as teamjoining.

Carry out teamjoining:
	Now the team color of the player is the color understood.
	
Report teamjoining:
	say "Welcome to [team color of the player] team!"
	
Section 6 - Hanging The Phone

Hanging is an action applying to nothing.

Understand "hang" or "crash" as hanging.

Check hanging:
	if the phone is hung, say "The phone is already hung." instead.
	
Carry out hanging: [if hangin' ain't too good fer folks like them]
	freeze the phone.
	
Report hanging:
	say "The phone is now well hung."
	
Section 7 - Spawn Pogomen

Spawning is an action applying to nothing. Understand "spawn" as spawning.
	
Check spawning:
	if the attackerPogoman is in the location of the player:
		say "There is already a wild pogoman here. Only one per location.";
		stop the action.
		
Carry out spawning:
	move attackerPogoman to the location of the player;
	now the type of attackerPogoman is a random pogotype;
	if a random chance of 1 in 2 succeeds:
		now the attackerPogoman is injured;
	otherwise:
		now the attackerPogoman is not injured.
		
Report spawning:
	let T be "[type of attackerPogoman]" in title case;
	say "A freshly-minted [if the attackerPogoman is injured](but unfortunately wounded) [end if][T] appears!"
	
Section 8 - Sudo

Sudoing is an action applying to nothing. Understand "sudo" as sudoing.

Carry out sudoing:
	let L be the list of securityColors;
	rotate L;
	now the securityColor of the badge is entry 1 of L;
	try trophygetting TOWER_TROPHY_REQUIREMENT;
	try medalgetting TOWER_MEDAL_REQUIREMENT;
	now the xp of the player is TOWER_XP_REQUIREMENT;
	now the pogoLevel of the player is GYM_ENTRY_LEVEL_REQUIREMENT;
	now the team color of the player is Viridian;
	now the superuser of the player is true.
	
Report sudoing:
	say "Privilege Elevated, Your Sudoship."	
	
Section 9 - The Default Stage Business Rule

[

[enable only for testing]
The default stage business rule is listed last in the stage business rules.

This is the default stage business rule:
	say "*** DEFAULT STAGE BUSINESS FOR TESTING PURPOSES ONLY ***."
	
]

Section 10 - Batch Object Testing

[Extending JL's object testing framework for game-specific actions]

This is the test capturing rule:
	announce tests for "capturing [the noun]";
	try capturing the noun.
	
This is the test nonPogoHealing rule:
	announce tests for "nonPogoHealing [the noun]";
	try nonPogoHealing the noun.
	
This is the test using rule:
	announce tests for "using [the noun]";
	try using the noun.
	
This is the test spinning rule:
	announce tests for "spinning [the noun]";
	try spinning the noun.
	
This is the test rebooting rule:
	announce tests for "Rebooting [the noun]";
	try rebooting the noun.
	
This is the test tapeFailing rule:
	announce tests for "tapeFailing [the noun]";
	try tapeFailing the noun.
	
This is the test special attacking rule:
	announce tests for "Special attacking [the noun]";
	try special attacking the noun.
	
This is the test healing rule:
	announce tests for "Healing [the noun]";
	try healing the noun.
	
This is the test flagging rule:
	announce tests for "Flagging [the noun]";
	try flagging the noun.
	
This is the test licking rule:
	announce tests for "Licking [the noun]";
	try licking the noun.
	
This is the test talking to rule:
	announce tests for "Talking to [the noun]";
	try talking to the noun.
	
This is the test unclipping rule:
	announce tests for "Unclipping [the noun]";
	try unclipping the noun.
	
This is the test clipping rule:
	announce tests for "Clipping [the noun]";
	try clipping the noun.
	
This is the test filling rule:
	announce tests for "Filling [the noun]";
	try filling the noun.
	
This is the test emptying rule:
	announce tests for "Emptying [the noun]";
	try emptying the noun.
	
This is the test dialing rule:
	announce tests for "Dialing [the noun]";
	try dialing the noun.
	
This is the test charging rule:
	announce tests for "Charging [the noun]";
	try charging the noun.
	
Table of analyzing actions (continued)
topic	testing rule
"capturing"	test capturing rule
"nonPogoHealing"	test nonPogoHealing rule
"using"	test using rule
"spinning"	test spinning rule
"rebooting"	test rebooting rule
"tapeFailing"	test tapeFailing rule
"special attacking"	test special attacking rule
"healing"	test healing rule
"flagging"	test flagging rule
"licking"	test licking rule
"talking to"	test talking to rule
"unclipping"	test unclipping rule
"clipping"	test clipping rule
"filling"	test filling rule
"emptying"	test emptying rule
"dialing"	test dialing rule
"charging"	test charging rule

[
Verbs not applying to objects: Walthrough, guard, expert mode, disable hints, ask for hints, help, about, credits, music credits, rebooting, muting, swimming, diving, poogdexing, commanding, scanning, muting

Items working on inventory can't be tested since inventory commands work on pogotypes and not things
]
				
Chapter Initialize

When play begins:
	[derepress at top of turn sequence]
	now SUPPRESSMEDALS is false;
	[don't want stage business on first turn (otherwise enabled b/c previous player room is void)]
	now BLOCKSTAGEBUSINESSFLAG is true;
	[game start up]
	now MODE_MIN_PL_POGOSTOPS is MIN_PL_POGOSTOPS;
	now MODE_MAX_PL_POGOSTOPS is MAX_PL_POGOSTOPS;
	now MODE_PREPOGO_ENCOUNTER_VALUE is PREPOGO_ENCOUNTER_VALUE;
	now MODE_POGO_ENCOUNTER_VALUE is POGO_ENCOUNTER_VALUE;
	now MODE_CAPTURE_EVOL1_DIFFICULTY is CAPTURE_EVOL1_DIFFICULTY;
	now MODE_CAPTURE_EVOL2_DIFFICULTY is CAPTURE_EVOL2_DIFFICULTY;
	now MODE_CAPTURE_EVOL3_DIFFICULTY is CAPTURE_EVOL3_DIFFICULTY;
	now MODE_SPECIAL_ATTACK_XP_COST is SPECIAL_ATTACK_XP_COST;
	now MODE_MUSK_DEF is MUSK_DEF;
	now MODE_POGOSTOP_LOCKOUT_DURATION is POGOSTOP_LOCKOUT_DURATION;
	now MODE_POGOMEN_INVENTORY_LIMIT is POGOMEN_INVENTORY_LIMIT;
	now MODE_POGOITEM_INVENTORY_LIMIT is POGOITEM_INVENTORY_LIMIT;
	now pogoLevel of the player is INITIAL_POGOLEVEL;
	now the XP of the player is INITIAL_XP;
	now the player carries the phone;
	now the player carries the PogoBall;
	now the player carries the PogoChum;
	now the flavor of the pop-tart is a random flavor;
	ShowStatus;
	distributeTownPogostops;
	distributeTownGyms;
	if MAX_INITIAL_SPAWN is greater than POGOMEN_INVENTORY_LIMIT:
		say "debug error: spawning too many initial pogomen";
	otherwise:
		repeat with N running from MIN_INITIAL_SPAWN to MAX_INITIAL_SPAWN:
			let P be a random pogotype;
			let W be false;
			if a random chance of SPAWN_PERCENT_WOUNDED in 100 succeeds:
				let W be true;
			choose a blank row in the Table of Inventory;
			now the pogoName entry is P;
			now the wounded entry is W;
			if the P is not listed in POGODEXLIST:
				add P to POGODEXLIST;		
	legal counsel frets in 3 turns from now;				
	openGame.
	
To openGame:
	let startRoom be a random okayStartLocation;
	move the player to startRoom, without printing a room description;
	say "You wake up, and it[apostrophe]s ";
	Let T be a random number from 1 to 24;
	if T is less than 12:
		 say "[T in words] in the morning";
	otherwise if T is 24:
		say "midnight";
	otherwise if T is greater than 16:
		say "[T minus 12 in words] in the evening";
	otherwise if T is greater than 12:
		say "[T minus 12 in words] in the afternoon";
	otherwise:
		say "noon";
	say ". You must have drifted off for a bit, but no bother[one of]. Time[apostrophe]s a-wasting. The world is full of Pogomen, and now that you don[apostrophe]t have a job or family to worry about, you might as well get back to it[or][stopping]!".
	
After printing the banner text:
	say "[line break][italic type]Note: You may find the commands [roman type][quotation mark]scan[quotation mark][italic type] and [roman type][quotation mark]reboot[quotation mark][italic type] helpful.[roman type][paragraph break]".

At the time when legal counsel frets:
	say "[disclaimerText].";
	let N be a random number between 40 and 50;
	legal counsel frets in N turns from now.

To say disclaimerText:	
	say "[bold type]Warning: Do not play Pogoman GO! while [one of]driving[or]trespassing[or]golfing[or]balanced precariously[or]commiting crimes[or]on the train tracks[or]walking on a highway[or]near volcanoes[or]underwater[or]near high levels of ionizing radiation[or]near lawyers[or]operating heavy artillery[or]engaged in arc welding[or]in rooms filled with volatile gas[or]on fire[or]in serpent-filled pits[or]in other, parallel dimensions where the rules of physics do not apply[cycling][roman type]".

Chapter Stage Business

[This is largely lifted from Hoosegow. Set the BLOCKSTAGEBUSINESSFLAG to suppress stage business at the end of that turn sequence -- helpful for scenes with long dialogue and descriptions]

The stage business rules is a rulebook.

The endgame block stage business rule is listed first in the stage business rules.

This is the endgame block stage business rule:
	if the denouement is happening:
		the rule succeeds.

The block all stage business rule is listed after the endgame block stage business rule in the stage business rules. 

This is the block all stage business rule:
	if the BLOCKSTAGEBUSINESSFLAG is true:
		the rule succeeds.
		
The block stage business while-looking rule is listed after the block all stage business rule in the stage business rules.

This is the block stage business while-looking rule:
	if the current action is looking:
		the rule succeeds.

The block stage business unless the player moves about rule is listed after the block stage business while-looking rule in the stage business rules.

This is the block stage business unless the player moves about rule:
	if the previousRoom of the player is the location of the player:
		the rule succeeds.
		
The off limits site stage business rule is listed after the block stage business unless the player moves about rule in the stage business rules.

To decide whether (QTH - a room) is off limits for stage business:
	if the QTH is listed in {Perilous Passageway, Nyantech Entrance, The Elevator}, yes;
	decide no.
		
This is the off limits site stage business rule:
	if the location of the player is off limits for stage business:
		the rule succeeds.

[Location-specific stage business]

The looming shadow of Nyantech stage business rule is listed after the off limits site stage business rule in the stage business rules.

This is the looming shadow of Nyantech stage business rule:
	if the player is in the Village:
		if a random chance of 1 in 5 succeeds:
			if the number of entries in NYANCLUEBAT is greater than 0:
				say "[entry 1 of NYANCLUEBAT].";
				remove entry 1 from NYANCLUEBAT;
			otherwise:
				say "[permutedTower].";
			the rule succeeds.
				
The strangely prescient rantings of Oswaldo stage business rule is listed after the looming shadow of Nyantech stage business rule in the stage business rules.

This is the strangely prescient rantings of Oswaldo stage business rule:
	if the player is in the Village:
		if a random chance of 1 in 7 succeeds:
			if the number of entries in OSWALDOBUSINESS is greater than 0:
				say "[entry 1 in OSWALDOBUSINESS].";
				remove entry 1 from OSWALDOBUSINESS;
				the rule succeeds.
				
The public areas stage business rule is listed after the strangely prescient rantings of Oswaldo stage business rule in the stage business rules.

[was going to have separate dialogue for cafeteria, but decided it wouldn't really be different from lobby]
This is the public areas stage business rule:
	if the player is in the Lobby or the player is in the Cafeteria:
		if a random chance of 1 in 2 succeeds:
			say lobby stage business;
			the rule succeeds.

Chapter Every Turn 

Section 1 - General

To decide if (word - a text) begins with a vowel:
	let W be word in lower case;
	if character number 1 in W is listed in {"a","e","i","o","u"}, decide yes;
	decide no.

Every turn:	
	follow the pogoman apparition rule;
	CheckLevel; [possibly level-up the player]
	ShowStatus;  [display current level, team, XP in status bar]
	follow the stage business rules;
	now the previousRoom of the player is the location of the player;
	if the previousRoom of the player is not the location of the player or the current action is looking or going:
		if the phone is not hung:
			follow the list exits rule;
	[unblock stage business for next turn]
	Now the BLOCKSTAGEBUSINESSFLAG is false;
	increase the TURNCOUNTER by one.
	
Definition: A room is pogoman interdicted if it is in the HQ or it is in Ladder Area or it is in BallPit Area or it is in Stairwell or it is in Cat Area or it is in MuskLair or it is the Fishing Boat or it is MuskPodRoom or it is the Gymnasium or it is the Elevator.

This is the pogoman apparition rule:
	if the BLOCKPOGOMANFLAG is true:
		the rule fails;
	if the attackerPogoman is in the location of the player:
		if Not In Kansas Anymore is happening:
			follow the fightclub rule;[there's already an attacker here, so fight it]
		the rule fails;[already one here, no need to generate a new one]
	if Not in Kansas Anymore has ended:
		the rule fails;
	if the location of the player is pogoman interdicted:
		the rule fails;
	if the TURNCOUNTER is less than POGOMAN_LOCKOUT_DURATION:
		the rule fails;
	if Not In Kansas Anymore is happening:
		let N be MODE_POGO_ENCOUNTER_VALUE;
		if the pogoIncense is ignited:
			let N be N plus INCENSE_EFFECT_VALUE;
		if a random chance of N in 100 succeeds:
			generate a pogoman;[no attacker is here, so generate a new one]
			let T be "[type of attackerPogoman]" in title case;
			say "[one of]Watch out[or]Danger[or]Look out[in random order]! A wild [T] has appeared![paragraph break]";
			follow the fightclub rule;
	otherwise:[before Not In Kansas Anymore]
		let N be MODE_PREPOGO_ENCOUNTER_VALUE;
		if the pogoIncense is ignited:
			let N be N plus INCENSE_EFFECT_VALUE;
		if a random chance of N in 100 succeeds:
			generate a pogoman;
			let T be "[type of attackerPogoman]" in title case;
			say "[one of]OMG[or]Sakes Alive[or]Great Caesar[apostrophe]s Ghost[or]Zounds[or]Yikes[or]What the… [or]By gum[or]Crikey[or]Ye Gods[or]Holy Cow[or]Jiminy Crickets[or]Leapin[apostrophe] Lizards[or]Whoa… [or]Gosh[or]As I live and breathe[or]Cripes[or]Ack[or]Doh[or]Zoinks[or]Blimey[or]Well I[apostrophe]ll be… [in random order]! A[if T begins with a vowel]n[end if] [T] appears![paragraph break]".
			
This is the fightclub rule:
	if the attackerPogoman is in the location of the player:
		let ATTACKER-DEF be 0;
		if the type of the attackerPogoman is first level:
			let ATTACKER-DEF be OFFENSIVE_RATING_EVO1;
		else if the type of the attackerPogoman is second level:
			let ATTACKER-DEF be OFFENSIVE_RATING_EVO2;
		else:
			let ATTACKER-DEF be OFFENSIVE_RATING_EVO3;
		if the attackerPogoman is injured:
			let ATTACKER-DEF be ATTACKER-DEF minus WOUNDED_PENALTY;
		let ATTACKER-DEF be ATTACKER-DEF plus a random number from 0 to FIGHT_RANDOMNESS;
		let AA be "[type of attackerPogoman]" in Title Case;
		if the defenderPogoman is in the location of the player:
			let GUARD-DEF be 0;
			if the type of the defenderPogoman is first level:
				let GUARD-DEF be OFFENSIVE_RATING_EVO1;
			else if the type of the defenderPogoman is second level:
				let GUARD-DEF be OFFENSIVE_RATING_EVO2;
			else:
				let GUARD-DEF be OFFENSIVE_RATING_EVO3;
			if the player wears the Baseball Cap of Pogomastery:
				let GUARD-DEF be GUARD-DEF plus HAT_EFFECT;
			let GUARD-DEF be GUARD-DEF plus a random number from 0 to FIGHT_RANDOMNESS;	
			if the defenderPogoman is injured:
				let GUARD-DEF be GUARD-DEF minus WOUNDED_PENALTY;
			let DD be "[type of defenderPogoman]" in Title Case;
			say "The wild [AA] immediately attacks your [DD]";
			if GUARD-DEF is greater than ATTACKER-DEF:
				say " but is defeated after a brief combat. The [AA] disappears in a puff of smoke.[paragraph break]You gain [STREETFIGHT_XP_VALUE] XP![paragraph break]";
				increase the pogomenDefeated of the player by 1;
				move the attackerPogoman to the void;
				now the defenderPogoman is injured;
				now the wounded corresponding to the pogolandQTH of the location of the player in the Table of Defenders is true;
			otherwise:
				say " and defeats it! Your [DD] disappears in a puff of smoke.[paragraph break]The wild [AA] now turns its eyes to you.";
				blank out the guardian corresponding to the pogolandQTH of the location of the player in the Table of Defenders;
				blank out the wounded corresponding to the pogolandQTH of the location of the player in the Table of Defenders;
				move the defenderPogoman to the void;
				now the attackerPogoman is injured;
		otherwise:[there is no defender pogoman, so the player must defend themself]
			if the player is not in the giant ball:
				let R be desire to capture of the attackerPogoman plus a random number from 0 to CAPTURE_RANDOMNESS;
				if the player is in the gymnasium:
					let R be 0;
				if R is greater than CAPTURE_THRESHOLD:
					follow the hunter is the hunted rule;
				otherwise:
					if the desire to capture of the attackerPogoman is less than the CAPTURE_THRESHOLD:
						now the desire to capture of the attackerPogoman is desire to capture of the attackerPogoman plus DESIRE_TO_CAPTURE_INCREMENT;
					if the healthiness of the player is less than near death:
						now the healthiness of the player is the health state after the healthiness of the player;
						say "The [AA] attacks you! You are [healthiness of the player]![paragraph break]";
					otherwise:
						say "The [AA] finishes you off![paragraph break]";
						let AAA be "[type of attackerPogoman]" in upper case;
						say "[bold type]*** KILLED BY AN ENEMY [AAA]! ***[roman type][paragraph break]";
						if the player is in the gymnasium:
							say "You notice that you are dematerializing and find the sound of some accompanying laughter concerning. Echoing hollowly, you hear some one say [quotation mark]Well, dead in relative terms, I suppose.[quotation mark][paragraph break]";
							teleport the player to Processing;
						otherwise:
							frontierDeath.
						
This is the hunter is the hunted rule:
	let P be "[attackerPogoman]" in title case;
	say "[one of]The [P] chucks a pogoBall at you! It nails you in stomach and knocks the wind out of you. You struggle, but are sucked kicking and screaming into the ball[or]The [P] takes careful aim and fires a pogoBall at you. You try to jump over it, but stumble and instead fall right on top of it. The ball sucks you in[stopping].";
	move the giant ball to the location of the player;
	now the player is in the giant ball.
	
Section 2 - During Exploring The Tower
	
Every turn when Exploring the Tower is happening:
	follow the clue bat rule;
	[the walkman is confiscated prior to Not In Kansas Anymore]
	if the walkman is worn by the player:
		say "[italic type][A Ghastly Astley Lyric][roman type][paragraph break]";
		now the BLOCKSTAGEBUSINESSFLAG is true;
	if PEC of the CAT Control is greater than 0:
		if onHoldFlag of the CAT Control is false:
			increase PEC of the CAT Control by a random number between 120 and 130;
		otherwise:
			increase PEC of the CAT Control by a random number between 18 and 23;
	if onHoldFlag of the CAT Control is false:
		rotate HEADING backwards;
	if PEC of the CAT Control is greater than megaCats of the CAT Control:
		if the numerical counter is handled:
			bestow "You sick puppy: [megaCats of the CAT Control] Cat Rotations!";
		increase megaCats of the CAT Control by 4000000.
		
Section 3 - During Not In Kansas Anymore

Every turn during Not In Kansas Anymore:
	if the player carries the pogoincense and the pogoincense is ignited and the location of the player encloses the gasoline:
		if the gasoline is in the gas tank and the gas cap is screwed tight:
			do nothing;
		otherwise:
			gasoline death.

Section 4 - During Denouement

Every turn during denouement:
	if the defenderPogoman is in Processing:
		let DD be "[type of defenderPogoman]" in title case;
		say "Your [DD] attacks ";
		let GUARD-DEF be 0;
		if the type of the defenderPogoman is first level:
			let GUARD-DEF be OFFENSIVE_RATING_EVO1;
		else if the type of the defenderPogoman is second level:
			let GUARD-DEF be OFFENSIVE_RATING_EVO2;
		else:
			let GUARD-DEF be OFFENSIVE_RATING_EVO3;
		if the player wears the Baseball Cap of Pogomastery:
			let GUARD-DEF be GUARD-DEF plus HAT_EFFECT;
		let GUARD-DEF be GUARD-DEF plus a random number from 0 to FIGHT_RANDOMNESS;	
		if the defenderPogoman is injured:
			let GUARD-DEF be GUARD-DEF minus WOUNDED_PENALTY;	
		if GUARD-DEF is greater than MODE_MUSK_DEF:
			now the vitality of Elon Musk is the health state after the vitality of Elon Musk;
			if the vitality of Elon Musk is dead:
				say "and deals an almost lethal blow to";
			otherwise:
				say "and lands a solid hit against";
		otherwise:
			say "but does not land a hit on";
		say " the mad billionaire.[paragraph break]";
		if the vitality of Elon Musk is less than dead:
			say "Musk ";
			if the defenderPogoman is in Processing:
				say "ignores the [DD] and concentrates on killing you.[paragraph break]";	
	if the vitality of Elon Musk is less than dead:
		say "[entry 1 in MUSKPROVOCATION][paragraph break]He ";
		rotate MUSKPROVOCATION backwards;
	if the vitality of Elon Musk is less than dead:
		if a random chance of 1 in 2 succeeds	:
			now the healthiness of the player is the health state after the healthiness of the player;
			if the healthiness of the player is dead:
				say "slices your head clean off with his razor-sharp clipboard, ending the battle.";	
				muskEnding;	
			otherwise:	
				say "[entry 1 in MUSKATTACKFLAVOR]. You are [healthiness of the player].";	
				rotate MUSKATTACKFLAVOR backwards;
		otherwise:	
			say "[entry 1 in MUSKMISSESFLAVOR].";
			rotate MUSKMISSESFLAVOR backwards.
			
MUSKPROVOCATION is a list of text that varies. MUSKPROVOCATION is {
"Elon Musk spins in the air and slashes down with his clipboard, [quotation mark]Prepare to meet your fate, like all the other so-called beta-testers that have come before you.[quotation mark]",
"Elon Musk leers at you, [quotation mark]I thought that all the pogomaster training would make you a more worthy adversary, but I see that I overestimated you.[quotation mark]",
"[quotation mark]Please at least try to make this worth my extremely valuable time. All I ask is that you either die quickly, or die well.[quotation mark]",
"The billionaire taunts you, [quotation mark]How did you ever manage to catch any pogomen with such slow reflexes? My grandmother (Grandma Musk, bless her little cybernetic heart) would run circles around you in her hoverchair. Let[apostrophe]s do this.[quotation mark]",
"The technology investor laughs derisively at your attempts to avoid the lethal edges of his metal clipboard, which glints in the light as he dances around you. [quotation mark]It would be faster and dare I say it, less painful for you to simply hold still.[quotation mark] Musk thinks about that for a moment and reconsiders, [quotation mark]On the other hand, I think I would prefer you to struggle a bit. It is more sporting.[quotation mark]",
"The entrepreneur dances around you, jabbing at you with his clipboard, while trying to keep you off balance. He snickers, [quotation mark]You[apostrophe]re not much of a match for me, but I didn[apostrophe]t expect much from the sort of gamer rabble that walks in off the street.[quotation mark]",
"[quotation mark]If you could scream a bit more, that would help,[quotation mark] suggests Musk. [quotation mark]I like screamers. I can feel their terror and know that I[apostrophe]m getting somewhere. So yes, if you could scream or beg that would be really fine. Crying, on the other hand, I could do without. I want to hear what you[apostrophe]re saying. It[apostrophe]s all about elocution, you know.[quotation mark]",
"The businessman chides you, [quotation mark]I don[apostrophe]t expect you to put up much of a fight, but surely, you could make more of an effort to at least make it entertaining for me. I mean, that is the very least you could do. Manners and all.[quotation mark]",
"The billionaire howls madly and snaps his jaws at you like an attack dog; you draw back reflexively. [quotation mark]Ah,[quotation mark] he remarks, [quotation mark]animal instinct. It is hard to get away from it, no? No matter how civilized we appear, deep down, life is a fight for dominance and you will find that I am the alpha dog.[quotation mark]",
"Musk takes a running leap, spins through the air above your head, and lands behind you. [quotation mark]You must realize that you have no chance against me. Genetic augmentation, cellular enhancements, and of course my innate intelligence and self-discipline make this a fight barely worth having, but [italic type]noblesse oblige[roman type], I will see it though, I suppose.[quotation mark]",
"Elon Musk steps to the side, just out of your reach, and whispers, [quotation mark]Your day is over, Neanderthal.[quotation mark]",
"Elon Musk slaps you with the side of his clipboard, a move clearly not intended to injure so much as embarass you. [quotation mark]What[apostrophe]s the matter? Never had to face an opponent that could think for himself? Never had to come to terms with being the a mere toy? Well, I will will certainly have some fun with you![quotation mark]",
"The technology visionary mocks you, [quotation mark]When I[apostrophe]m done with you, I don[apostrophe]t suppose anyone will even bother to look for you. You are a nobody, nothing. I suppose I can at least melt down your cell phone for scrap.[quotation mark]",
"[quotation mark]I dare you to even try and hit me,[quotation mark] jeers Musk.",
"[quotation mark]You know, I watched your clumsy effort to sneak around the building and the painfully incompetent way you handled yourself in Pogoland. I thought I had laid it all out so simply. Painful, I tell you.[quotation mark] Musk maneuvers around you. [quotation mark]But not nearly so painful as what awaits you.[quotation mark]",
"[quotation mark]I suppose you are extraordinarily lucky to have crossed paths with someone of my grandeur not once, but twice.[quotation mark] Musk catches a glimpse of himself reflected on his metallic clipboard and pauses in admiration. [quotation mark]But such an honor comes with a price.[quotation mark]",
"[quotation mark]Could you please stop acting like an imbecile and put up a decent fight?[quotation mark] pleads Musk.",
"[quotation mark]I wish you would hurry up. This final death scene bores me,[quotation mark] whines Musk. [quotation mark]I have things to do.[quotation mark][paragraph break][quotation mark]Did you know, by the way, that Rick Astley is touring? Yes, it[apostrophe]s true. One day he just came out of retirement. Just last week he did a gig out in Las Vegas. I am so psyched.[quotation mark][paragraph break][quotation mark]Anyhow, back to our fisticuffs.[quotation mark]",
"[quotation mark]I should mention,[quotation mark] Musk notes dryly, [quotation mark]that in addition to turning you into pogoChum, I will need to deduct the cost of the false ceiling in the LAN server room. You were a bit messy. I believe that I can simply deduct it electronically from your mobile phone account. I hope your payments are up to date.[quotation mark][paragraph break][quotation mark]Anyhow, prepare to die.[quotation mark]",
"[quotation mark]You know,[quotation mark] reflects Musk, [quotation mark]if I had a dollar for every two-bit pogomaster wanna-be like you who… oh wait, I do.[quotation mark]",
"[quotation mark]I hope you enjoyed your time in the pogoBall,[quotation mark] jeers Musk. [quotation mark]I gave it a good shake before letting you out.[quotation mark]"
}.

MUSKATTACKFLAVOR is a list of text that varies. MUSKATTACKFLAVOR is {
"spins on his heel, his lab coat billowing up and his deadly clipboard whirling from his outstretched arm like the blade of a circular saw. Its finely honed edge catches you on your [one of]arm[or]leg[or]shoulder[or]thigh[or]forearm[or]left shoulder blade[or]hip[purely at random] and slices effortlessly to the bone",
"feints low with his clipboard and head butts you",
"leaps upward, grabs a meat hook, and swings around to kick you in the head",
"lobs off a hunk of hanging meat with his razor-sharp clipboard and beats you with it",
"bashes you with his clipboard, which sends you reeling backwards",
"lunges forward with his clipboard, cutting your leg",
"slashes your face with the end of his clipboard, while ducking under your guard",
"stabs you in the side with his clipboard",
"knocks the wind out of you with a kick to the gut",
"backhands you with his clipboard. You nearly lose consciousness",
"drives his clipboard into you back. You cry in pain as he sails past you",
"smashes you in the face with the side of his clipboard. For a moment, you see stars",
"flings the clipboard at you at a peculiar angle. You duck just in time to avoid being scalped, but it does cut you right above the eye before returning to Musk[apostrophe]s waiting hand",
"dives at your feet, but you jump just in time to avoid being tackled",
"springs into the air, and carves his initials in your chest with his clipboard as he corkscrews through the air. He lands ten feet away and wipes the bloody edge of his clipboard on the ground with a self-satisfied grin",
"lands a running kick to your midsection, which sends you sprawling",
"plants his knuckles deep in your face",
"runs past you, dealing you a karate chop to the nape of your neck. Your vision fades and blackness closes in, but you struggle to remain standing",
"elbows you in the stomach and nicks your face with the corner of the clipboard has he pushes you to the side",
"drives the clipboard into your arm, cutting deep",
"grabs you by the neck and flips you over, cutting across your ribs with his clipboard as you roll past him"
}.

MUSKMISSESFLAVOR is a list of text that varies. MUSKMISSESFLAVOR is {
"spins across the floor slicing downward with his clipboard, but misjudges and wedges it momentarily into a hunk of hanging meat rather than you",
"brings the clipboard down right where you used to be. With relief, you swing to the side and spring back to your feet",
"jabs at you with the clipboard, but you block the thrust with the flat of your hand and deflect it upward and to the side",
"lunges at you, but you catch his wrist in a kick and knock the clipboard from his grasp. He dives after it, but at least it buys you enough time to catch your breath",
"slashes left to right with his clipboard, you are able to kick it out of his hand and swing clear of his reach",
"advances on you but misreads your body language and sails past as you pivot past him",
"chops high with the clipboard, just missing your ear",
"twists towards you, ready to cut upward with his clipboard, but you catch his arm and use his own momentum to propel him past you",
"drops to a crouch, continues around and launches a flying kick; however, you are able to catch his leg and spin him in the air. He lands with gracefully some distance away",
"pierces your fine formal wear with his clipboard, but does not strike deeply enough to draw blood",
"slices through the air just in front of your face with the clipboard. The breeze is refreshing",
"windmills past you with the clipboard, but you are able to maneuver out of reach",
"prepares to decapitate you with his clipboard, but you deflect the attack",
"stabs at you with the clipboard, but you catch his arm and pull him forward past you",
"thrusts upward with the clipboard, just missing you",
"punches just a hair to your left",
"sweeps his arm around and the deadly sharp-edged clipboard flies through the air just above your head",
"wraps his hands around your neck to choke you, but you slip free",
"screams with rage as he rushes past you, his deadly metallic clipboard missing its mark by mere inches",
"grabs at your arm but misses"
}.

Section 5 - During Legal Ending

Every turn during legalEnding:
	decrease the doomsday counter of legalEnding by 1;
	say "From overhead, you hear a ";
	if doomsday counter of legalEnding is:
		-- 0:
			say "resigned";
		-- 1:
			say "hysterical";
		-- 2:
			say "panicked";
		-- 3:
			say "quivering";
		-- 4:
			say "agitated";
		-- 5: 
			say "nervous";
		-- 6:
			say "somewhat anxious";
		-- 7:
			say "slightly anxious";
		-- 8:
			say "reassuring";
		-- 9:
			say "calm";
	say " voice say [quotation mark]Building self-destruct in [doomsday counter of the legalEnding] seconds.[quotation mark][paragraph break]";
	if the doomsday counter of the legalEnding is zero:
		buildingCollapse.

Section 6 - When In The Giant Ball

Every turn when the player is in the giant ball:
	increase the rounds imprisoned of the giant ball by one;
	if rounds imprisoned of the giant ball is:
		-- 1:
			say "The pogoBall has just started to close.";
		-- 2:
			say "The ball is halfway closed.";
		-- 3:
			say "The ball is almost entirely closed.";
		-- 4:
			if the gymnasium is unvisited:
				say "Despite your struggling, the rim of light around the center of the ball disappears and the ball glows with victory. You have to face the fact that you have been captured by a pogoman -- by a pogoman![paragraph break]For some time, you continue to yell and scratch at the walls, but your hands bloody and your voice raw, you eventually collapse in defeat.[paragraph break]Some time goes by.[paragraph break]";
				wait for any key;
				say "No, I mean a [italic type]lot[roman type] of time goes by.[paragraph break]";
				wait for any key;
				say "You don[apostrophe]t even know how long because of course your phone doesn[apostrophe]t have a calendar function since it has been optimized only to play Pogoman GO! Attempts to scratch the number of days into the plastic walls of the ball have also met with failure. Time is weird when you are stuck in a pogoBall.[paragraph break]";
				wait for any key;
				say "So, yeah, a really long time.[paragraph break]";
				wait for any key;
				teleport the player to the gymnasium;
				if the healthiness of the player is greater than bruised:
					now the healthiness of the player is bruised;
				now the rounds imprisoned of the giant ball is 0;
				move the giant ball to the void;
				say "A voice echoes in the distance, [quotation mark]Pogomaster, I choose you![quotation mark][paragraph break]A sliver of light appears in the walls of your plastic prison. You pour out of the pogoBall like a decanted yolk and resume your normal shape.[paragraph break]Your eyes slowly adapt to the dim light of a rundown gym. You stand at one corner of a regulation-size pogoman fighting mat.";
			otherwise:
				let PP be "[type of attackerPogoman]" in title case;
				say "The ball seals shut around you and you are bounced around some time as your captor goes around collecting any other holdouts that have hidden away in Pogoland.[paragraph break]Later that evening, the [PP] gets in a car and while waiting for a soda and burrito, you hear it mutter something about transferring you to the professor.";
				move the player to Processing.[there by triggering the denouement scene]
				
Section 7 - When In The Gymnasium
			
Every turn when the player is in the gymnasium:
	increase the roundsElapsed of the gymnasium by 1;
	if the roundsElapsed of the gymnasium is:
		-- 1:
			say "From far off, you hear another voice, [quotation mark]Vermonac, I choose... You![quotation mark][paragraph break]";
		-- 2:
			now the type of attackerPogoman is vermonac;
			now the attackerPogoman is not injured;
			now the previousRoom of the player is the void;
			move the attackerPogoman to the gymnasium;
			say "And the biggest, meanest vermonac you have ever seen splatters out of a pogoBall across the fighting mat from you."

Book 2 - Places

Chapter Around Town

Section 1 - Framework

Quadroom is a kind of externalRoom. A quadroom has a color. The color of a quadroom is usually Teal.

[Their orientation determines which can be seen from heights - the south face of the tower and the top of the cat. Four boolean properties are needed because a room can be both of these, e.g.,, north and west of the tower. In principle, the relationship could be calculated by figuring routes to each room, but that seems like too much work at run time.]
A quadroom can be nord.
A quadroom can be sud.
A quadroom can be est.
A quadroom can be ouest.

After deciding the scope of a player while the player is in a quadroom (called the QTH):
	place the QTH in scope;
	if the QTH is juxtaReservoir:
		place the Reservoir in scope;
	if the QTH is juxtaTarpit:
		place the Tarpit in scope;
	if the QTH is juxtaHighway:
		place the Superhighway in scope;
	if the QTH is juxtaRailway:
		place the Railway in scope.
	
Nyantech Entrance is a quadroom.

Old Jail, Dung Beetle Mural, Witch Pillory, Cyclorama, Flag Pole, Old Courthouse, Unfathomable Orb, Service Dog Memorial, Spit n' Solder, General Nelson, Church of the Orthogonal Sticks, Crystal Skull, Yummi Tummi Softserve, Giant Chicken, Telescope Nymph, The Gardens of Zarf, Welbourn Travel, Dog Exercise Area, Johnson's Rock, City Park, and Hook & Ladder are nord quadrooms. 

Toxicodendron radicans, Battle of Margot's Pantry, Cranberry Bog, Vuvuzelas For Freedom, Biocontainment Facility, Parking Lot Award, Unearthly Geometry, MarkerSeven, Headless Garden Gnome, Sister City Friendship Altar, Perilous Passageway, Eagle's Sojourn, Fire Is Our Friend, Year1893, Flan Emporium, Rottweiler Art, Hank's Tavern, Gas Station Gazebo, Old Town Hall, Ashwell-Lott Estate, and Found Art are sud quadrooms.

Dung Beetle Mural, Witch Pillory, Old Jail, Cyclorama, Flag Pole, Old Courthouse, Unfathomable Orb, Service Dog Memorial, Spit n' Solder, Toxicodendron radicans, Battle of Margot's Pantry, Cranberry Bog, Vuvuzelas For Freedom, Biocontainment Facility, Parking Lot Award, Unearthly Geometry, MarkerSeven, Headless Garden Gnome, Bottle Cap Wall, Krusty Kronuts, and Prissy's Little Sausages are ouest quadrooms.

General Nelson, Church of the Orthogonal Sticks, Crystal Skull, Yummi Tummi Softserve, Giant Chicken, Telescope Nymph, The Gardens of Zarf, Welbourn Travel, Dog Exercise Area, Sister City Friendship Altar, Perilous Passageway, Eagle's Sojourn, Fire Is Our Friend, Year1893, Flan Emporium, Rottweiler Art, Hank's Tavern, Gas Station Gazebo, Old Town Hall, Ashwell-Lott Estate, Found Art, Rotary Clock Tower, Floyd Memorial Bench, and The Olde Train Station are est quadrooms. 

The Reservoir is a nord quadroom. The Reservoir is north from Dung Beetle Mural. The Reservoir is north from Witch Pillory. The Reservoir is north from Old Jail. The Reservoir is north from Johnson's Rock. The Reservoir is north from General Nelson. The Reservoir is north from Church of the Orthogonal Sticks. The Reservoir is north from Crystal Skull. 

The description of the reservoir is "A large fresh water lake just to the north of town." Understand "lake" as the reservoir. The reservoir is improper-named. The title of the Reservoir is "The Reservoir". The printed name of the reservoir is "reservoir".

The Superhighway is a ouest quadroom. The Superhighway is west from Dung Beetle Mural. The Superhighway is west from Cyclorama. The Superhighway is west from Unfathomable Orb. The Superhighway is west from Bottle Cap Wall. The Superhighway is west from Toxicodendron radicans. The Superhighway is west from Vuvuzelas for Freedom. The Superhighway is west from Unearthly Geometry.

The description of Superhighway is "A busy highway to the west of town." Understand "road" or "highway" or "thruway" or "parkway" or "motorway" or "superhighway" as the Superhighway.  The superhighway is improper-named. The printed name of superhighway is "superhighway". The title of superhighway is "Superhighway 17".

The Tarpit is a sud quadroom. The Tarpit is south from Unearthly Geometry. The Tarpit is south from MarkerSeven. The Tarpit is south from Headless Garden Gnome. The Tarpit is south from  Found Art. The Tarpit is south from Rottweiler Art. The Tarpit is south from Hank's Tavern. The Tarpit is south from Gas Station Gazebo. 

The description of Tarpit is "Petroleum-belching tar fields to the south of town."  Understand "field" or "fields" or "pit" or "tarpit" or "tar" as the Tarpit. The printed name of Tarpit is "tarpit". The title of Tarpit is "The Tarpit". Understand "tarpits" or "infamous" as the tarpit.

The Railway is an est quadroom. The Railway is east from Crystal Skull. The Railway is east from Telescope Nymph. The Railway is east from Dog Exercise Area. The Railway is east from The Olde Train Station. The Railway is east from Eagle's Sojourn. The Railway is east from Flan Emporium. The railway is improper-named. The Railway is east from Gas Station Gazebo. 

The description of the Railway is "Railroad tracks run along the eastern edge of the town." Understand "tracks" or "railroad" or "rail" or "railway" or "rails" or "tracks"  or "train" or "trains" as the Railway. The printed name of the Railway is "railway". The title of Railway is "The Railway".

The Borderlands are a region. The  Tarpit, The Railway, The Superhighway, and The Reservoir are in The Borderlands.

Definition: a quadroom is okayStartLocation if it is not JuxtaReservoir and it is not JuxtaHighway and it is not JuxtaTarpit and it is not JuxtaRailway, and it is not Nyantech Entrance, and it is not Perilous Passageway, and it is not Biocontainment Facility, and it is not in the Borderlands.

[The deadly rooms on the edges of the map have one-way incoming connections to every room along the border (which inform allows. One way out-going connections wouldn't make much sense, though). Corner rooms fall into two categories, e.g., the NW-most room in the Village is both juxtaReservoir and juxtaHighway. ]

Definition: a quadroom (called the QR) is juxtaReservoir if the Reservoir is the room north from the QR.

Definition: a quadroom (called the QR)  is juxtaHighway if the Superhighway is the room west from the QR.

Definition: a quadroom (called the QR) is juxtaTarpit if Tarpit is the room south from the QR.

Definition: a quadroom (called the QR) is juxtaRailway if the Railway is the room east from the QR.

[The borderlands is the name for the collection of deadly rooms that are outside the town borders. This takes advantage of being able to define a region to include non-contiguous rooms]

Instead of smelling when the player is in a quadroom (called the place):
	if the place is juxtaTarpit:
		say "[one of]Okay, who let one go?[or]Mmm... Sulfur.[or]There is a hint of petroleum in the area.[or]Smells like someone is paving a road near by.[in random order]";			
	otherwise:
		if the place is juxtaHighway:
			say "Diesel, dust, and exhaust from the neighboring highway.";
		otherwise:		
			continue the action.
			
Instead of listening when the player is in a quadroom (called the place):
	if the place is juxtaHighway:
		say "[one of]Cars scream by at breakneck speed[or]A tractor trailer blasts its horn[or]Sounds like traffic on the highway is particularly heavy today[or]A heavy truck rumbles by[in random order].";
	otherwise:
		if the place is juxtaRailway:
			say "[one of]Locomotives scream by[or]A steam engine chugs away[or]A commuter train thunders through[or]A freight train rumbles along the tracks[in random order].";
		otherwise:
			continue the action.
			
[Geographic Layout of the Town]
Dung Beetle Mural is west of Witch Pillory and north of Cyclorama.
Witch Pillory is west of Old Jail and north of Flag Pole.
Old Jail is west of Johnson’s Rock and north of Old Courthouse.
Johnson's Rock is west of General Nelson and north of City Park.
General Nelson is west of Church of the Orthogonal Sticks and north of Yummi Tummi Softserve.
Church of the Orthogonal Sticks is west of Crystal Skull and north of Giant Chicken.
Crystal Skull is north of Telescope Nymph.  

Giant Chicken is west of Telescope Nymph and north of Welbourn Travel.
Yummi Tummi Softserve is west of Giant Chicken and north of The Gardens of Zarf.
City Park is west of Yummi Tummi Softserve and north of Hook & Ladder.
Old Courthouse is west of City Park and north of Spit n' Solder.
Flag Pole is west of Old Courthouse and north of Service Dog Memorial.
Cyclorama is west of Flag Pole and north of Unfathomable Orb.
Telescope Nymph is north of Dog Exercise Area.

Welbourn Travel is west of Dog Exercise Area and north of Floyd Memorial Bench.
The Gardens of Zarf is west of Welbourn Travel and north of Rotary Clock Tower.
Hook and & Ladder is west of The Gardens of Zarf and north of Nyantech Entrance.
Spit n' Solder is west of Hook & Ladder and north of Prissy's Little Sausages.
Service Dog Memorial is west of Spit n' Solder and north of Krusty Kronuts.
Unfathomable Orb is west of Service Dog Memorial and north of Bottle Cap Wall.
Dog Exercise Area is north of The Olde Train Station.

Floyd Memorial Bench is west of The Olde Train Station and north of Perilous Passageway.
Rotary Clock Tower is west of Floyd Memorial Bench and north of Sister City Friendship Altar.
Nyantech Entrance is west of Rotary Clock Tower and north of Old Town Hall.
Prissy's Little Sausages is west of Nyantech Entrance and north of Cranberry Bog.
Krusty Kronuts is west of Prissy's Little Sausages and north of Battle of Margot's Pantry.
Bottle Cap Wall is west of Krusty Kronuts and north of Toxicodendron radicans.
The Olde Train Station is north of Eagle's Sojourn.

Perilous Passageway is west of Eagle's Sojourn and north of Year1893. 
Sister City Friendship Altar is west of Perilous Passageway and north of Fire Is Our Friend.
Old Town Hall is west of Sister City Friendship Altar and north of Ashwell-Lott Estate.
Cranberry Bog is west of Old Town Hall and north of Parking Lot Award.
Battle of Margot's Pantry is west of Cranberry Bog and north of Biocontainment Facility.
Toxicodendron radicans is west of Battle of Margot's Pantry and north of Vuvuzelas for Freedom.
Eagle's Sojourn is north of Flan Emporium.

Year1893 is west of Flan Emporium and north of Hank's Tavern.
Fire Is Our Friend is west of Year1893 and north of Rottweiler Art.
Ashwell-Lott Estate is west of Fire Is Our Friend and north of Found Art.
Parking Lot Award is west of Ashwell-Lott Estate and north of Headless Garden Gnome.
Biocontainment Facility is west of Parking Lot Award and north of MarkerSeven. 
Vuvuzelas for Freedom is west of Biocontainment Facility and north of Unearthly Geometry.
Flan Emporium is north of Gas Station Gazebo.

Hank's Tavern is west of Gas Station Gazebo.
Rottweiler Art is west of Hank's Tavern.
Found Art is west of Rottweiler Art.
Headless Garden Gnome is west of Found Art.
MarkerSeven is west of Headless Garden Gnome.
Unearthly Geometry is west of MarkerSeven.

The Village is a region. Dung Beetle Mural, Witch Pillory, Old Jail, Cyclorama, Flag Pole, Old Courthouse, Unfathomable Orb, Service Dog Memorial, Spit n' Solder, General Nelson, Church of the Orthogonal Sticks, Crystal Skull, Yummi Tummi Softserve, Giant Chicken, Telescope Nymph, The Gardens of Zarf, Welbourn Travel, Dog Exercise Area, Johnson's Rock, City Park, Hook & Ladder, Nyantech Entrance, Bottle Cap Wall, Krusty Kronuts, Prissy's Little Sausages, Rotary Clock Tower, Floyd Memorial Bench, The Olde Train Station, Old Town Hall, Ashwell-Lott Estate, Found Art, Toxicodendron radicans, Battle of Margot's Pantry, Cranberry Bog, Vuvuzelas For Freedom, Biocontainment Facility, Parking Lot Award, Unearthly Geometry, MarkerSeven, Headless Garden Gnome, Sister City Friendship Altar, Perilous Passageway, Eagle's Sojourn, Fire Is Our Friend, Year1893, Flan Emporium, Rottweiler Art, Hank's Tavern, and Gas Station Gazebo are in The Village.

Section 2 - Location-specific elements in The Village

[
   Proxy objects allow the player to use the place name, which often refers to the main feature in the location.
   I wanted to create it as a kind of scenery. However, scenery is a descriptor, not a class, so you
   can't subclass scenery itself.
]

Section 3 - Nyantech Backdrop

The dark tower is a privately-named backdrop in the Village. The description of the dark tower is "[permutedTower]." Understand "nyantech" or "office building" or  "dark" or "tower" or "ebony" or "black" or "jet" or "obsidian" or "monolith" or "monolithic" or "corporate" or "headquarter" or "headquarters" or "center" or "operations" or "office" or "offices" or "hq" or "building" or "beret" or "cat" or "mascot" or "mechanical" as the dark tower when Around The Town is happening and the player is not in Nyantech Entrance.

Instead of doing something other than examining with the dark tower:
	say "The tower is near the city center; you would need to walk over there."
	
Does the player mean doing something with the dark tower:
	it is unlikely.
	
Section 4 - The NyanCat Village Backdrop


The lowCat is a privately-named backdrop. The lowCat is in the Village. The printed name of lowCat is "Nyantech Cat". The description of the lowCat is "A giant version of Nyantech[apostrophe]s corporate mascot, a cat wearing a red beret, has been incorporated into the Nyantech Headquarters Tower at the center of the town. Up at least fifty stories, the mechanical cat revolves around the building to the tune of the Nyantech Cat theme song, punctuated every quarter hour by the cat purring the time of day[if a random chance of 3 in 4 succeeds]. The cat is not visible for the moment as it passes behind the building[end if]." Understand "sparkle" or "sparkles" or "sparks" or "cat" or "nyantech" or "eyes" or "eye" or "mascot" as the lowCat when Around The Town is happening.

Instead of doing something other than examining with the lowCat:
	say "The Nyantech Cat is way too far above you[if the player is not in the Nyantech Entrance], orbiting the Nyantech Corporate Offices near the center of town[end if]."


Section 5 - The Sky Itself

The sky is a backdrop. The sky is in The Village, DeckN, DeckS, DeckW, DeckE. The description of the sky is "Clear as the eye can see."

Instead of searching the sky:
	if the location is Telescope Nymph:
		if the Salmon of Turpitude is in the Void:
			say "Unexpectedly, you spot the salmon and yank it out of the heavens.[paragraph break]";
			now the player carries the Salmon of Turpitude;
			now the isFound of the Salmon of Turpitude is true;
			bestow "Found A Salmon";
		otherwise:
			say "You have already liberated the salmon from its celestial retreat.";
	otherwise:
		try examining the sky.
		
Instead of attacking the sky for the first time:
	say "You rail against the injustice of the universe.[paragraph break]The universe ignores you.[paragraph break]";
	bestow "At Least You Tried".
	
Instead of attacking the sky:
	say "The sky resists passively."
	
Instead of taking the sky for the first time:
	say "I don[apostrophe]t care, I[apostrophe]m still free.[paragraph break]";
	bestow "You can[apostrophe]t take the sky from me."
	
Instead of taking the sky:
	say "Please leave the sky where it is."
	
Instead of touching the sky for the first time:
	say "This world is not hollow.[paragraph break]You cannot touch the sky.[paragraph break]";
	bestow "TOS: S3 E8".
	
	
Section 6 - City Park

The description of City Park is "A small park, well groomed, with a few trees and hedges."  City Park is an improper-named place. The title of City Park is "City Park". The printed name of City Park is "municipal park". Understand "municipal" as the City Park.

The trees are scenery in City Park. The description of the trees is "A variety of trees are scattered throughout the park to provide shade for picnickers.". Understand "tree" as trees.

Instead of climbing the trees, say "That would be a waste of your time: there are no pogomen in the trees. You can catch them just as easily from the ground."

The hedges are scenery in City Park. The description of the hedges is "Tall, thorny shrubs surround the park." Understand "hedge" or "shrub" or "shrubs" or "bush" or "bushes" or "shrubbery" or "shrubberies" as hedges.

Instead of entering or climbing the hedges, say "Ow. No thanks."

Instead of cutting the hedges:
	say "Not your job."

Instead of searching the hedges:
	say "You find even more hedges."

Section 7 - Old Court House

The description of Old Courthouse is "A brick court house, probably of historical significance." Old Courthouse is an improper-named structure.  The title of Old Courthouse is "Old Courthouse". The printed name of the Old Courthouse is "courthouse".  Understand "court" as Old Courthouse. Understand "building" or "brick" as Old Courthouse when the location is Old Courthouse.

Section 8 - Old Jail

The description of the Old Jail is "[one of]A solidly built brick building that was once a one-room jail.[paragraph break]Annoyingly, an in-game advertisement pops up on your phone:[paragraph break][quotation mark]If you like this game, check out our single-room escape adventure comedy, [italic type]Hoosegow[roman type], which is available for online for play or download.[quotation mark][paragraph break]Disgusted with [if the dog exercise area is unvisited]the[otherwise]yet another[end if] blatant attempt at self-promotion, you angrily swipe the ad off your screen[or]A single-room jailhouse that once imprisoned famous outlaw Muddy Charlie[stopping]."  Old Jail is an improper-named structure. Understand "clink" or "lock-up" or "lock up" or "hoosegow" or "jailhouse" as Old Jail. Understand "building" or "brick"  as Old Jail when the location is Old Jail. The title of Old Jail is "Old Jail". The printed name of Old Jail is "old brick jailhouse".

Instead of entering Old Jail when the player is in Old Jail for the first time:
	say "Most people spend their time trying to stay out of it.[paragraph break]";
	bestow "Criminal Intent".

Section 9 - Johnson's Rock

The description of Johnson's Rock is  "An historical marker next to a bare patch of ground describes Johnson's Rock, an object that has long puzzled local historians. The stone is also the subject of yearly high school pranks, and apparently has been stolen yet again.".  Johnson's Rock is an  improper-named artifact. Understand "johnson" or "johnsons" as Johnson's Rock. The printed name of Johnson's Rock is "site of Johnson's Rock". Understand "patch" or "bare" or "rock"  or "stone" or "ground" or "site" as Johnson's Rock when the location is Johnson's Rock. The title of Johnson's Rock is "Johnson's Rock". 

The historical marker is scenery in Johnson's Rock. The description of the historical marker is "A metal sign that identifies this as the site of Johnson's enigmatic rock." 

Instead of taking Johnson's Rock, say "Too late. Some kids already got to it."

Instead of searching Johnson's Rock for the first time:
	say "You notice the absence of a rock here.[paragraph break]";
	bestow "Heart Grown Fonder".
	
Instead of listening to Johnson's Rock for the first time:
	say "Listening to rock will make you deaf![paragraph break]";
	bestow "Meh. Music these days."
	
Instead of taking the historical marker for the first time:
	say "No. Then they would just have to put up another marker to commemorate the absence of the first marker. This would be the start of a slippery and recursive slope.[paragraph break]";
	bestow "And What Would You Do With All Those Markers?".
	
Instead of spinning the historical marker for the first time:
	say "It is a metal sign, not a pogostop![paragraph break]";
	bestow "Dammit".

Section 10 - Nyantech Entrance

[Entrance]

The description of Nyantech Entrance is "A towering edifice hewn from solid obsidian, the imposing structure is visible from miles away. The entrance, which is just through a revolving door past the unicorn, beckons to you." Nyantech Entrance is improper-named. The printed name of Nyantech Entrance is "entrance to the Nyantech Tower". The title of Nyantech Entrance is "Nyantech Tower (outside)".

After going to Nyantech Entrance for the first time:
	say the headline of Nyantech Entrance;
	say "You stand reverently below the enormous Nyantech Tower, its obsidian walls reaching majestically to the sky above you. From here, you can see the giant animatronic Nyantech Cat orbiting the building fifty stories above you, spewing sparkles in its wake. Its glowing red eyes sweep up and down, looking everywhere. This is the promised land, a place you have always dreamed of visiting.[paragraph break]Through the tinted glass, you strain to peer into the building[apostrophe]s lobby.[paragraph break]A uniformed unicorn stands near the revolving door leading inward to the lobby. With a hint of annoyance, he rubs your nose print off the glass with a furry hoof.[paragraph break]";
	bestow "Reached the Mothership";


[Entrance Proxy]

The proxyEntrance is a privately-named scenery in the Nyantech Entrance. The printed name of proxyEntrance is "building".  The description of proxyEntrance is "An imposing fifty story building of black glass and home to the creators of your favorite game, Pogoman GO!" Understand "entrance" or "building" or "office" or "tower" or "obsidian" or "glass" or "wall" or "walls" or "HQ" or "headquarters" or "offices" as the proxyEntrance. 

Instead of searching the proxyEntrance:
	say "You would have to go in first."
	
Before entering proxyEntrance for the first time:
	say "Eager to rub elbows with the creators of your favorite game, and to have a chance at the special pogomen rumored to inhabit the building, you saunter into revolving door.";
	continue the action.

Instead of climbing the proxyEntrance:
	say "[one of]As you slide down the nearly frictionless surface of the Nyantech Tower, the unicorn chides you, [quotation mark]Not today, Spidey.[quotation mark][or]The surface is too slippery. [stopping][paragraph break]".[leave the space after slippery to suppress CR]
	
Instead of attacking the proxyEntrance:
	say "The unicorn parries the attack with his sharp horn."

Instead of entering the proxyEntrance:
	say "[one of][unicorn1][or][unicorn2][or][unicorn3][or][unicorn4][or][unicorn2][stopping][paragraph break]";

Instead of going inside when the player is in Nyantech Entrance:
	try entering the proxyEntrance.

[Revolving Door Proxy]


The revolvingDoorProxy is a privately-named backdrop in the Nyantech Entrance and  in RevolvingDoor. The printed name of revolvingDoorProxy is "revolving door". The description of revolvingDoorProxy is "A brass revolving door." Understand "brass" or "revolving" or "door" as the revolvingDoorProxy. Understand "building" or "office" or "tower" or "headquarter" or "hq" or "headquarters" as the revolvingDoorProxy when the player is in the revolvingDoor.

Instead of doing something with the revolvingDoorProxy:
	if the current action is examining:
		continue the action;
	otherwise:
		if the current action is entering:
			if the player is in the Nyantech Entrance:
				try entering proxyEntrance instead;
			otherwise:
				try going inside;
		otherwise:
			if the current action is spinning:
				try pushing the revolvingDoorProxy instead;
			otherwise:
				if the current action is pushing:
					say "The door spins around. The unicorn looks annoyed but not surprised.";
				otherwise:
					if the current action is rubbing:
						say "That unicorn says, [quotation mark]Please leave that to the professionals.[quotation mark][paragraph break]";
					otherwise:
						say "The unicorn remarks, [quotation mark]Are you going to monkey with the door all day long, or are you here to go into the building. Gheesh.[quotation mark][paragraph break]".



[Arbitrary Notice]

The arbitrary notice is a backdrop. The arbitrary notice is in Nyantech Entrance and RevolvingDoor. The description of the arbitrary notice is "[arbitraryNoticeDescription]." Understand "message" or "sign" or "pane" or "panes" as the arbitrary notice.

Instead of taking the arbitrary notice:
	say "The unicorn clears his throat, [quotation mark]I believe that is building property.[quotation mark][paragraph break]" 
	
Instead of touching the arbitrary notice:
	say "The notice says the same thing, but in Braille."
					
To say arbitraryNoticeDescription:
	say "[apostrophe]Experienced Players Only. No exceptions -- The management[apostrophe]".

		
Section 11 - Ashwell-Lott Estate

The description of Ashwell-Lott Estate is "A 19th Century manor house, now a winery." Ashwell-Lott Estate is an improper-named structure. Understand "ashwell" or "ashwell-lott" or "lott" or "house" as Ashwell-Lott Estate. Understand "building" as Ashwell-Lott Estate when the location is Ashwell-Lott Estate. The printed name of Ashwell-Lott Estate is "estate". The title of Ashwell-Lott Estate is "Ashwell-Lott Estate".

The vineyard is a backdrop in Ashwell-Lott Estate. The description of the vineyard is "Long rows of wooden frames covered with broad green leaves and red grapes." Understand "grape" or "grapes" or "frame" or "frames" or "leaf" or "leaves" or "winery" or "wine" as the vineyard.

Instead of doing something other than examining with the vineyard:
	say "Visitors are not allowed in the vineyard."
	
Instead of listening when the player is in the Ashwell-Lott Estate:
	say "You hear the whine of the grape presses."
	
Instead of searching the Ashwell-Lott Estate:
	try searching the vineyard.
	
Instead of eating the vineyard:
	try ordering "grapes".

Section 12 - Garden Gnome

The description of Headless Garden Gnome is "A[if the beheaded of the Headless Garden Gnome is false]n absurdly happy[otherwise] decapitated[end if] garden gnome pokes out from a poorly maintained lawn.[one of] This must have been a portal held over from the previous Nyantech game, Ink Grass.[or][stopping]". Headless Garden Gnome is an improper-named artifact. Understand "decapitated" or "headless" as Headless Garden Gnome when the beheaded of the Headless Garden Gnome is true. Understand "sculpture" or "art" or "figurine" or "statue" as Headless Garden Gnome when the location is Headless Garden Gnome. The printed name of Headless Garden Gnome is "[if the beheaded of the Headless Garden Gnome is true]decapitated[otherwise]absurdly happy[end if] garden gnome statue". The title of Headless Garden Gnome is "[if the beheaded of the Headless Garden Gnome is true]Headless Garden Gnome[otherwise]Formerly Headless Garden Gnome[end if]". The Headless Garden Gnome has a truth state called beheaded. The beheaded of the Headless Garden Gnome is true. Understand "formerly" or "happy" or "absurdly" as the Headless Garden Gnome when the beheaded of the Headless Garden Gnome is false.

Instead of attacking the Headless Garden Gnome, say "Have some pity -- it[apostrophe]s already missing it[apostrophe]s head."  

The lawn is a scenery in the Headless Garden Gnome. The description of the lawn is "A real disgrace for the neighborhood, it is overgrown with high weeds." Understand "weed" or "weeds" or "grass" as the lawn. 

Instead of cutting the lawn for the first time:
	say "Aside from not having a lawn mower, it would be best to first nuke it from high orbit. Who knows what is living in there.[paragraph break]";
	bestow "Just To Be Sure".
	
Instead of cutting the lawn:
	say "You do not have the tools, time, or inclination to do something so useful. You[apostrophe]ve already wasted enough time just thinking about it rather than playing Pogoman GO! <shudder!>[paragraph break]".

Instead of entering the lawn, say "No thanks. Ticks!"

The severed head is a prop. It is in the void. The description of the severed head is "An absurdly happy little face with a saccharine smile -- every time you see, you are filled with rage. No wonder someone knocked it off."

Instead of searching the lawn for the first time:
	say "You poke carefully through the weeds.[paragraph break]What's this?[paragraph break]Ah! You've found the gnome's head! It must have been laying there for years.[paragraph break]";
	move the severed head to the player;
	bestow "Found A Garden Gnome's Severed Head".
	
Instead of taking the lawn for the first time:
	say "An elderly man next door yells at you for messing with the lawn.[paragraph break]";
	bestow "Get Off My Lawn!".

Instead of taking the lawn:
	say "Dude. Lay off the grass. There is enough pogoMeth for everyone."
	
Instead of taking the Headless Garden Gnome for the first time:
	say "You would never live it down if you were caught caught trying to make off with the headless figurine.[paragraph break]";
	bestow "Gnomish Ignominy".
	
Instead of taking the Headless Garden Gnome:
	say "It would not go with any of your other furniture."
	
Instead of putting the severed head on the Headless Garden Gnome:
	say "When you place the absurdly happy head on the little statue it fuses in place and the gnome spring to life. It finishes a sentence that it must have started saying years ago, [quotation mark]... with a chicken! A rubber chicken![quotation mark][paragraph break]The gnome looks around and realizes that something is amiss. He asks, [quotation mark]Decapitated?[quotation mark][paragraph break][quotation mark]Yes, afraid so,[quotation mark] you reply with some misplaced guilt.[paragraph break][quotation mark]Yeah. That happens,[quotation mark] remarks the gnome laconically. Without missing a beat, the gnome shrugs, wanders into the grass and brings out a few beers, which you share. After a while, the gnome doesn[apostrophe]t seem like such a bad guy after all.[paragraph break]With a glance at the sky, the gnome realizes that he better get back on duty, so he gets back in position and turns to solid rock again.[paragraph break]";	
	bestow "Party Time! Rock On!";
	move the severed head to the void;
	now the beheaded of the Garden Gnome is false.
	
Instead of climbing the Headless Garden Gnome:
	say "It is only about a foot tall, so you are not so much climbing it as stepping on it."
	
Instead of burning the lawn:
	say "It is too green to catch fire[one of], but it[apostrophe]s the thought that counts, so thanks[or][stopping]."
	
Instead of smelling the severed head:
	say "Severe halitosis."

Section 13 - Parking Lot Award

The description of Parking Lot Award is "A[if buffed of the Parking Lot Award is true]n almost painfully shiny[otherwise] tarnished[end if] brass plaque next to this empty and entirely unremarkable parking lot proclaims that it won a design award for some incomprehensible reason." Parking Lot Award is an improper-named place. Understand "plaque" or "brass" as Parking Lot Award when the location is Parking Lot Award. The printed name of Parking Lot Award is "award for best parking lot design". The title of Parking Lot Award is "Parking Lot Award". The Parking Lot Award has a truth state called buffed. The buffed of the Parking Lot Award is false.

Understand "buff [something]" as rubbing.

Instead of rubbing the Parking Lot Award:
	say "You buff the plaque";
	if the buffed of the Parking Lot Award is true:
		say " some more.";		
	otherwise:
		say ".[paragraph break]";
		now buffed of the Parking Lot Award is true;
		bestow "Parking Lot Award Award". [sic]


Section 14 - Old Town Hall

The description of Old Town Hall is "A single story edifice of white-washed roughly hewn oak panels, the Old Town Hall is now used for wedding receptions, Bar Mitzvahs, and Thursday-night bear wrestling." Old Town Hall is a structure. Understand "building" as Old Town Hall when the location is Old Town Hall. Understand "oak" or "panels"  as Old Town Hall.

Section 15 - Spit n' Solder

The description of Spit n' Solder is "The town hardware store. A sun-faded display in the windows advertises [quotation mark]free vacuum tube testing[quotation mark].". Spit n' Solder is an improper-named structure. Understand "hardware" as Spit n' Solder. Understand "building" or "store" as Spit n' Solder when the location is Spit n' Solder. The title of Spit n' Solder is "Spit n[apostrophe] Solder". The printed name of Spit n' Solder is "hardware store".

The display is scenery in Spit n' Solder. The description of the display is "In addition to testing vacuum tubes, the store advertises that it also services BlackBerry phones." Understand "windows" or "window" as the display.

After examining the display for the first time:
	bestow "Know Your Clients".
	
Instead of buying something for the first time:
	say "No funds. You plowed all your assets into your phone to play Pogoman GO![paragraph break]";
	bestow "Investment In The Future".
	
Instead of buying something:
	say "No funds."

Section 16 - Rotary Clock Tower

The description of Rotary Clock Tower is "Off to one side of the park, the clock tower rotates once every twenty-four hours." Rotary Clock Tower is an improper-named artifact. The printed name of Rotary Clock Tower is "rotary clock tower".

Instead of climbing the Rotary Clock Tower:
	say "You gleefully hop on the tower and hang on as it spins madly. In the first hour, it spins almost eight degrees. Eventually, you grow bored and drop off."
	
Instead of pulling or pushing or spinning or turning the rotary clock tower:
	say "It does that all by itself."

Section 17 - Floyd Memorial Bench

The description of Floyd Memorial Bench is "A wooden bench with an inset black nameplate." Floyd Memorial Bench is an improper-named place. The printed name of Floyd Memorial Bench is "bench". The title of Floyd Memorial Bench is "Floyd Memorial Bench". 

Before entering the Floyd Memorial Bench:
	say "No time to dally. Pogomen abound!" instead.
	
The nameplate is scenery in Floyd Memorial Bench. The description of the nameplate is "[quotation mark]In Read-Only-Memoriam of Floyd.[quotation mark][line break]". Understand "plate" as the nameplate. 

Instead of doing something other than examining with the nameplate:
	say "Leave the nameplate alone, you hooligan!".


Section 18 - Giant Chicken

The description of Giant Chicken is "A giant chicken statue made of recycled swizzle sticks." Giant Chicken is an improper-named artifact. Understand "sculpture" or "statue" or [even, liberally] "art" as Giant Chicken when the location is Giant Chicken. The title of Giant Chicken is "Giant Chicken". The printed name of Giant Chicken is "giant chicken sculpture".

The swizzle sticks are scenery. The swizzle sticks are in Giant Chicken. The description of the swizzle sticks is "How many drinks must have been stirred in this effort?"

Instead of climbing the Giant Chicken:
	say tefloned.
	
Instead of attacking the Giant Chicken:
	say "Squaaawwwwwwkk!"

Section 19 - Welbourn Travel

The description of Welbourn Travel is "Maps of various adventures fill the windows of this travel agency." Welbourn Travel is an improper-named structure. The printed name of Welbourn Travel is "Welbourn Travel Agency". Understand "agency" as Welbourn Travel. Understand "building" or "store" as Welbourn Travel when the location is Welbourn Travel. The printed name of Welbourn Travel is "Welbourn Travel Agency". The title of Welbourn Travel is "Welbourn Travel". 

The maps are scenery in Welbourn Travel. The description of the maps is "Colorful maps that detail twisty and not-so-twisty passages through the town and abroad." Understand "map" or "window" or "windows" as the maps.

Section 20 - Hook & Ladder

The description of Hook & Ladder is "The home of Fire Brigade Number 12." Hook & Ladder is an improper-named structure. Understand "hook and ladder" or "firehouse" as Hook & Ladder. Understand "building" as Hook & Ladder when the location is Hook & Ladder. The title of Hook & Ladder is "Hook & Ladder". The printed name of Hook & Ladder is "firehouse".

Instead of smelling when the player is in Hook & Ladder:
	say "Smells smoky."

Section 21 - Prissy's Little Sausages

The description of Prissy's Little Sausages is "Ninety varieties of miniature sausage, all served with Prissy[apostrophe]s special sauce." Prissy's Little Sausages is an improper-named structure. Understand "prissy" as Prissy's Little Sausages. The title of Prissy's Little Sausages is "Prissy's Little Sausages". The printed name of Prissy's Little Sausages is "sausage restaurant". Understand "building" or "store" or "restaurant" or "sausage" or "bratwurst" or "bratwursts" as Prissy's Little Sausages when the location is Prissy's Little Sausages. 

Instead of smelling when the player is in Prissy's Little Sausages:
	say "Smells like bratwurst!"
	
Before eating or buying Prissy's Little Sausages:
	try ordering "sausages";
	stop the action.

Section 22 - Yummi Tummi Softserve

The description of Yummi Tummi Softserve is "Pink robotic pigs roller skate between tables serving up sundaes, cones, and floats." Yummi Tummi Softserve is an improper-named artifact. Understand "ice" or "cream" or "soft" or "serve" or "parlor" as Yummi Tummi Softserve. Understand "building" or "restaurant" as Yummi Tummi Softserve when the location is Yummi Tummi Softserve. The printed name of Yummi Tummi Softserve is "ice cream parlor". The title of Yummi Tummi Softserve is "Yummi Tummi Softserve". Understand "YTS" as Yummi Tummi Softserve.

The robotic pigs are scenery in Yummi Tummi Softserve. The description of the robotic pigs is "The portly prosthetic porcines glide back and forth between the restaurant the its clients. They are dressed in red and white pogodotted uniforms and are not the least bit inconvenienced by darting about with trays full of frosty treats at breakneck speeds on their inline skates." Understand "pig" or "robot" or "robots" or "porcine" or "porcines" or "droid" or "droids" or "roller" or "rolling" or "skate" or "skates" or "inline" or "tray" or "trays" or "uniform" or "uniforms" as the robotic pigs. 

Instead of doing something other than examining with the robotic pigs:
	say "You are reluctant to disturb them; they are moving so quickly and carrying such heavy loads that you are afraid they would run you down."
	
The tables are scenery in Yummi Tummi Softserve. The description of the tables is "Picnic tables full of satisfied customers are clustered on every side of the restaurant." Understand "table" or "picnic" as the tables.

The customers are scenery in Yummi Tummi Softserve. The description of the customers is "Satisfied -- nay, euphoric -- customers line picnic tables enjoying the ice cream-like products served by YTS." Understand "client" or "clients" or "customer" as the customers. 

Instead of doing something other than examining with the customers:
	say "They are too intent on their creamy desserts to take any notice of you."

The ice cream is scenery in Yummi Tummi Softserve. The description of the ice cream is "Every sort of ice cream is available here. Certainly, such favorites as banana-splits, fudge sundaes, and black-and-white sodas, but also YTS signature dishes such as the [one of]guacamole frappe[or]teriyaki twirl[or]habañero double firehouse squirt[or]the triple-scoop live fire-ant combo[or]toothpaste gelato with Oreo bowl[or]Rocky Mountain Spotted cone[in random order] and their [one of]scorpion pops[or]razor ices[or]petroleum floats[or]whipped cream and industrial surprise platters[or]old fashioned typhoid squid cakes[in random order]." Understand "float" or "floats" or "soda" or "sodas" or "creams" or "cone" or "cones" or "sundae" or "sundaes" or "bowl" or "bowls" as the ice cream.

Instead of tasting or eating ice cream for the first time:
	say "A pogomaster must be resolute in the face of temptation. You try to put the delightful dessert out of your mind and concentrate on the game.[paragraph break]";
	bestow "But It Does Look Tasty".
	
Instead of tasting or eating ice cream:
	say "No time for eating. Must play Pogoman GO!".
	
Before eating or buying Yummi Tummi Softserve:
	try ordering "ice cream";
	stop the action.

Section 23 - Service Dog Memorial

The description of Service Dog Memorial is "[quotation mark]Scruffy, 3rd battalion, 5th regiment. Her service will be remembered.[quotation mark]". Service Dog Memorial is an improper-named artifact. Understand "scruffy" as the Service Dog Memorial. Understand "statue" or "sculpture" as Service Dog Memorial when the location is Service Dog Memorial. The title of Service Dog Memorial is "Service Dog Memorial". The printed name of Service Dog Memorial is "elaborate memorial to service dogs".

Section 24 - Gardens of Zarf

The description of The Gardens of Zarf is "A well-curated selection of carnivorous plants. A sign warns away small children and pets."  The Gardens of Zarf is an improper-named place. Understand "garden" or "Zarfian" as The Gardens of Zarf. The title of The Gardens of Zarf is "The Gardens of Zarf". The printed name of The Gardens of Zarf is "Zarfian garden".

The zarfian sign is scenery in The Gardens of Zarf. The description of the zarfian sign is "[zarfSign]".

After examining the zarfian sign for the first time:
	bestow "Eye For Detail".

To say zarfSign:
	say "The fine print on the sign reads: [quotation mark]Warning: Rated Relatively Cruel.[quotation mark]";

Instead of searching or entering The Gardens of Zarf when the player is in Gardens of Zarf for the first time:
	say "Weeds grab at your feet and a sunflower nearly slices your head off. While struggling free, the azaleas grab your wrist and shake the phone free. It falls into a horde of marigolds that rip it to pieces.";
	phoneDeath.
	
Instead of searching or entering The Gardens of Zarf  when the player is in Gardens of Zarf:
	say "You heed the sign."
	
Instead of pulling or pushing or spinning or turning the zarfian sign:
	say "It does not budge."
	
The innocuous-appearing plants are plural-named scenery. The innocuous-appearing plants are in the Gardens of Zarf. The description of the innocuous-appearing plants is "Flowers and ornamentals growing in an aesthetically pleasing and not at all troubling arrangement."  Understand "plant" or "plants" or "flower" or "flowers" or "carnivorous" or "man-eating" or "meat-eating" or "deadly" or "lethal" or "sunflower" or "azalea" or "azaleas" or "sunflowers" or "marigold" or "marigolds" as the innocuous-appearing plants.. 

Instead of doing something other than examining with the innocuous-appearing plants:
	say "The flowers are set back a bit from the edge of the garden. Certainly, they would be easily within reach if you were to come into the garden itself."

Section 25 - Flan Emporium

The description of Flan Emporium is "Flan! Flan! Flan! Everybody wants some." Flan Emporium is an improper-named structure. Understand "building" or "store" as Flan Emporium when the location is Flan Emporium. The printed name of Flan Emporium is "flan store". The title of Flan Emporium is "Flan Emporium".

Instead of eating Flan Emporium, say "Unfortunately, there is no tasty flan laying about."

Instead of drinking Flan Emporium, say "Flan is more a solid than a liquid, and in any event, there isn't any here."

Before eating or buying Flan Emporium:
	try ordering "flan";
	stop the action.

Section 26 - General Nelson
	
The description of General Nelson is "A larger than life statue of General Bosphorus [quotation mark]Rabid Mongrel[quotation mark] Nelson." General Nelson is an improper-named artifact. Understand "sculpture" or "art"  or "statue" as General Nelson when the location is General Nelson. The printed name of General Nelson is "statue of General Nelson". The title of General Nelson is "General Nelson".

Instead of climbing General Nelson:
	say tefloned.
	
To say tefloned:
	say "You try, but you[apostrophe]re not the first. Long ago, the town sprayed the statue with teflon to prevent such tom foolery[one of] and to avoid frivolous lawsuits from poorly coordinated but litigious statue-climbing buffoons[or][stopping]."

Section 27 - Church of the Orthogonal Sticks

The description of Church of the Orthogonal Sticks is "The church is constructed entirely of Lincoln Logs except for the stained glass."  Church of the Orthogonal Sticks is an improper-named structure. Understand "lincoln" or "logs" as Church of the Orthogonal Sticks. Understand "building" as Church of the Orthogonal Sticks when the location is Church of the Orthogonal Sticks. The printed name of the Church of the Orthogonal Sticks is "church". The Title of the Church of the Orthogonal Sticks is "Church of the Orthogonal Sticks".

The stained glass is scenery in the Church of the Orthogonal Sticks. The description of the stained glass is "The ornate windows cast right-angled reflections everywhere." Understand "stained" or "glass" or "window" or "windows" as the stained glass.

Instead of doing something other than examining with the stained glass, say "You can't, the windows are too high up."

Instead of burning the church of the orthogonal sticks for the first time:
	say "Do you want to end up in the Old Jail that badly?[paragraph break]";
	bestow "Intolerance Not Tolerated".
	
Section 28 - Witch Pillory

The description of Witch Pillory is "This site commemorates the town[apostrophe]s fine tradition of witch hunts in the 1600s. [one of] Way to go founding fathers![or][stopping]". Witch Pillory is an improper-named artifact. The printed name of Witch Pillory is "witch pillory".

Instead of entering or climbing Witch Pillory when the player is in Witch Pillory:
	say "The pillory is only for convicted witches. All other unauthorized use is prohibited."

Section 29 - Flag Pole

The description of Flag Pole is "A hundred-foot flag pole lit day and night by floodlights around its base." Flag Pole is an improper-named artifact. The printed name of flag pole is "flag pole".

The flagProxy is privately-named scenery in Flag Pole.  The printed name of the flagProxy is "flag". The description of the flagProxy is "It waves proudly in the slight breeze." Understand "flag" or "banner" as flagProxy.

Instead of climbing Flag Pole, say "Inadvisable. The location is way too public, particularly with all those lights shining on it."

Instead of going up when the player is in Flag Pole:
	try climbing the Flag Pole.

Instead of doing something other than examining or flagging with the flagProxy, say "It is up to high."

Flagging is an action applying to one thing. Understand "raise [something]" or "lower [something]" as flagging when the player is in Flag Pole.

Check Flagging:
	if the noun is the flagProxy:
		say "There are no ropes to raise or lower the flag. The flag pole was installed by an expensive contractor more than two decades ago, but the plans provided by the village landmarks office did not call for any mechanism to raise or lower the flag. The best the town has managed is to put lights all around it. When that flag wears out, they'll just have to replace the entire thing.";
	otherwise:
		say "You don't see how that would help the situation."
		
The floodlights are plural-named scenery in Flag Pole. The description of the floodlights is "Large floodlights ring the pole and are tilted up to illuminate the flag." Understand "light" or "lights" or "floodlight" as the floodlights.

Instead of switching on or switching off the floodlights:
	say "The floodlights are not something you can switch. Someone can. Just not you."
	
Instead of entering the floodlights:
	say "You are bathed in warm light."
	
Instead of flagging or turning or pushing or pulling the floodlights:
	say "Their angle is fixed; they don[apostrophe]t budge."

Section 30 - Krusty Kronuts

The description of Krusty Kronuts is "Home of the caramel-glazed toroiducken." Krusty Kronuts is an improper-named structure. Understand "donut" or "donuts" or "doughnut" or "doughnuts" or "kroughnut" or "kroughnuts" or "kronut" as Krusty Kronuts. Understand "building" or "store" or "restaurant" as Krusty Kronuts when the location is Krusty Kronuts. The printed name of Krusty Kronuts is "kroughnut store". The title of Krusty Kronuts is "Krusty Kronuts".

Instead of smelling when the player is in Krusty Kronuts:
	say "Mmm.  Kroooonuts!"
	
Before eating or buying Krusty Kronuts:
	try ordering "kronuts";
	stop the action.

Section 31 - Cyclorama

The description of Cyclorama is "The indoor bicycle track yields important radionuclides for pharmaceutical use." Cyclorama is an improper-named structure. Understand "bike" or "bicycle" or "track" or "cycle" as Cyclorama. Understand "building" as Cyclorama when the location is Cyclorama. The printed name of Cyclorama is "indoor bike track". The title of Cyclorama is "Cyclorama".

Instead of spinning cyclorama:
	say "Spinning is something you do inside cyclorama, not to cyclorama."

Section 32 - Biocontainment Facility

The description of Biocontainment Facility is "[if the biocontainment facility is unvisited]You are vaguely aware that something isn[apostrophe]t right here. Gaunt, pale forms lurch and moan as they pour out of the vaccine laboratory. There[apostrophe]s something wrong with them, but you can[apostrophe]t quite put your finger on it.[paragraph break]Oh, wait, that [italic type]is[roman type] weird - none of them have phones...[paragraph break][end if]The zombie horde mulls aimlessly, eyes down, faces blank, trudging their way through unlife. They don[apostrophe]t seem to notice folks playing Pogoman.". 

Biocontainment Facility is an improper-named structure. Understand "bioweapons" or "bioweapon" or "laboratory" or "lab" or "vaccine" or "hospital" as Biocontainment Facility. Understand "building" as Biocontainment Facility when the location is Biocontainment Facility. The printed name is "biocontainment facility".

The zombie horde is an animal. The zombie horde is plural-named.  The zombie horde is scenery in the biocontainment facility. The description of the zombie horde is "A listless, shambling, pack of undead. They seems strangely unattracted to the brains of gamers." Understand "zombies" or "undead" or "masses" or "pack" as the zombie horde.	

Instead of doing something with the zombie horde:
	if the current action is examining:
		zombie mumble;
	else if the current action is showing:
		zombie mumble;
	else if the current action is telling:
		zombie mumble;
	else if the current action is asking:
		zombie mumble;
	else if the current action is talking to:
		zombie mumble;	
	else:
		say "You feel like you have achieved a tacit détente with the zombie masses -- live and let unlive, as it were.[paragraph break]You don[apostrophe]t want to rile them up, so you keep your distance.[paragraph break]On the whole, they are no worse than many roommates you have had."
		
To zombie mumble:
	say "[one of]Mmmm[or]Arrrrgggghhhh[or]Gaaacccckkkk (spittle, drool, slobber) Gaack[or]Ppphhhhbbbbt[or]Brains? No? Arrrggghhh[or]Mrrrppphhh LOL Gack[in random order]![paragraph break]".
		
Before printing the locale description of the biocontainment facility:
	if the biocontainment facility is unvisited:
		bestow "Just One of the Boys";
	otherwise:
		continue the action.
		
Instead of searching the Biocontainment Facility:
	try entering the Biocontainment Facility.

Section 33 - Battle of Margot's Pantry

The description of Battle of Margot's Pantry is "The Descendants of Posterity have erected a plaque commemorating this turning point in western civilization. In modern times, it appears to be [quotation mark]Dino's Pizza[quotation mark]." Battle of Margot's Pantry is an improper-named structure. Understand "dino's pizza" or "pizzeria" or "dino" or "dinos" or "dino's" or "pizza" or "dinos pizza" as Battle of Margot's Pantry. Understand "building" or "store" or "restaurant"  as Battle of Margot's Pantry when the location is Battle of Margot's Pantry. The title of Battle of Margot's Pantry is "Battle of Margot's Pantry". The printed name of Battle of Margot's Pantry is "pizzeria".

The DOP plaque is scenery in Margot's Pantry. The description of the DOP plaque is "A small plaque mounted in the brick wall of the building.[paragraph break]It says, [quotation mark]On the spot (or perhaps nearby) in 1893 (plus or minus), a decisive battle (or at least memorable one) was fought (perhaps strongly contested is a better way of phrasing that) between two opposing sides (we are sure of that part), with one of them the victor.[paragraph break]This plaque erected in memory of the fallen (if any were actually killed; even if not, no doubt they are dead by now anyhow, so good enough, really).[paragraph break]Presented by the Historical Inference Committee of the Descendants of Posterity, Crawdad Gulch Chapter.[quotation mark]". Understand "brick" or "wall" as the DOP plaque.

Instead of smelling when the player is in Battle of Margot's Pantry:
	say "Fresh Pizza! No. Must be strong. Keep Mind on Game."
	
Before eating or buying Margot's pantry:
	try ordering "pizza";
	stop the action.

Section 34 - Gas Station Gazebo

The description of Gas Station Gazebo is "Yet another gas station gazebo.[one of] What is it with gas stations and gazebos?[or][stopping]".  Gas Station Gazebo is an improper-named artifact. Understand "building"  as Gas Station Gazebo when the location is Gas Station Gazebo. The title of Gas Station Gazebo is "Gas Station Gazebo". The printed name of Gas Station Gazebo is "gazebo".

Instead of entering the Gas Station Gazebo for the first time:
	say "Whatever for? There is never, ever, any justification for entering a Gas Station Gazebo.[paragraph break]";
	bestow "Senseless Revulsion".
	
Instead of entering the Gas Station Gazebo when the player is in Gas Station Gazebo:
	say "Your irrational fear of Gas Station Gazebos prevents you from taking even one step closer to the macabre structure."

Section 35 - Dung Beetle Mural

The description of Dung Beetle Mural is "Dark earth tones and impasto technique; you're not sure of the medium." Dung Beetle Mural is an improper-named artifact. Understand "sculpture" or "statue" or [even, liberally] "art" as Dung Beetle Mural when the location is Dung Beetle Mural. The printed name of Dung Beetle Mural is "mural". The title of Dung Beetle Mural is "Dung Beetle Mural".

Section 36 - Hank's Tavern

The description of Hank's Tavern is "Now an artist[apostrophe]s colony, the tavern boasts pottery wheels, arc-welding, and improvised explosive courses at night (in addition to a good selection of pub food and drinks)." Hank's Tavern is an improper-named structure. Understand "hank" or "hanks" as Hank's Tavern. Understand "building" or "store" or "restaurant"  or "bar" or "pub" or "club" as Hank's Tavern when the location is Hank's Tavern. The title of Hank's Tavern is "Hank's Tavern". The printed name of Hank's Tavern is "pub".

Instead of listening when the player is in Hank's Tavern:
	say "From the tavern you hear people socializing and the occasional [one of]muffled explosion[or]shattering of porcelain[or]whine of an angle grinder cutting through plate iron[or]whirring of servos[or]sizzle of an industrial laser[or]splatter of plasma-scintered alloy[or]whistling of welding gas[in random order]."
	
Section 37 - Olde Train Station

The description of the Olde Train Station is "Still a functioning passenger train station, since the early 19th Century, the Olde Train Station (formerly, the Newe Train Station) has been a port of call – home away from home – for diplomats, hustlers, entrepreneurs, and… wanderers." Olde Train Station is an improper-named structure. Understand "old" as Olde Train Station. Understand "building" as Olde Train Station when the location is Olde Train Station. The printed name of Olde Train Station is "station". The title of Olde Train Station is "Olde Train Station".

The railroad tracks are scenery in the Olde Train Station. The description of the railroad tracks is "They are below the level of the platform; you would have to go just a bit more to the east to get a good look at them." Understand "track" or "platform" or "platforms" as the railroad tracks.

Instead of doing something other than examining with the railroad tracks:
	say  description of the railroad tracks;
	say paragraph break.
	

Section 38 - Dog Exercise Area

The description of the Dog Exercise Area is "[one of]Dogs can be seen practicing yoga and synchronized barking at all hours of the day (much to the annoyance of their neighbors).[paragraph break]An[if the Old Jail is visited]other[end if] in-game advertisement pops up on your phone:[paragraph break][quotation mark]If you like dogs, check out our canine-centric sci-fi game, [italic type]Rover[apostrophe]s Day Out[roman type], which is available online for play or download.[quotation mark][paragraph break]You hastily swipe the shameless advertisement from your phone[or]A large, open field where dogs and owners play[stopping]."

Dog Exercise Area is an improper-named place. Understand "field" or "run" as Dog Exercise Area. Understand "park" as Dog Exercise Area when the location is Dog Exercise Area. The title of Dog Exercise Area is "Dog Exercise Area". The printed name of Dog Exercise Area is "dog run".

The dogs are animals. The dogs are scenery. The dogs are plural-named. The dogs are in the dog exercise area. The description of dogs is "Floppy eared beagles, bristly schnauzers, and skinny greyhounds romp about, glad to be out and about with their owners[one of]. You puzzle how so many people could spent so much time out of their mothers[apostrophe] basements without a cell phone in hand. It is truly enigmatic[or][stopping]." Understand "dog" or "canine" or "owner" or "owners" or "schnauzer" or "schnauzers" or "beagle" or "beagles" or "greyhound" or "greyhounds" as the dogs.

Instead of smelling the dogs for the first time:
	say "You smell nothing unexpected.[paragraph break]Neither do the dogs."
	
Instead of smelling the dogs:
	say "The dog run could use a bit of picking up."
	
Instead of attacking or cutting the dogs:
	say "Their fangs dissuade you from doing so."
	
Instead of licking the dogs for the first time:
	say "You lick them; they lick you.[paragraph break]";
	bestow "Quid Pro Quo".
	
Instead of licking the dogs:
	say "Mutual licking occurs."
	
Instead of rubbing the dogs:
	say "You pet the dogs briefly while scanning the area for pogomen."
	
Instead of spinning the dogs:
	say "They enjoy it and want to play more!"
	
Understand "pet [something]" as rubbing.

Section 39 - Bottle Cap Wall

The description of Bottle Cap Wall is "A wall made entirely of bottle caps." Bottle Cap Wall is an improper-named artifact. Understand "mural" as Bottle Cap Wall. Understand "sculpture" or "statue" or [even, liberally] "art" as Bottle Cap Wall when the location is Bottle Cap Wall. The printed name of the Bottle Cap Wall is "wall made entirely of bottle caps". The title of Bottle Cap Wall is "Bottle Cap Wall". Understand "caps" as the Bottle Cap Wall.

Instead of Climbing The Bottle Cap Wall:
	say "The edges of the bottle caps are too sharp to get a good handhold."
	
Instead of opening the Bottle Cap Wall:
	say "These bottle caps were long ago opened."


Section 40 - Mile Marker 0.7

The description of MarkerSeven is "Demonstrating the importance of relativity, the mile marker is unquestionably 0.7 miles from something -- it just doesn[apostrophe]t say what." MarkerSeven is privately-named. MarkerSeven is a proper-named artifact. Understand "seven" or "zero" or "naught" or "point" or "decimal" or "mile" or "marker" or "post" as MarkerSeven.  The printed name of MarkerSeven is "mile marker 0.7". 

Instead of touching MarkerSeven for the first time:
	say "[oriented].";
	bestow "You Are Here".
	
Instead of touching MarkerSeven:
	say "[oriented]."

To say oriented:
	say "You are seized with the absolute conviction that you are less than one mile from [italic type]something[roman type]."
	

Section 41 - Unfathomable Orb

The description of Unfathomable Orb is "[one of]A lawn orb, the why of which is uncertain and, indeed, perhaps unknowable.[or]An epistemologically indeterminate orb.[or]An orb. Or is it?[or]A spherical tesseract.[or]An equi-improbable arrangement of uncertainties about a central point.[or]An unusual piece of lawn furniture.[stopping]".

Unfathomable Orb is an improper-named artifact. Understand "lawn" or "furniture" or "lawn furniture" or "sculpture" or "statue" or [even, liberally] "art" as Unfathomable Orb when the location is Unfathomable Orb. The title of Unfathomable Orb is "Unfathomable Orb". The printed name of the Unfathomable Orb is "orb".

Instead of taking the orb:
	say "The orb is something which no one really gets, and which few people can take for more than a few moments."
	
Instead of touching or rubbing the orb:
	say "Briefly, you have the sensation of leaving your body and floating weightlessly somewhere above the town. In the distance below, you see [heightDescription]. When you recoil, the vision stops."
	
Instead of searching the orb for the first time:
	say "Searching the orb reveals absolutely nothing. Predictably.[paragraph break]";
	bestow "Unenlightened".
	
Section 42 - Rottweiler Art

The description of Rottweiler Art is "They may be good guard dogs, but they are lousy artists. The sculpture lacks subtlety."

Rottweiler Art is an improper-named artifact. Understand "doggy" as Rottweiler Art. Understand "sculpture" or "statue" or "art" as Rottweiler Art when the location is Rottweiler Art. The title of Rottweiler Art is "Rottweiler Art". The printed name of Rottweiler Art is "doggy art".

Instead of smelling the rottweiler art for the first time:
	say "Smells like some other dogs have already expressed their opinion on this work of art.[paragraph break]";
	bestow "Everyone Is A Critic".

Section 43 - Sister City Friendship Altar

The description of Sister City Friendship Altar is "A timeworn granite slab with furrows cut to drain towards the edges, the arcane runes at its base are nearly illegible."

Sister City Friendship Altar is an improper-named artifact. Understand "sacrifice" or "human" or "sacrificial" as the Sister City Friendship Altar. Understand "city"  or [questionably] "art" as Sister City Friendship Altar when the location is Sister City Friendship Altar. The printed name of Sister City Friendship Altar is "altar". The title of Sister City Friendship Altar is "Sister City Friendship Altar". Understand "slab" or "furrow" or "furrows" as the Sister City Friendship Altar.

The runes are scenery in Sister City Friendship Altar. The description of the runes is "Cryptic yet somehow menacing runes."

Instead of touching or searching or examining the runes for the first time:
	say "You are not sure how you even know how, but you read the runes aloud and find yourself dressed in shiny bronze Hittite armor doing battle with an Urgothot, the legendary sand dragon of Mesopotamian lore.[paragraph break]You quickly slay the Urgothot because, entertaining though it is, you were in the middle of playing Pogoman GO! and can ill afford to spend time battling ancient hellspawn.[paragraph break]While trying to avoid coming off as ill-mannered, you accept the rushed thanks of their royal majesties, shovel food down quickly during the celebration thrown in your honor (while stealing frequent glances at your phone), and slip away before a thousand slaves can haul your commemorative statue to the top of a nearby ziggurat.[paragraph break]With some relief, you perform the typical ritual of return, and having said the runes backwards, find yourself back in town, where you phone reacquires cellular service and you can finally get back to what you were doing.[paragraph break]";
	bestow "Slayer Of The Mighty Urgothot".
	
Instead of touching the altar:
	say "It feels like any other pagan sacrificial altar."
	
Instead of touching or searching or examining the runes: 
	say "You don[apostrophe]t have time for that sort of nonsense."
	
Instead of entering the Sister City Friendship Altar when the player is in the Sister City Friendship Altar for the first time:
	say "Disembodied spirits scream frantically not to, so you don[apostrophe]t.[paragraph break]";
	bestow "Good Advice".
	
Instead of entering the Sister City Friendship Altar when the player is in the Sister City Friendship Altar:
	say "You are not willing to sacrifice any more time to messing around here, when you could be running around, searching for pogomen."

Section 44 - 1893

The description of Year1893 is "A plaque both commemorating the failure to hire a town historian in 1893 and bemoaning the absence of other recorded events for that year." 

Year1893 is an improper-named artifact. Year1893 is privately-named.  Understand "1893" or "plaque" as Year1893. The printed name of Year1893 is "plaque". The title of Year1893 is "1893 Plaque".

Section 45 - Eagle's Sojourn

The description of Eagle's Sojourn is "A bas relief carving of Dwight Eisenhower dressed as a cowboy and riding an eagle to the moon."

Eagle's Sojourn is an improper-named artifact. Understand "eagle" or "eagles" or "carving" or "moon" or "cowboy" or "dwight" or "eisenhower" as Eagle's Sojourn. Understand "sculpture" or "statue" or "art" as Eagle's Sojourn when the location is Eagle's Sojourn. The title of Eagle's Sojourn is "Eagle[apostrophe]s Sojourn". The printed name of Eagle's Sojourn is "carving".

Section 46 - Nymph With Telescope

The description of Telescope Nymph is "Based on one of Shakespeare[apostrophe]s less known works, in this sculpture, the titular nymph searches the sky for her lost salmon." 

Telescope Nymph is an improper-named artifact. Understand "with" as Telescope Nymph. Understand "sculpture" or "statue" or "art" as Telescope Nymph when the location is Telescope Nymph. The printed name of Telescope Nymph is "nymph statue". The title of Telescope Nymph is "Nymph With Telescope".

Section 47 - Fire Is Our Friend

The description of Fire Is Our Friend is "An eternal flame burns bright above a bronze brazier held aloft by the Four Horsemen of the Apocalypse. The plaque notes that the piece was donated to the town by Fire Brigade 11."

Fire Is Our Friend is an improper-named artifact. Understand "eternal" or "brazier" or "horsemen" or "four horsemen of the apocalypse" or "hazard" or "flaming" as Fire Is Our Friend. Understand "sculpture" or "statue" or "art" as Fire Is Our Friend when the location is Fire Is Our Friend. The title of Fire Is Our Friend is "Fire Is Our Friend". The printed name of Fire Is Our Friend is "flaming sculpture".

Instead of putting the phone on the flame:
	try burning the phone.
	
Instead of inserting the phone into the flame:
	try burning the phone.

Instead of touching or taking or tasting or licking or pulling or pushing or rubbing or turning Fire Is Our Friend:
	try touching the flame.
	
Instead of smelling Fire Is Our Friend:
	try smelling the flame.
	
Instead of switching on Fire is Our Friend:
	try switching on the flame.
	
Instead of switching off Fire Is Our Friend:
	try switching off the flame.

The flame is scenery in Fire is Our Friend. The description of the flame is "A constant, bright flame above the brazier."

Instead of touching or taking or tasting or licking or pulling or pushing or rubbing or turning the flame for the first time:
	say "Yes, the flame is real. Ow.[paragraph break]";
	bestow "Like A Moth".
	
Instead of touching or taking or tasting or licking or pulling or pushing or rubbing or turning  the flame:
	say "You have already ascertained that the flame is too hot to touch. Third degree burns are not going to help you catch any pogomen, so you desist."
	
Instead of smelling the flame for the first time:
	say "It smells a lot like you would imagine your nose might smell if it were on fire."
	
Instead of smelling the the flame:
	say "It smells like something is burning."
	
Instead of switching on the flame:
	say "It is already on."
	
Instead of switching off the flame for the first time:
	say "That would undermine the Eternalness of the Eternal Flame.[paragraph break]";
	bestow "Sic Transit Gloria Mundi".
	
Instead of switching off the flame:
	say "Rather consistently, the eternal flame lacks an off switch."
	

Section 48 - Unearthly Geometry

The description of Unearthly Geometry is "You can only stomach a momentary, sidelong glance at the fecund immensity of the inchoate mass of spongy protoplasm and the loathsome writhing knot of vermiculous tentacles that purports to be a kindergarten art project."

Unearthly Geometry is an improper-named artifact. Understand "tentacles" or "outré" or "abomination" or "detestable" or "perversion" or "infernal" or "monstrosity" or "abysmal" or "horror" or "grotesque" or "vision" or "tentacles" or "project" or "knot" as Unearthly Geometry. Understand "sculpture" or "statue" or "art" as Unearthly Geometry when the location is Unearthly Geometry. The printed name of Unearthly Geometry is "[one of]outre abomination[or]detestable perversion[or]infernal monstrosity[or]abysmal horror[or]grotesque vision[in random order]". The title of Unearthly Geometry is "Unearthly Geometry".

Instead of touching the Unearthly Geometry:
	say "You are momentarily reduced to a state of gibbering idiocy. It lasts only a moment before you fix your eyes back on the cell phone screen and start walking around again. The contrast is unstark."
	
Instead of climbing Unearthly Geometry:
	say "You climb through space of varying dimensions, ending up somewhere behind yourself, just slightly before you began."

Section 49 - Cranberry Bog

The description of Cranberry Bog is "The town[apostrophe]s cranberry bog, a quiet pond filled with the delectable but bitter berries. Bodies are pulled from its depths with some regularity, but at least they are well-preserved by the acidity of the bog." Understand "cranberries" or "berries" or "berry" as the bog.

Cranberry Bog is an improper-named place. Understand "pond" as Cranberry Bog. The printed name of Cranberry Bog is "cranberry bog".

Instead of searching the Cranberry Bog:
	say "[one of]You find nobody. Get it? No body[or]You find nobody[stopping]."
	
Instead of entering the Cranberry Bog:
	say "You don[apostrophe]t want to become it[apostrophe]s next victim!"
	
Instead of swimming in the Bog:
	say "Too many plants."
	
Instead of eating Cranberry Bog:
	say "You are not sure it is safe to eat them without giving them a thorough cleaning."

Section 50 - Found Art

The description of Found Art is "A single screw attached to a surfboard.[one of] This is what counts as art these days. Jeesh.[or][stopping]".

Found Art is an improper-named artifact. Understand "surfboard" or "board" as Found Art. Understand "sculpture" or "statue" or "art" as Found Art when the location is Found Art. The title of Found Art is "Found Art". The printed name of Found Art is "art".

The screw is a scenery in Found Art. The description of the screw is "An aluminum sheet metal screw that requires a seven-and-a-half triple torx screwdriver."

Instead of searching the Found Art:
	say "It is right in front of you."
	
Instead of turning the screw for the first time:
	say "You can[apostrophe]t: you don[apostrophe]t have a seven-and-a-half triple torx screwdriver.[paragraph break]";
	bestow "Torxed".
	
Instead of turning or taking the screw:
	say "It is firmly screwed into the surfboard. This is, after all, a permanent exhibit."
	
Instead of taking the found art:
	say "What would you even do with it? It is not like you have a home to put it in."
	
Instead of pulling the screw for the first time:
	say "Pull a nail; push a screw.[paragraph break]";
	bestow "The Right Tool For The Right Job".
	
Instead of pulling or pushing the screw:
	 say "It seems to be screwed into the surfboard really firmly."
	
Instead of buying the art:
	say "Would you pay them, or would they pay you?"

	
	
Section 51 - Crystal Skull

The description of Crystal Skull is "There isn[apostrophe]t much left of the salty skull exhibit. Occasionally, deer walk through town just to lick it."

Crystal Skull is an improper-named artifact. Understand "exhibit" as Crystal Skull. Understand "sculpture" or "statue" or "art" as Crystal Skull when the location is Crystal Skull. The printed name of Crystal Skull is "crystal skull".

Instead of tasting Crystal Skull:
	say "It tastes like deer spittle."
	
Licking is an action applying to one thing. Understand "lick [something]" or "tongue [something]" as licking.

Carry out licking:
	do nothing.
	
Report licking:
	say "You lick the [noun]."

Instead of licking:
	say "You are hard-pressed to think of any situation where, when playing Pogoman GO!, it would be prudent to stick your tongue anywhere but in your mouth."
	
Instead of licking the Crystal Skull:
	try tasting the Crystal Skull.
	
Instead of taking the Crystal Skull:
	say "It[apostrophe]s not something you can take[one of]. Also: it is cursed, or at least rumored to be. It certainly was for Harrison Ford[or][stopping]."
	
Instead of rubbing the Crystal Skull for the first time:
	say "The coarse salt abrades your hand and the friction raises the temperature of the skull by a fraction of a degree.[paragraph break]";
	bestow "Got A Lot Done Today".

Section 52 - Vuvuzelas For Freedom

The description of Vuvuzelas For Freedom is "A bronze plate is set into the sidewalk here to commemorate the Vuvuzela Uprising of 1893."

Vuvuzelas For Freedom is an improper-named artifact. Understand "vuvuzela" or "uprising" or "bronze" or "plate" or "sidewalk" as Vuvuzelas For Freedom. Understand "commemorative" or "plaque" as Vuvuzelas For Freedom when the location is Vuvuzelas For Freedom. The printed name of Vuvuzelas for Freedom is "plaque". The title of Vuvuzelas for Freedom is "Vuvuzelas For Freedom".

Section 53 - Poison Ivy

The description of Toxicodendron radicans is "In the middle of this field, there is a small sign, [quotation mark]Warning: Poison Ivy.[quotation mark]"

Toxicodendron radicans is an improper-named artifact. Understand "poison" or "ivy" or "poison ivy" as Toxicodendron radicans. Understand "field" as Toxicodendron radicans when the location is Toxicodendron radicans. The printed name of Toxicodendron radicans is "field of poison ivy". The title of Toxicodendron radicans is "Toxicodendron radicans".

The small sign is scenery in Toxicodendron radicans. The description of the sign is "A tiny sign spiked into the undergrowth. It warns people away from the poison ivy here."

Instead of touching the Toxicodendron radicans for the first time:
	say "Even though you are itching to do so, you hold back.[paragraph break]";
	bestow "Pruritic Prudence".
	
Instead of taking or rubbing or touching or licking or pulling or pushing or tasting or squeezing  or searching or turning the Toxicodendron radicans:
	say "Being literate, you heed the sign."
	
Instead of doing something other than examining with the small sign:
	say "You are not keen to plow through the field of poison ivy."

Instead of entering the Toxicodendron radicans when the player is in Toxicodendron radicans:
	try touching the Toxicodendron radicans.
	
	
Section 54 - Perilous Passageway

The description of Perilous Passageway is "A disgusting passageway."

Perilous Passageway is an improper-named place. Understand "dirty" or "alley" or "perilous" or "passage" or "passageway" as Perilous Passageway.  The printed name of proxy-PerilousPassageway is "dirty alley". The title of Perilous Passageway is "Perilous Passageway". The perilous passageway has a number called passaged. The passaged of the perilous passageway is 0.

Instead of going a direction to the perilous passageway:
	increase the passaged of the perilous passageway by one;
	if the passaged of the perilous passageway is:
		-- 1:			
			say "You are torn. Clearly, there is an artifact of immense power down the dark winding passageway you are standing in front of  -- and having it would certainly help you win gym battles and who knows what else. On the other hand, it[apostrophe]s narrow, poorly lit and in all the years you have lived in this town, you[apostrophe]ve never seen anyone walk in or out of the so-called [quotation mark]perilous[quotation mark] passageway.[paragraph break]";
			bestow "At Least Briefly Listened To Your Inner Voice";
			try looking;
		-- 2:
			say the headline of the Perilous Passageway;
			say "As you round a pile of boxes behind a garbage bin searching eagerly for a pogoman artifact, you are immediately flanked by two shady characters who have been lurking in the alley. The heavyset short one blocks your exit while the tall wiry one wearing a red bandana rips the phone from your grasp. He tosses the phone onto a pile of glowing cell phones and his partner tosses you onto a heap of unconscious players.";	
			phoneDeath;
		-- 3:
			say "You recall that last time, walking into this foreboding passageway didn[apostrophe]t work out very well for you. You consider walking around the block. On the other hand, pogoman artifacts are few and far between. Having one place you definitively among the game elite. The artifact-detector on your phone is off the scale (in a sense, since [quotation mark]off the scale[quotation mark] is one of the items on the scale). In any event, it looks pretty powerful.[paragraph break]Decisions, decisions.";
			try looking;
		-- 4:
			say the headline of the Perilous Passageway;
			say "[quotation mark]Hey, Eddy![quotation mark][paragraph break][quotation mark]What?[quotation mark][paragraph break][quotation mark]You know that dupe from before with the phone? The one that came back?[quotation mark][paragraph break][quotation mark]Yeah?[quotation mark][paragraph break]
[quotation mark]Look who[apostrophe]s here again.[quotation mark][paragraph break][quotation mark]That[apostrophe]s improbable.[quotation mark][paragraph break][quotation mark]But not impossible.[quotation mark][paragraph break][quotation mark]Granted, not impossible, I[apostrophe]m just saying it[apostrophe]s improbable.[quotation mark][paragraph break]Your brain is driven forward into your sinuses by a sock full of quarters slamming up against the base of your skull. As you convulse, your phone flies from your fingers like a Chinese throwing star, catching one of your assailants between the eyes. He falls on top of you and your vision fades.";
			phoneDeath;
		-- 5:
			say "Hmm… that dangerous passageway to the [the best route from the location of the player to Perilous Passageway]… The nape of your neck is still sore and you think you might have suffered some brain damage: you can[apostrophe]t remember the name of any of your teachers before high school. Maybe going through this passageway isn[apostrophe]t worth it. On the other hand, you want that artifact... [paragraph break]";
			bestow "Slow Learner";
			try looking;
		-- 6:
			say the headline of the Perilous Passageway;
			say "A familiar scene unfolds. Two thugs jump out from behind boxes and squint at you in the dim light.[paragraph break][quotation mark]Hey Eddy?[quotation mark][paragraph break][quotation mark]Yeah, Frankie?[quotation mark][paragraph break][quotation mark]Is that the bozo who keeps coming back?[quotation mark][paragraph break][quotation mark]The improbable ninja dude?[quotation mark][paragraph break][quotation mark]Yeah.[quotation mark][paragraph break][quotation mark]Yeah, I think so. Or, at least someone so similar as to be indistinguishable.[quotation mark][paragraph break][quotation mark]So, for all practical purposes, it is?[quotation mark][paragraph break][quotation mark]Yeah.[quotation mark][paragraph break]Eddy lifts a ratty couch cushion to protect himself from your ninjitsu, while Frankie winds up with two ten-pound cured salamis and claps them together around your head. Since you were desperately sweeping the alley with your eyes trying to find the artifact, the impact of the luncheon meat takes you by surprise. The phone flies from your grip, ricochets off the dumpster and the screen shatters, showering Frankie with razor-sharp shards of trademarked Corning Gorilla Glass.[paragraph break]You go down like a sack of bricks.";
			phoneDeath;
		-- 7:
			say "No, just no.[paragraph break]Is any artifact worth this pain?[paragraph break]Well, maybe. You daydream winning the adoration of hordes of pogo-fans who would fall at your feet in admiration of the pogoman artifact that you would carry from the passageway like Howard Carter emerging from the tomb of Tutankhamen with ancient booty. Yes, that is compelling.[paragraph break]";
			bestow "Better Part Of Valor";
			try looking;
		-- 8:
			say "Nothing good will come from going in there. After the last attack, your ears ring constantly, your right eye is blurry, and everything seems to be spinning except when you stand very still and hold your breathe.[paragraph break]But what are these minor inconveniences next to the what you could achieve? If you did recover a rare artifact from the alley, it would no doubt propel you to the top ranks of the pogoman player hierarchy and elicit the jealousy of every other player.[paragraph break]";
			bestow "Pain Is The Best Teacher";
			try looking;
		-- 9:
			say the headline of the Perilous Passageway;
			say "You saunter into the den of Frankie and Eddy.[paragraph break]When they see you, they startle.[paragraph break][quotation mark]Hey, buddy. We don[apostrophe]t want any trouble,[quotation mark] pleads Eddy.[paragraph break]Backing away and stumbling over garbage, Frankie holds his hands up, [quotation mark]We[apostrophe]re just leaving.[quotation mark][paragraph break]They vanish into the shadows, leaving you alone in the squalid passageway.[paragraph break]As you search in the alley, the artifact detector on your phone goes wild and burns out, overwhelmed by the power of a nearby object.";
			teleport the player to the perilous passageway;
		-- 10:
			say "With lingering trepidation, you enter the perilous passageway.";
			now the title of the perilous passageway is "until recently perilous passageway";
			now the description of the perilous passageway is "A passageway that is less disgusting than the last time you were here.";
			teleport the player to the perilous passageway;
		-- 11:
			now the title of the perilous passageway is "Entirely Safe Passageway";
			say "You walk with confidence into the formerly perilous passageway.";
			now the description of the perilous passageway is "A well-lit passageway between buildings.";
			teleport the player to the perilous passageway;
		-- otherwise:
			teleport the player to the perilous passageway.
	
The garbage bin is a closed openable fixed in place container. The garbage bin is in perilous passageway. The description of the garbage bin is "An filthy metal trash bin." Understand "bin" or "skip" or "waste" or "dust" or "can" or "lid" or "top" as the garbage bin.

Instead of smelling the garbage bin:
	if the garbage bin is closed:
		say "With the lid on, the garbage doesn[apostrophe]t smell too bad.";
	otherwise:
		if the disgusting refuse is in the garbage bin:
			try smelling the refuse;
		otherwise:
			say "The can smelled better earlier, with garbage in it."

Instead of entering the garbage bin for the first time:
	say "It[apostrophe]s worth a look. Since mom kicked you out of the basement, you have not really had a place of your own.[paragraph break]";
	bestow "Standards Lowered";
	try searching the garbage bin.
	
Instead of entering the garbage bin:
	say "You can[apostrophe]t quite fit into it."
	
Instead of emptying the garbage bin:
	if the garbage bin is closed:
		say "Hard to do with the lid on it.";
	otherwise:
		if the disgusting refuse is in the garbage bin:
			try searching the garbage bin;
		otherwise:
			say "There is no garbage in the bin."

The Baseball Cap of Pogomastery is a wearable pogothing. The Baseball Cap of Pogomastery is in void. The description of the Baseball Cap of Pogomastery is "[one of]You immediately recognize the[or]The[stopping] legendary Baseball Cap of Pogomastery, a red and white hat with a broad brim." Understand "hat" or "brim" as the Baseball Cap of Pogomastery.

Instead of Taking Off the Baseball Cap of Pogomastery for the first time:
	say "It is well known that the Baseball Cap of Pogomastery, once worn, cannot be removed except at the cost of the Pogomaster[apostrophe]s very soul.[paragraph break]All things considered, you keep it on.[paragraph break]";
	bestow "Uncorrupted".
	
Instead of Taking Off the Baseball Cap of Pogomastery:
	say "It seems stuck to your head."

The disgusting refuse is in the void. The description of the disgusting refuse is "Half-rotted tuna sandwiches, bits of plastic, and a collection of headless Barbie dolls; the whole lot of it held together with some sort of sticky black ooze." Understand "garbage" or "trash" or "rubbish" as the disgusting refuse. The indefinite article of the disgusting refuse is "some". Understand "plastic" or "headless" or "barbie" or  "doll" or "barbies" or "dolls" or "black" or "ooze" or "tuna" or "sandwich" or "sandwiches" as the disgusting refuse.

After opening the garbage bin for the first time:
	let D be a direction;
	let N be a random number from 1 to 4;
	let D be entry N of {north, south, east, west};
	say "The refuse in this bin has been waiting millennia for a hero like you to come by and set it free. The olfactory shockwave ripples out, throwing you [D]ward from the passageway.[paragraph break]";
	bestow "Unleashed Untold Power";
	move the disgusting refuse to the garbage bin;
	teleport the player to the room D from the perilous passageway.

Instead of smelling the disgusting refuse for the first time:
	say "You add your stomach contents to the fetid mass in the garbage can.[paragraph break]";
	bestow "What[apostrophe]s up, Chuck?".
	
Instead of smelling the disgusting refuse: 
	say "It smells the way it looks."
	
Instead of eating the disgusting refuse:
	say "There are more pleasant ways to die."
	
Instead of taking the disgusting refuse:
	try searching the disgusting refuse.
	
Instead of touching the disgusting refuse:
	try searching the disgusting refuse.
	
Instead of searching the garbage bin when the garbage bin is open and the disgusting refuse is in the garbage bin:
	try searching the disgusting refuse.
		
Instead of searching the disgusting refuse:	
	say "Overcoming your initial reflex (and all subsequent ones), you hold your breath and search through the putrid garbage. As you toss each useless bit away of your shoulder -- tooth brush, plastic wrappers, a banana peel, and apparently some medical waste -- you spot a fashionable hat.[paragraph break]Sure, it required a little brushing off, but it seems none the worse for having rested for so long at the bottom of a rancid pile of loathsome waste.[paragraph break]";
	bestow "To Cap It All Off";
	move the disgusting refuse to the void;
	now the player carries the Baseball Cap of Pogomastery.	

After wearing the Baseball Cap of Pogomastery for the first time:
	say "The hat adds to your gravitas.[paragraph break]";
	awardXP 1000.
	
After wearing the Baseball Cap of Pogomastery:
	say "You put the hat on your head and twist the brim [one of]frontwards[or]backwards[cycling]."
	
After taking off the Baseball Cap of Pogomastery for the first time:
	say "You take off the cap.[paragraph break]";
	bestow "Uneasy Lies The Head That Wears A Crown".
	
After taking off the Baseball Cap of Pogomastery:
	say "You take off the cap.".
	
Instead of smelling the Baseball Cap of Pogomastery:
	say "It smells better than it should, considering."
	

Section 55 - Dealing with Quadrooms

Instead of taking a quadroom (called the QTH):
	say "[The QTH] [are] not something you can take."
	
[the qualification ...when in the village is retained to keep the timing right]
Instead of entering a quadroom (called the QTH) when the player is in the village:
	if the localeDescriptor of the QTH is:
		-- structure:
			say "No time to explore every building in town. Must catch pogomen!";
		-- place:
			say "You[apostrophe]re already at the [location].";
		-- artifact:
			say "You can[apostrophe]t, but you are standing right next to it."
			
Before doing something with a quadroom (called the QTH) when the player is in the village:
	if the current action is examining:
		continue the action;
	if the player is not in the QTH:
		say "You would have to go over there." instead;
	otherwise:
		continue the action.
			
Section 56 - Stick to the Straight and Narrow

A direction can be blasphemous or orthodox. A direction is usually orthodox. Northeast, northwest, southeast, and southwest are blasphemous.

A person can be untainted or sinful. The player is untainted.

Before going a blasphemous direction when the location is in The Village:
	if the phone is hung:
		try going north instead;
	otherwise:
		say "No can do. The City Fathers were Ultra-Orthogonalists.[paragraph break]";
		if the player is untainted:[state is tracked so this only fires once]
			now the player is sinful;
			bestow "No-cutting-corners";
			stop the action.

Section 57 - Border Death Table

Table of Border Deaths
Place of Death	Number of Times Killed
Reservoir	0
Superhighway	0
Tarpit	0
Railway	0
Volcano	0
Quicksand	0
Shark-Infested Reef	0
Cliff	0	

Definition: a direction (called the way) is a bad idea if the room the way from the location is in the Borderlands.

Instead of going a bad idea direction (called the way):	
	now the diedAtBorder of the player is true;
	let R be the room the way from the location;
	if R is:
		-- Reservoir:
			if the number of times killed corresponding to the place of death of R in the Table of Border Deaths is:
				-- 0: 
					say "Wait a minute -- The town reservoir lies just to the north of this part of town. A few steps in that direction and you[apostrophe]ll be soaked.[paragraph break]";
					try looking;
				-- 1: 
					say "It[apostrophe]s actually illegal to bathe in the town reservoir. People drink this stuff. On the other hand... who would know?[paragraph break]";
					bestow "Hygiene";
					try looking;
				-- 2: 
					say the headline of Reservoir;
					say "Head down, eyes on the screen, you walk into the town reservoir. The tangled duckweed drags behind you, as you sink deeper into the muddy bottom, struggling forward, phone now raised above your head. You cough and sputter as water enters your lungs, but push onward, intent on capturing some water-type pogomen.[paragraph break]Through the muddy water, you can still distinguish the glow of the screen.[paragraph break]Finally, water laps up against the phone, cooling it and bring it well-deserved final rest. The screen flickers, you hear a muffled, sorrowful beep, and all goes dark.";
					phoneDeath;
				-- otherwise: 
					say "You[apostrophe]ve learned your lesson about trying to play Pogoman underwater. Nope, from now on you will stick to dry land.[paragraph break]";
					try looking;
		-- Superhighway:
			if the number of times killed corresponding to the place of death of R in the Table of Border Deaths is:
				-- 0:
				say "Are you sure you want to go that way?[paragraph break]Superhighway 17, which has been under construction for almost fifteen years is now open and just to the west of here.[paragraph break]Sure, there may be some juicy pogomen along the highway (or perhaps laying along the edges of the road), but there really isn[apostrophe]t any good place to walk along it.";
				try looking;
				-- 1:
					say "You are just a bit hesitant to keep going west.[paragraph break]From here, you can hear the roar of traffic on the ten-lane Superhighway 17 just to the west. It[apostrophe]s just over the hedge, but there[apostrophe]s no shoulder on the road and since most the drivers will also be playing Pogoman GO! rather than paying attention to driving, it would be suicidal to walk in that direction. Suicidal, I say.[paragraph break]";
					bestow "One Jersey Barrier From Certain Death";
					try looking;
				-- 2:
					say the headline of R;
					say "You hop neatly over the hedge and land on a newly paved section of road just in front of a sporty bright orange convertible. Your shins crack like matchsticks on its front bumper and you tumble forward onto the hood, head first into -- and through -- the windshield. Momentum carries you past the surprised driver, who reflexively jams the brakes to the floor. You flip over the baby seat and roll off the back of the car as it drifts sideways into an uncontrolled spin, slams into a oil tanker and is swallowed in a mushroom cloud of flames on an overpass. [paragraph break]Cars from both directions pile up and are consumed in the firestorm. Girders supporting the overpass slowly twist in the extreme heat and eventually give way, crashing down on the puppy rescue shelter, below. Fanned by the wind, the fire jumps to the bushes and is soon working its way up distant hills, burning through dry brush and headed for the forest.[paragraph break]But then tragedy strikes: your phone lands screen-down with a crunching sound. ";
					phoneDeath;
				-- otherwise: 
					say "Since the accident, you have an abiding fear of highways and stay put.";
					try looking;
		-- Tarpit:
			if the number of times killed corresponding to the place of death of R in the Table of Border Deaths is:
				-- 0:
					say "You can smell the sulfurous tarpits just to the south of town. Are you sure you want to go that way?";
					try looking;
				-- 1:
					say "You are reluctant to head south: you[apostrophe]d like to think that you[apostrophe]re smarter than the many prehistoric animals whose skeletons ended up on display in the Town Museum.[paragraph break]";
					bestow "Smarter (probably) Than A Prehistoric Sloth";
					try looking;
				-- 2:
					say the headline of R;
					say "As you move southward, your phone vibrates. What a find! An super rare ancient prehistoric multicolored Archeodraconozoid! You thought they were only a legend. It registers on your phone, but where is it? You scan back and forth in AR mode. Where is it? You must have it!![paragraph break]You wade further and further into the field, you sore feet relaxing on the warm, soft ground.[paragraph break]But still, you don[apostrophe]t see it. It should be right here. It[apostrophe]s like you[apostrophe]re standing on it.[paragraph break]While you go through your inventory and ignite some incense to attract your prize, you sink deeper and deeper into the tar field. Day dreaming about how great it would be to tell everyone that you captured a Archeodraconozoid, the warmth slowly envelops your legs, your chest, your neck.[paragraph break]The field belches natural gas as you struggle and the gas ignites explosively from the burning virtual incense. Soon, the field is on fire. You struggle towards the edge of the field, desperately wiping the sticky tar from your phone[apostrophe]s screen.[paragraph break]As you draw your final breath and sink into the field holding the phone above your head like the State of Liberty[apostrophe]s torch, your only regret is that you will never capture that Archeodraconozoid.";
					phoneDeath;
				-- otherwise:
					say "The burns still smart -- you reconsider walking into the tarpit.[paragraph break]";
					try looking;
		-- Railway:	
			if the number of times killed corresponding to the place of death of R in the Table of Border Deaths is:
				-- 0:
					say "The sound of busy railroad just to the east halts you in your, um, tracks.";
					try looking;
				-- 1:
					say "You start to head east, but then recall the railway tracks nearby -- wasn[apostrophe]t it just last weekend that a third grader was run down by a freight train? Someone should do something about it, like maybe post some signs. You[apostrophe]d do it yourself if you weren[apostrophe]t so busy -- you know, with the game and all.[paragraph break]Your eyes are drawn back down to the beckoning phone screen and your mind wanders back to the game.[paragraph break]";
					bestow "Refined Sense of Priorities";
					try looking;
				-- 2:
					say the headline of R;
					say "As you step over the train tracks, in your peripheral vision to the left, you catch a glimpse of a moving red light. Glancing up from your phone for just a moment, you see it[apostrophe]s just a pick-up truck backing up down the road. No worries.[paragraph break]From the other direction, there is a explosive rush of wind and you are suddenly yanked up and backwards by your collar. Your phone spills out of your hand and, improbably, lands flat on the third rail.[paragraph break][quotation mark]No! You shout,[quotation mark] to the muscular commuter who you dangles you above the platform.  The bullet train passes only inches from your face. You struggle impotently in his grasp, your cell phone-atrophied arms no match for his grand physique. [quotation mark]My phone! I must save my phone.[quotation mark][paragraph break]As soon as he sets you down, you jump off the platform. But it is too late. Sparks jump from the phone to the ground, the fence, the rails. You ignore the loss of feeling in your arms as you clumsily knock the phone off the rail. It drips to the ground a glowing, molten mass.";
					phoneDeath;
				-- otherwise:
					say "You have an aversion to railroad tracks, so you remain where you are.[paragraph break]";
					try looking;
	increase number of times killed corresponding to the place of death of R in the Table of Border Deaths by one.
	
Section 58 - Town Atmosphere

OSWALDOBUSINESS is a list of text that varies. OSWALDOBUSINESS is {
"Oswaldo, the town[apostrophe]s conspiracy theorist, walks past you, and tips his tin-foil hat in greeting. He adjusts the clapboard signs that hang down both in front and behind him, and is around the corner before you look up again from your phone",
"From somewhere down the block, you hear Oswaldo berating some of your fellow Pogoman GO! players about how the game is corrupting youth and hastening the demise of the nuclear family. As is typical for Oswaldo, his rant spins out of control, touching upon topics including the gold standard, water fluoridation, nuclear winter, the HAARP telepathy modulator, and tunnels leading to the center of the Earth",
"You catch sight of Oswaldo running angrily after some teenagers, who had been making fun of his clapboard signs, painted with the words [quotation mark]Pogoman NO![quotation mark] above an angry red fist",
"From somewhere nearby, you hear Oswaldo[apostrophe]s megaphone-amplified voice, cracking and shrill, denouncing the evils of truth and love",
"There[apostrophe]s a bit of an incident down the street. It looks like Oswaldo has worked himself up into a lather. A pair of policemen approach him from both sides and he yells, [quotation mark]The cat eats souls! The struggle is real! Must must be defeated![quotation mark] -- or something to that effect"
}.

NYANCLUEBAT is a list of text that varies. NYANCLUEBAT is {
"The Nyantech tower casts a long shadow over the entire town. They -- other players of pogoman, that is -- say that you can find the rarest and most powerful of pogomen within its hallowed halls", 
"A red search light reflects off windows of buildings and cars along the street and then is gone", 
"You take your bearings with a glance at the huge ebony office building at the center of town, the base of operations for the company that developed Pogoman GO! Once you are have enough experience under your belt, you may be able to work up the courage to actually set foot in there among the gaming elite",
"The Nyantech tower watches protectively over the town. You feel warm and secure in its shadow",
"A flock of gamers runs noisily down the street towards the city center, no doubt pursuing some exotic pogoman in the direction of the Nyantech tower. You hear one of them yell, [quotation mark]I hear they[apostrophe]re still accepting beta-testers![quotation mark] They disappear from sight",
"In the distance, the Nyantech Cat mechanically purrs the time as it continues its never-ending journey around the Nyantech building",
"A group of hyperexcitable tourists walks by, gaping in awe at the soaring Nyantech tower. One of them remarks that were it not for Nyantech, this town would be little more than a collection of historic markers -- and it[apostrophe]s true",
"From across the street, you over hear a despondent gamer confiding to a friend, [quotation mark]I thought I was beta-tester material. But… I failed. I couldn[apostrophe]t cut it.[quotation mark] They walk away in silent shame",
"The Nyantech Cat, its glowing red eyes a beacon of hope to mobile gamers everywhere, slowly rotates around the top of the Nyantech corporate headquarters building downtown"
}.

To say permutedTower:
	say "The [one of]shiny, black[or]ebony[or]majestic[or]jet black[or]monolith-like[or]imposing[purely at random] Nyantech [one of]tower[or]building[or]office building[or]corporate headquarters[or]operations center[purely at random] [one of]looms[or]towers[or]stands out[or]rises[or]soars[purely at random] [one of]in the distance[or]on the horizon[or]over the roof tops[or]majestically[or]regally[or]in a class of its own[purely at random], [one of]dwarfing[or]dominating[or]putting to shame[purely at random] surrounding [one of]buildings[or]structures[or]edifices[purely at random]".


Chapter Inside Nyantech

Section 1 - Region HQ

HQ is a region. Lobby, RevolvingDoor, LAN Closet, Cafeteria, Beverages, Snacks, Legal Department, Cousteau Room, Welcome to Beta Testing, Rick Astley Shrine, Support Boom, Interns, Engineers, Managers, Packaging, Security Checkpoint, Infirmary, and Processing are rooms in HQ.

Section 2 - Lighting

The diffuse overhead lighting is a backdrop. The diffuse overhead lighting is in HQ and in Ball Pit. The diffuse  lighting is in Ball Pit. The description of diffuse overhead lighting is "All parts of the Nyantech corporate offices are lit by soft, natural lighting that diffuses down from the ceiling." Understand "light" or "lights" or "lighting" or "ceiling" as the diffuse overhead lighting.

Section 3 - Cafeteria

The Cafeteria is north of DeckS. The description of the cafeteria is "Nyantech employees and visiting players alike enjoy heaping platefuls of the gourmet fare served gratis in the company cafeteria. A waiter serves up a plate of [one of]roasted boar[or]braised chicken and kale[or]homemade butter croissants with maple glaze[or]herb-encrusted roast leg of lamb with garlic roasted baby potatoes[or]orecchiette bolognese with chestnuts[or]beautifully prepared magret de canard[or]pan-seared foie gras[or]fingerling rice, sublimated sungold crumble & late-summer rye[or]homespun water pancake[or]fermented anchovy with lime[or]sunflower paté[or]quickened ham, fig, and rubbed watercress[or]salt reduction with eggplant[or]pan-seared artichoke with ramp[or]fingerling peach surprise with surprise folk corn[or]pork bellies with rustic butter[in random order], which diners happily devour in an instant."  The possible exits of the Cafeteria are "The [elevatorDoorDesc], the observation deck to the south, and signs point east to the [quotation mark]Pit[quotation mark], northwest to [quotation mark]Beverages[quotation mark], and northeast to [quotation mark]Snacks[quotation mark]." Understand "restaurant" as the cafeteria.

Instead of smelling when the player is in the cafeteria:
	say "Mixing gourmet aromas complement each other."
	
Instead of buying something when the player is in Cafeteria:
	say "[freeStuff]."

The waiter is a person in the cafeteria. The description of the waiter is "A rail thin man, probably in his thirties, with a pencil mustache and dressed in a well tailored tuxedo. He is in constant motion, ferrying one after another serving to the ravenous crowd in the cafeteria."

Instead of cutting or attacking the waiter:
	say "Hurting the waiter would not be popular with the cafeteria crowd, so you leave him alone."
	
Instead of pulling or pushing or turning or spinning the waiter:
	say "There are so many people vying for the attention of the waiter that he does not notice."
	
Instead of taking the waiter:
	say "He doesn[apostrophe]t get off his shift for another few hours, so he can[apostrophe]t go anywhere just now. [quotation mark]Trop pressé, monsieur! Tout à fait trop pressé![quotation mark][paragraph break]".
	
Instead of showing something to the waiter:
	say "He just rolls his eyes and continues his frenetic duties."
	
Instead of buying the waiter:
	say "He motions you away, [quotation mark]Please, pas de [apostrophe]tip[apostrophe]. Je suis professionel![quotation mark][paragraph break]"
	
Instead of giving something to the waiter:
	try buying the waiter.
	
Instead of tasting or licking or eating the waiter:
	say "The waiter pauses a moment, [quotation mark]Peut-être monsieur would préfère a pop-tart artisanal?[quotation mark] He points to a room northeast from the cafeteria and gets back to work."
	
Instead of capturing the waiter:
	say "The waiter puffs with indignity and flicks a bit of [one of]tartine[or]crêpe[or]mousse[or]potage[or]charcuterie[in random order] at you."
	
Instead of kissing the waiter:
	say "The waiter returns the greeting and keeps working."
	
Instead of talking to the waiter:
	say "The waiter seems annoyed by your petty banter."
	
Instead of searching or touching or rubbing the waiter:
	say "The waiter might not like that.[paragraph break]Or perhaps he would, but not while he is working.[paragraph break]Time and place, you know." 
	
The employees are plural-named persons in the cafeteria. The description of the employees is "The employees -- none of them a day over twenty-five -- slowly shovel food into their mouths and stare at each other wordlessly. Each seems absorbed in the words and text flashing by on their data monocles. Employees have badges similar to yours, except black in color with a white stripe." Understand "employee" or "worker" or "manager" or "intern" or "workers" or "managers" or "interns" or "engineer" or "engineers"  or "nyantecher" or "nyantechers" or "crowd" as the employees.

Instead of cutting or attacking the employees:
	say "[noCutEmployees]."
	
Instead of cutting or attacking the nose:
	try attacking the employees.

The data monocle is a privately-named backdrop in cafeteria and in lobby and in elevator. The description of the data monocle is "A matte black device fitted over one eye and held in place by a metal band that wraps partway around the head. Data and text are projected on the monocle, which serves as a heads-up display for the wearer." 

Understand "monocle" or "monocles" as the data monocle when the player is in the cafeteria or the player is in the lobby.

Understand "monocle" or "monocles" as the data monocle when the player is in the elevator and a worker is in the elevator.

Instead of taking the data monocle for the first time:
	say "The data monocle seems attached to the employee[apostrophe]s face. Maybe superglue? In any case, the employee ignores you.[paragraph break]Also, a blue spark lashes out from the monocle and numbs your hand. You take that as a warning.[paragraph break]";
	bestow "Rude".
	
Instead of taking the data monocle:
	say "You might as well try to take the employees nose -- the monocle seems to be physically implanted. Also, you receive a painful electrical shock every time your hand comes within a few inches of a monocle. Seems like they take this proprietary technology stuff seriously."
	
Instead of touching or rubbing or tasting or pulling or pushing or turning or spinning or licking the monocle:
	say "Zap! You receive an electrical shock."
	
The nose is a privately-named backdrop in the cafeteria and in the lobby and in the elevator. The description of nose is "The nose is a facial protuberance which filter and humidifies air before it enters the upper respiratory system. But that's not important right now."

Understand "nose" or "face" as the nose when the player is in the cafeteria or the player is in the lobby.

Understand "nose" or "face" as the nose when the player is in the elevator and a worker is in the elevator.

Instead of taking the nose for the first time:
	say "Predictably, that doesn[apostrophe]t work.[paragraph break]";
	bestow "The Nose Bone Is Connected To The Face Bone".
	
Instead of taking the nose:
	say "Yech."
	
Instead of listening when the player is in the cafeteria:
	say lobby stage business.
	
Food is a scenery in the cafeteria. The description of food is "The selection of gourmet food is constantly changing. By the time you reach for one thing, something else has come along to take its place."  

Understand "plate" or "plates" or "roasted" or "boar" or "roast" or "braised" or "chicken" or "kale" or "homemade" or "butter" or "croissant" or "croissants" or "maple" or "glaze" or "herb" or "herbs" or "herb-encrusted" or "leg" or "leg of lamb" or "lamb" or "garlic" or "roasted" or "baby" or "potato" or "potatoes" or "pan-seared" or "foie" or "gras" or "orecchiette" or "bolongese" or "chestnut" or "chestnuts" or "magret" or "canard" or "magret de canard" or "fingerling" or "rice" or "sublimated" or  "sungold" or "crumble" or "late-summer" or "rye" or "homespun" or "homemade" or "water" or "pancake" or "fermented" or "anchovy" or "anchovies" or "lime" or "paté" or "pate" or "quickened" or "ham" or "fig" or "hams" or "figs" or "limes" or "pancakes" or "legs" or "croissants" or "chickens" or "boars" or "rubbed" or "watercress" or "salt" or "reduction" or "eggplant" or "egg plant" or "egg plants" or "artichoke" or "artichokes" or "ramp" or "ramps" or "peach" or "surprise" or "folk" or "corn" or "pork" or "belly" or "bellies" or "rustic" as the food.

Instead of doing something other than examining or smelling with the food:
	say "Game now, eat later. Must explore the building! Pogoman glory awaits!"

The visitors are plural-named persons in the cafeteria. The description of the visitors is "Players from every faction are here, alternatively eating and playing pogoman on their phones. They all have badges similar to yours; most of them are white, but some are green or other colors with a white bar. You also notice that they tend to be high level. In fact, none of them appear to be anything less than level [the pogolevel of the player plus 20 in words] pogomasters. You feel a little out of your league." Understand "players" or "player" or "visitor" as visitors.

Instead of cutting or attacking the visitors:
	say "[noCutPlayers]."
	
The badges are a privately-named backdrop in the cafeteria and in the lobby and in the elevator. The description of the badges is "Visitor badges you have seen are just like yours, most of them white, some of them green or blue with a white bar. Employee badges are black with a white bar. Each badge bears a photograph of its wearer."

Instead of unclipping the badges:
	try taking the badges.

Understand "green" or "blue" or "black" or "white" or "colors" or "badge" or "badges" or "bar" or "photograph" or "photo" or "picture" or "image" as the badges when the player is in the cafeteria.

Understand "green" or "blue" or "black" or "white" or "colors" or "badge" or "badges" or "bar" or "photograph" or "photo" or "picture" or "image" as the badges when the player is in the lobby.

Understand "white" or "badge" or "badges" or "bar" or "photograph" or "photo" or "picture" or "image" as the badges when the player is in the elevator and a gamer is in the elevator.

Understand  "black" or "badge" or "badges" or "photograph" or "photo" or "picture" or "image"  as the badges when the player is in the elevator and a worker is in the elevator.

Instead of taking or touching or rubbing or tasting or pulling or pushing or turning or spinning or licking the badges:
	say "Whenever you get too near someone else[apostrophe]s badge, first the little hairs on your arm stand on end, then your fingers start to tingle, and finally, your arm feels like it is on fire.[paragraph break]You have the impression that the badges are specific to the person pictured on the badge."

Talking to is an action applying to one thing. Understand "talk to/at/with [something]" as talking to.

Check talking to:
	if the noun is not a person:
		say "Talking to inanimate objects is odd, but not socially unacceptable for a Pogoman GO! player." instead.
			
Carry out talking to:
	say "You chat with [the noun]."

Instead of asking someone (called the auditor) about some topic:
	try talking to the auditor instead.
	
Instead of telling someone (called the auditor) about some topic:
	try talking to the auditor instead.

Instead of showing something (called the item) to someone (called the auditor):
	say "[The auditor] [ignore] you";
	if the auditor is:
		-- visitors:
			say ". They are either stuffing food into their mouths or busy running after pogomen. Anything you have to show them pales in comparison.";
		-- employees:
			say ". They are either absorbed in whatever datastream is playing in their monocles or seem frozen, staring outward over the town as if they own it.";
		-- lobbyPlayers:
			say ". They are rushing about  with their phones too frantically to focus on anything.";
		-- lobbyEmployees:
			say ". They look right through both [the item] and you, as if you are merely a shadowy overlay projected on their reality.";
		-- otherwise:
			say ".".		
	
	
Instead of talking to something (called the auditor):
	if the auditor is:		
		-- employees:
			say employeeRant;
		-- visitors:
			say visitorRebuff;
		-- yourself:
			say "[one of]You mumble to yourself[or]That[apostrophe]s mildly worrisome[or]Every pogoman player starts doing it at some point; no reason to feel self-conscious[or]Receiving no answer, you desist[or]You ignore yourself[stopping]." instead;
		-- Elon Musk:
			say "Elon [one of]dismisses your comment[or]seems to ignore what you just said[or]seems oblivious to anything you say[or]is in his own little world, and your words fall on deaf ears[or]looks away distractedly for a moment[or]waves aside your remark[in random order].";
		-- lobbyEmployees:
			say "The employees are hustling and bustling around; no time for chit-chat with a mere gamer.";
		-- lobbyPlayers:
			say "Your fellow Pogoman enthusiasts are beside themselves with excitement to be at the center of the Pogoman universe; they are far too absorbed in the game and in searching out the rumored secrets of Nyantech[apostrophe]s headquarters to spare a moment for discourse with a human.";
		-- unicorn:
			say "The unicorn perks up a bit, glad to have some relief from the monotony of the day. Your conversation with him takes a sudden turn and the two of you talk about [chitChat].";
		-- Salmon Of Turpitude:
			say "The salmon continues to give you a glassy-eyed stare[one of]. Apparently, the salmon is not one to engage in small talk[or][stopping].";
		-- otherwise:
			say "You receive no answer.";

To say employeeRant:
	say "The employee [one of]seems taken aback by your approach[or]startles with a lurch[or]looks around wildly and then stares awkwardly at you[or]struggles to focus on something other than the monocle for once and looks you squarely in the neck[in random order] and [one of]replies[or]says[or]answers[in random order], [quotation mark][one of][employeeRant1][employeeRant2][in random order].[quotation mark][paragraph break]".
	
To say employeeRant1:
	say "Hello, $identity[bracket]player[bracket][team color of the player][close bracket][bracket][pogoLevel of the player][close bracket][close bracket], looks like the weather is going to be &extractWeather([quotation mark]town[quotation mark], +3)";
	
To say employeeRant2:
	say "Ah, [bracket]one of[close bracket]good[bracket]or[close bracket]great[bracket]or[close bracket]nice[bracket]or[close bracket]wonderful[bracket]or[close bracket]how pleasant[bracket]at random[close bracket] to see a [bracket]one of[close bracket]player[bracket]or[close bracket]visitor[bracket]or[close bracket]gamer[bracket]at random[close bracket] and to have normal social interactions";
	
To say visitorRebuff:
	say "[one of]The player glances briefly at your badge and remarks, [quotation mark]Not now, n00b. Can[apostrophe]t you see I[apostrophe]m pogomaning? Duh.[quotation mark][or]The players continue tapping away at their phones, ignoring you.[stopping][paragraph break]".
	
Section 4 - Snacks

Snacks is northeast of the Cafeteria. The description of Snacks is "A poster above a table advertises every kind of pop-tart known to man, all of them glazed and sprinkled: strawberry, blueberry, raspberry, apple, chocolate, cranberry, and many more. Just above the table is a metal chute, which projects just a bit from the wall." The possible exits of Snacks are "The company cafeteria is to the southwest."

The poster is scenery in Snacks. The description of the poster is "A glossy advertisement dominated by a colorful assortment of pop-tarts above the slogan [quotation mark]SmartPastries for SmartPeople![quotation mark]."

Instead of taking the poster:
	say "You have no place to hang it and don[apostrophe]t really like the color scheme anyhow."

The table is a scenery supporter in Snacks. The description of the table is "A rustic table positioned directly below the metal slot in the wall." Understand "rustic" as the table.

The chute is fixed in place scenery in Snacks. The description of the chute is "A metal slot that comes out of the wall and is angled slightly downward. The opening is about the size of, oh, let[apostrophe]s say a pop-tart." Understand "slot" as the chute.

Instead of searching the chute for the first time:
	say "Gritty little crumbs fall into your eyes. You blink until your vision clears.[paragraph break]";
	bestow "Should Have Seen That Coming".
	
Instead of entering the chute:
	say "It is too small for you to enter."
	
Instead of inserting something (called the item) into the chute:
	if the item is the pop-tart:
		say "You try to shove the pop-tart nto the chute, but it comes immediately out again since the chute is angled down towards you.";
	else if the item is a pogothing:
		say "That makes no sense.";
	else:
		say "[The item] does not fit well into the pop-tart-shaped chute."
	
Instead of searching the chute:
	say "You can only see a short distance due to lighting; it looks like the chute just rans upwards at an angle."

A pop-tart is a pastry. It is on the table. The description of the pop-tart is "The crowning achievement of millennia of culinary evolution, this double-glazed, sugar-sprinkled, [flavor of the pop-tart]-flavored pop-tart is a flat, rectangular piece of pastry perfection." Understand "pastry" or "cake" or "dessert" or "poptart" or "tart" as the pop-tart.

Instead of tasting the pop-tart:
	say "Your favorite: [flavor of the pop-tart]!"

Understand "strawberry" as the pop-tart when the flavor of the pop-tart is strawberry.
Understand "blueberry" as the pop-tart when the flavor of the pop-tart is blueberry.
Understand "raspberry" as the pop-tart when the flavor of the pop-tart is raspberry.
Understand "apple" as the pop-tart when the flavor of the pop-tart is apple.
Understand "cranberry" as the pop-tart when the flavor of the pop-tart is cranberry.
Understand "chocolate" as the pop-tart when the flavor of the pop-tart is chocolate.
Understand "licorice" as the pop-tart when the flavor of the pop-tart is licorice.
Understand "pumpkin" as the pop-tart when the flavor of the pop-tart is pumpkin.
Understand "pine-nut" as the pop-tart when the flavor of the pop-tart is pine-nut.
Understand "pesto" as the pop-tart when the flavor of the pop-tart is pesto.
Understand "liver" as the pop-tart when the flavor of the pop-tart is liver.
Understand "watermelon" as the pop-tart when the flavor of the pop-tart is watermelon.
Understand "apricot" as the pop-tart when the flavor of the pop-tart is apricot.
Understand "teriyaki" as the pop-tart when the flavor of the pop-tart is teriyaki.
Understand "chutney" as the pop-tart when the flavor of the pop-tart is chutney.
Understand "fudge" as the pop-tart when the flavor of the pop-tart is fudge.
Understand "tiramisu" as the pop-tart when the flavor of the pop-tart is tiramisu.
Understand "cinnamon" as the pop-tart when the flavor of the pop-tart is cinnamon.
		
Instead of pushing the pop-tart, say "Futile. You push, it pops back immediately."

To newPopTart:
	now the flavor of the pop-tart is a random flavor;
	move the pop-tart to the table;
	if the player is in Snacks:
		say "A piping hot, fresh [flavor of the pop-tart]-flavored pop-tart drops from the chute onto the table."

After eating a pop-tart for the first time:
	say "You feel young and full of energy![paragraph break]";
	bestow "Energized";
	newPopTart.
	
After eating a pop-tart for the second time: 
	say "You[apostrophe]re pretty full and riding a sugar buzz.[paragraph break]";
	bestow "Stoked";
	newPopTart.
	
After eating a pop-tart for the third time:
	say "After snarfing down the pop-tart, you[apostrophe]re kind of vibrating. Also, your left eye is getting blurry.[paragraph break]";
	bestow "What doesn[apostrophe]t kill you makes you stronger";
	newPopTart.
	
After eating a pop-tart for the fourth time:
	teleport the player to the infirmary;
	say "You wake up with a pounding headache as a nurse withdraws a hypodermic syringe from your flank.[paragraph break][quotation mark]That should do it,[quotation mark] she says as she clips off the needle and throws the syringe and a few used bottles of insulin into a bag marked biomedical waste.[paragraph break]You are still rubbing the sore spot on your side as she signs off on the paperwork and stuffs you into an elevator.[paragraph break]";
	bestow "Pancreatic Endocrine Capacity Exceeded";
	hospital discharge;
	newPopTart.
	
After eating a pop-tart:
	say "After vivid dreams involving [one of]intelligent sessile polyps capable of taking over people[apostrophe]s minds[or]worship of a tiki god[or]the political aspirations of the three little pigs[or]giant cooing pigeons[or]swimming against the pull of a voracious whirlpool[or]a Pink Floyd tribute band consisting of the original cast of The Wizard of Oz[or]going bowling with Steve Jobs[or]the endless void[stopping], you awaken in the cafeteria.[paragraph break]No one really pays you any attention, but you notice that several hours have passed.";
	teleport the player to the cafeteria;
	newPopTart.
	
Instead of buying something when the player is in Snacks:
	say "[freeStuff]."
	
Section 5 - Beverages

Beverages is northwest of the Cafeteria. The description of beverages is "To the left there is a soda fountain with Coke, Sprite, and root beer on tap. To the right, there is a dispenser for lemonade and iced tea[if the securityColor of the badge is white]. But in the center, on a marble pedestal surrounded by blinking bulbs, and framed in a spotlight from the ceiling, is a golden chalice of fluorescent lime-green Kool-Aid[end if]."  The possible exits of Beverages are "The cafeteria is just to the southeast." 

The spotlight is scenery. The spotlight is in Beverages. The description of the spotlight is "A high ceiling[if the securityColor of the badge is white] with a single, extremely bright spotlight[end if]."  Understand "light" or "spot" or "spot light" as the spotlight when the securityColor of the badge is white.

Instead of emptying or filling a pop (called the drink):
	try drinking the drink.
	
Instead of pulling a pop (called the drink):
	say "You pull a long, tall [drink] and slug it down. Mmm, refreshing."
	
Instead of pushing a pop:
	say "No reason to push it; it sells itself."
	
Instead of tasting a pop (called the drink):
	say "It tastes just like you would expect [drink] to taste, except better because you are at Nyantech."

Instead of drinking the soda fountain:
	say "Do you mean to drink something specific?"
	
Instead of buying something when the player is in Beverages:
	say "[freeStuff]."
	
Instead of licking the soda fountain:
	say "[residue]."
	
Instead of licking the dispenser:
	say "[residue]."
	
To say residue:
	say "Mmm. The gummy residue of dried sugary drinks".
	
to say freeStuff:
	say "Everything here is free".

Does the player mean examining or drinking the Kool-Aid: it is likely.

The soda fountain is scenery in Beverages. The description of soda fountain is "The soda fountain can dispense Coke, Sprite, or root beer."

The dispenser is scenery in Beverages. The description of dispenser is "The dispenser is filled with icy lemonade on one side, and iced tea on the other."

The root beer is pop in Beverages. The description of root beer is "A cold, frothy brown soft drink with sassafras overtones." 

The Sprite is pop in Beverages. The description of sprite is "A refreshing, light, citrus-flavored soft drink."

The Coke is pop in Beverages. The description of coke is "A dark, sweet beverage with a touch of acidity."

The lemonade is pop in Beverages. The description of lemonade is "A balance between sweet and sour; perfect on a hot day."

The iced tea is pop in Beverages. The description of iced tea is "Sweet tea, with a hint of mint."

The Kool-Aid is pop in Beverages. The description of Kool-Aid is "The shimmering chalice of Kool-Aid is engraved [quotation mark]Nyantech Corporate Kool-Aid[quotation mark]". Understand "golden" or "chalice" or "grail" or "graal" as Kool-Aid. Understand "koolaid" or "kool aid" as kool-aid. Understand "marble" or "pedestal" or "blinky" or "blinking" or "bulb" as Kool-Aid when the securityColor of the badge is white.

Before taking or drinking a pop (called the liquid):
	if the liquid is Kool-Aid and the Kool-Aid is in Beverages:
		say "You taste the Kool-Aid skeptically at first, but after the first sip, you can[apostrophe]t get enough of it and you gulp it down.[paragraph break]Suddenly, everything makes sense. Colors are sharper and life more meaningful. At once, you understand the central role that Nyantech plays in the greater universe, and see how everything -- the internet, cell phones, geodata, and gaming -- come together harmoniously to fulfill a vision greater than any of Man[apostrophe]s historical aspirations. You are humbled before a vision of global unity of purpose.[paragraph break]Also, your badge turns green except for a bar of white.[paragraph break]";
		move the Kool-Aid to the void;
		now the securityColor of the badge is green;
		bestow "Privilege Escalated";
		the rule succeeds;
	otherwise:
		say "You [one of]enjoy a frosty[or]slug down an icy[or]drink a refreshing[at random] glass of [liquid].";
		the rule succeeds.
	
After going southeast from beverages when the securityColor of the badge is green for the first time:
	say "As you emerge from the beverage room, Kool-Aid dripping from your lips, one of the employees looks over towards you conspiratorially and gives you a little salute before returning to a trance-like state."

Section 6 - Mechanical Access Shaft

The Ladder Area is a region. Crawl Space, Gearing Assembly, Top of the Ladder, Somewhere Along The Ladder, and Bottom Rung are rooms in the Ladder Area.

Instead of dropping something (called the item) when the player is in Ladder Area:
	if the item is a pogothing:
		continue the action;
	else if the player is in Gearing Assembly:
		continue the action;
	else:
		if the player wears the item:
			say "You would have to take it off first.";
		else:
			say "The [item] clatters downwards, out of sight.";
			now the item is in The LAN Closet.
	
		

The ladderProxy is a privately-named backdrop in the Ladder Area. The description of the ladderProxy is "A long ladder in a narrow shaft."  The printed name of the ladderProxy is "ladder". Understand "ladder" as the ladderProxy.

The shaft is a backdrop in the Ladder Area. The description of shaft is "A long, metal shaft running vertically through the building. It just wide enough for one person to negotiate."

Instead of touching shaft for the first time:
	say "It feels like every other shaft you have ever touched. Mostly.[paragraph break]";
	bestow "Its Not Innuendo If You Get A Medal For It".

Instead of touching shaft:
	say "The shaft is smooth and its metallic surface has no distinguishing features."
	
After examining the shaft for the first time:
	bestow "Talkin' About Shaft! Right On".
	
Instead of climbing the shaft:
	try climbing the ladderProxy.
	
Instead of climbing the ladderProxy:
	if the player is in the Gearing Assembly:
		try going down;
	otherwise:
		try going up.
		
Section 7 - Gearing Assembly

The Gearing Assembly is outside from Gantry Chamber. The Gantry Chamber is south from the Gearing Assembly.

The description of the Gearing Assembly is "The room itself appears to ride a circular track around the building. There are no controls or indicators here, but there is plenty of heavy equipment including motors and gears. A structural boom extends from the center of the room to support the Nyantech Cat. Near the outer edge of the room, there is a circular hole in the floor and through it, you can see the top of a narrow ladder, which leads downward into darkness."  The possible exits of the Gearing Assembly are "Obvious exits are the boom to the south or downwards using the ladder."

The access hole is an open not openable door. The access hole is below the Gearing Assembly. The access hole is above The Top of The Ladder. The description of the hole is "A smooth circular access hole cut in the floor of the Gearing Assembly."

Instead of entering the hole:
	if the player is in the Gearing Assembly:
		try going down;
	otherwise:
		try going up.
		
Instead of searching the access hole:
	if the player is in Gearing Assembly: 
		say "You can see the top of a ladder just below the hole, but beyond that it is dark.";
	otherwise:
		say "You can see up into the Gearing Assembly area."

The electric motor is scenery in the Gearing Assembly. The description of the electric motor is "A 8000 Horsepower three-phase electric motor. Through a complicated transmission system, it drives a gear assembly."  Understand "motors" or "equipment" or "heavy" or "machinery" as the electric motor.

Instead of switching on the electric motor:
	say "The motor is not controlled from up here."
	
Instead of switching off the electric motor:
	try switching on the electric motor.

Instead of taking the electric motor for the first time:
	say "It is the size of a city bus.[paragraph break]";
	bestow "Not today, Clark Kent".
	
Instead of taking the gears for the first time:
	say "Aside from not wanting to lose a finger in their greasy maw, the gears are way too huge to take.[paragraph break]";
	bestow "Digital Preservation".

Instead of taking a scenery thing (called the item) when the player is in the Gearing Assembly:
	if the item is a backdrop:
		continue the action;
	otherwise:
		if the item is grease:
			try touching the grease;
		otherwise:
			say "No. Aside from being massive [the item] [are] covered in thick, sticky, black grease."

Instead of doing something with the ladderProxy when the player is in the Gearing Assembly:
	if the current action is examining:
		continue the action;
	if the current action is climbing:
		try going down;
	otherwise:
		say "The ladder is just below this room. You would have to go down."
		
The grease is a scenery in the Gearing Assembly. The description of the grease is "Yucky, thick black grease."

Instead of doing something other than examining with the grease: 
	say "You don[apostrophe]t want anything to do with the grease[one of]. Once it gets on you, you[apostrophe]d track it all over an make a big mess[or][stopping]."
	
Section 8 - Boom Arm

The boomArm is a privately-named backdrop in the Gearing Assembly and in the Gantry Chamber. The description of the boomArm is "A long metal boom that extends from the building, and suspends the cat almost 50 stories above street level." The printed name of the boomArm is "support boom". Understand "boom" or "support" or "crawlway" or "crawl" or "way" as the boomArm

The gears are plural-named scenery in the Gearing Assembly. The description of the gears is "Huge, greasy gears that move the room and its attached boom along a toothed track that circles the upper portion of the building, just below the observation deck." Understand "gear" or "gearing" or "cog" or "cogs" or "cam" or "cams" or "assembly" or "transmission" as the gears.

The track is scenery in the Gearing Assembly. The description of the track is "A bumpy metal track that rings the building. The upper part of the gearing assembly follows the track as it rotates the cat support boom around the building. The track is covered in grease and generally free of rust." Understand "tracks" as the track.

After going south from the Gearing Assembly for the first time:
	say "Earlier today, you managed to make the trip through wind-swept mechanical boom by promising yourself that you would never do it again. Well, guess that assumption was wrong.";
	bestow "Promises are made to be broken";
	try looking.
	
After going south from the Gearing Assembly:
	say "[One of]Once more into the cat, go you[or]Back to the cat[stopping].";
	try looking.

After going down from the Gearing Assembly:
	say "You [one of]climb slowly and carefully down the ladder, which descends through a shaft just wide enough to accommodate one person[or]descend the ladder[stopping].";
	try looking.

The Top Of The Ladder is above Somewhere Along the Ladder. The description of Top Of The Ladder is "You can see light coming from above, the Gearing Assembly area."

After going down from the Top Of The Ladder:
	say "You descend further into the dark shaft.";
	try looking.

Section 9 - Somewhere Along The Ladder

Somewhere Along The Ladder is above the Bottom Rung. The description of Somewhere Along The Ladder is "It [if the player carries a switched on lightsource]would be[otherwise]is[end if] pitch dark in here without some sort of light source[if the player carries a switched on lightsource], although there really isn[apostrophe]t all that much to see here, many floors below the top of the shaft[end if]."

After going down from Somewhere Along The Ladder for the first time:
	say the headline of the location;
	say "There[apostrophe]s good news and bad news.[paragraph break]The good news: you have reached the bottom of the ladder.[paragraph break]The bad news: you don’t feel anything beneath you."

Section 10 - Bottom Rung

The Bottom Rung is above the Crawl Space. The description of Bottom Rung is "You are standing on the bottom rung of a narrow ladder that reaches up hundreds of feet, almost to the top of the Nyantech Tower. Below you, a bit of light shines up between the acoustic tiles in a hanging ceiling. It looks like an about a ten foot drop from the ladder to the ceiling beneath you."

Section 11 - Crawl Space

The Crawl Space is above the LAN Closet.  The description of the Crawl Space is "[crawlspaceDescription]."

To say crawlspaceDescription:
	if the player carries a switched on lightsource:
		say "You are poking up into a dead space between ";
		if the Gearing Assembly is visited:
			say "the remnants of ";
		say "some hanging acoustic tiles above the LAN Closet and the lower end of a ladder about ten feet above your head. As you play the light up the ladder, it looks like it runs up a long narrow shaft as far as you can see";
	otherwise:
		say "A dark space above the ";
		if the Gearing Assembly is visited:
			say "ruined ceiling of the ";
		say "LAN Closet".
		
Instead of going up when the player is in the Crawl Space:
	say "The bottom of the ladder is a good ten feet or more above you; you can[apostrophe]t reach it."

The acoustic tiles are scenery in the Crawl Space. The description of the acoustic tiles is "Sound-absorbing tiles are all that separate this crawl space from the LAN Closet below." Understand "dust" or "tile" as the acoustic tiles when the player is in the Crawl Space. The acoustic tiles have a truth state called isCrashed. The isCrashed of the acoustic tiles is false.

Instead of doing something other than examining with the acoustic tiles, say "Eww. They are covered it dust. You have no desire to muck about in such filth."  

Instead of doing something other than examining with the ladderProxy when the player is in the Crawl Space:
	say "You can[apostrophe]t reach it."
	
Instead of examining the ladderProxy when the player is in the Crawl Space:
	say "The bottom of a long, narrow ladder."
	
Instead of jumping when the player is in the Crawl Space:
	say "You jump off the equipment rack and land on the floor of the LAN closet.";
	teleport the player to the LAN Closet.
	
To finishFall:
	say " plunge through [if the isCrashed of the acoustic tiles is true]the already trashed ceiling of the LAN closet[otherwise]a false ceiling, which crashes down around you.[paragraph break]You find yourself in the cat control room[end if].[paragraph break]";
	if the isCrashed of the acoustic tiles is false:
		bestow "A Gift From Above";
	now the isCrashed of the acoustic tiles is true;
	if the penlight is in the Crawl Space and the player does not carry the penlight:
		move the penlight to the LAN Closet;
	now the isBrokenFlag of the phonograph is true;
	teleport the player to the LAN Closet.
	
Instead of jumping when the player is in The Top of the Ladder or the player is in Somewhere Along The Ladder:
	say "You plummet through the building upside down, cheeks flapping against the metal shaft walls and occasionally catching a foot or hand on the ladder enough to flip you around the other way.[paragraph break]Finally, your fall is broken by your[run paragraph on]";
	finishFall.
	
Instead of jumping when the player is in Bottom Rung:
	say "You step bravely off the ladder and into the limitless abyss, which in this case is about ten feet of abyss, followed immediately by a[run paragraph on]";
	finishFall.
	
Instead of going down when the player is in the Bottom Rung:
	try jumping.
	
The penlight is a lightsource in the Crawl Space. The description of the penlight is "A black flashlight with a metal barrel and protective rubber cover on the rear end[if the barrel is open], which hangs open[end if]." Understand "flashlight" or "torch" or "light" as the penlight. 

The rubber cover is part of the penlight. The description of the rubber cover is "The cover on the rear end of the penlight is [if the barrel is open]open, permitting a view into the hollow barrel[otherwise]closed[end if]." Understand "cap" as the rubber cover.
	
The barrel is an closed openable container. The barrel is part of the penlight. The description of the barrel is "The central part of the flashlight, which holds the batteries."

Instead of examining the penlight:
	if the player does not carry the penlight:
		say "(first taking the penlight for a better look)[command clarification break]";
		now the player carries the penlight;
	continue the action.

Instead of opening the rubber cover:
	try opening the barrel.
	
Instead of closing the rubber cover:
	try closing the barrel.
	
Instead of pulling the rubber cover:
	try opening the barrel.
	
Instead of pushing the rubber cover:
	try closing the barrel.
	
After opening the barrel: 
	say "You pull open the rubber cap."
	
After closing the barrel:
	say "You close up the rubber cover."
	
Instead of opening the penlight:
	try opening the barrel.
	
Instead of closing the penlight:
	try closing the barrel.
	
Instead of inserting something (called the item) into the penlight:
	try inserting the item into the barrel.
	
Instead of inserting something (called the item) into the barrel:
	if the barrel is not open:
		say "(first opening up the rubber cap)[command clarification break]";
		now the barrel is open;
	if the item is the fresh batteries:
		continue the action;
	otherwise:
		say "That doesn't fit."
	
Before switching on the penlight:
	if the barrel is open:
		say "Nothing happens. Perhaps you need to close the cap?";
		stop the action;
	otherwise:
		if the batteries are not in the barrel:
			say "Nothing happens. You notice that the flashlight feels too light.";
			stop the action.

Instead of opening the barrel when penlight is switched on:
	say "As soon as you open the end cap, the light winks off.";
	now the penlight is switched off.

Section 12 - Lobby

The description of the Lobby is "A beehive of activity for both employees and visitors, the atmosphere in the luxurious lobby is somehow both corporate and relaxed. There is a constant drone of conversation in the background." The possible exits of the Lobby are "The [elevatorDoorDesc] and the security checkpoint is to the south, towards the street. The only other interesting doors here are the emergency stairs to the north and [if the wasNoticed of the LAN Closet Door is true]the metallic door to the LAN Closet[otherwise]a metallic door[end if] to the east." The lobby has a list of text called stage business.

The conversation is a backdrop. The conversation is in the Lobby and Cafeteria. The description of the conversation is "If you listen closely, you can sometimes pick up a word or two from the constant chatter here."

Instead of doing something other than examining or listening to the conversation:
	say "You are surrounded by the noise.";
	try examining the conversation.

Instead of listening when the player is in the lobby:		
	say lobby stage business.

To say lobby stage business:
	say "You overhear [one of]some[or]a bit of[or]fragments of[or]a snipped of[or]a couple snatches of[or]some random[or]some background[in random order] conversation, [quotation mark] ...[italic type][run paragraph on]";
	overhear things in the Lobby;
	say "...[roman type][quotation mark][paragraph break]".

The stage business of the lobby is {
"are kept in the sub-basement, but only for those who have proven",
"and two ultra-rare ones out on the observation deck",
"for sure. And who knows what else they[apostrophe]re hiding here",
"the laws of god? Or of man? Anyhow, I say they[apostrophe]re harmless",
"a few with the green badges, but only one or two with the blue",
"but absolutely wretched taste in 80s music”,
"that he[apostrophe]s behind the project, but so far, no one has met”,
"how a wet-suit would relate to anything at all, but I guess”,
"absolutely amazing. I mean, I[apostrophe]ve had magret de canard before”,
"not just a conspiracy theory, but so far no one has penetrated”,
"instead of the elevator, which permits access to the”,
"has published on Glénard[apostrophe]s Disease, the vagaries of visceroptosis”,
"would have to slow it down somehow for that to be at all feasible”,
"are isolated from the rest of the building and the only way",
"are sitting right on top of it, but the chances that you will manage”,
"is too powerful for the International Court of Justice, unless we”,
"were to shut down abruptly, the momentum would tear apart the”,
"a simple mascot, but -- and this is where it gets weird -- actually a”,
"far below, in the parts that are inaccessible. However, I have it on”,
"not just a legend, but actually exists, but in a geographically remote”,
"weeks ago, but no one has seen them since. I have to presume”,
"and [apostrophe]indexed text[apostrophe] - but there's now only [apostrophe]text[apostrophe], which has all of the abilities",
"get word to the authorities. I have to admit, they have thought it out",
"sort of dystopianism, but not for the prosimians that populate it along",
"never would have imagined that sort of power concentrated into",
"clinically insane, but he is so well protected that none of us have",
"using magnetic levitation to essentially remove the term for the coefficient",
"that Heinlein[apostrophe]s ship stone might be an apt analogy but for",
"corrupts. Or, at least that is the common wisdom. However, in his case",
"amassed more than just technology; in this case social upheaval",
"in some way to the events of 1893 -- but the record is vague. I think"
}

The lobbyEmployees are privately-named plural-named scenery persons. The lobbyEmployees are in the lobby. The printed name of the lobbyEmployees is "employees". The description of the lobbyEmployees is "Employees hustle and bustle around the lobby on their motorized contrivances." Understand "workers" or "worker" or "employee" or "employees" as the lobbyEmployees. 

Instead of pushing or pulling or turning the lobbyEmployees:
	say "They are moving around too fast for you to grab."
	
Instead of attacking or cutting the lobbyEmployees:
	say "[noCutEmployees]."
	
To say noCutEmployees:
	say "You have only the greatest admiration for the people who developed the game you love. You would not dream of harming them".

The lobbyPlayers are privately-named plural-named scenery persons. The lobbyPlayers are in the lobby. The printed name of the lobbyPlayers is "visitors". The description of the lobbyPlayers is "Players mull about the lobby in awe." Understand "visitor" or "visitors" or "gamer" or "player" or "gamers" or "players" as the lobbyPlayers. 

Instead of smelling the lobbyPlayers:
	say "They smell like a Star Trek convention."
	
Instead of pushing or pulling or turning the lobbyPlayers:
	say "They are running around excitedly and evade your grasp."
	
Instead of attacking or cutting the lobbyPlayers for the first time:
	noFirstCutPlayers.
	
To noFirstCutPlayers:
	say "That would violate the Pogomaster Code of Ethics.[paragraph break]";
	bestow "Principled".

Instead of attacking or cutting the lobbyPlayers:
	say "[noCutPlayers]."
	
To say noCutPlayers:
	say "You wish them no harm"

The high-tech conveyances are scenery. The high-tech conveyances are in the Lobby. The description of the high-tech conveyances is "The employees jet around the lobby on segways and hoverboards." Understand "segway" or "segways" or "hoverboard" or "hoverboards" or "conveyance" or "contrivance" or "contrivances" or "motorized" as the high-tech conveyances.

Instead of doing something other than examining with high-tech conveyances:
	say "They are darting about too quickly to even get a good look at them."

Instead of going east from the Lobby when the walkman is not worn for the first time:
	if the speaker is active:
		 say "As you approach the LAN closet, you are filled with unbridled anxiety. You are vaguely aware of a low, rumbling sound, more felt than heard. It fills you with dread. The sound is inescapable. Your clothes feel too tight, your gait becomes unsteady, you wipe the sweat from your forehead. Something in the pit of your stomach is clawing at you; animal instinct wells up within you and you are seized by a sudden urge to flee. With as much composure as you can muster, you back away from the ominous door.[paragraph break]";
		bestow "Terrified of a LAN closet";
		try looking;
	otherwise:
		continue the action.
	
Instead of going east from the Lobby when the walkman is not worn:
	if the speaker is active:
		say "You try, but as you get closer, you are overcome with fear as a deep, bone-rattling sound overwhelms you.";
		try looking;
	otherwise:
		continue the action.
	
After going east from the Lobby for the first time:
	say "With the walkman blaring away in your ears, the arguably melodious strains of Rick Astley drown out the sonic barrier around the LAN closet, and you are able to approach it."

The RevolvingDoor is inside of Nyantech Entrance. The RevolvingDoor is outside of the Security Checkpoint. The printed name of the RevolvingDoor is "Revolving Door". The description of the RevolvingDoor is "A revolving brass door." The description of the revolving door is "A brass revolving door w at the entrance to the Nyantech Tower." The possible exits of the revolvingDoor are "You can either go inside, into Nyantech Headquarters, or outside, back to the street[one of]. Your choice[or][stopping]."

Instead of going outside when the player is in the revolvingDoor:
	say "The helpful (and mildly passive-aggressive) unicorn gives the door an extra kick, and the door spins even further.";
	try going inside.
	
Section 13 - Security Checkpoint

The Security Checkpoint is south of the Lobby. The description of the security checkpoint is "A cordoned off area that looks like it was hastily added to the lobby without a lot of forethought. The main feature of the security area is the metal detector and x-ray machine." Understand "area" as the Security Checkpoint.

The dryad is a person in the Security Checkpoint. The description of the dryad is a "A burly dryad in an ill-fitting uniform, who clearly would rather be frolicking in some forest clearing rather than doing shift work."

The stamp is in the void. The description of the stamp is "[quotation mark]Property of Nyantech[quotation mark]." Understand "hand" or "hands" as the stamp.

After examining the stamp for the first time:
	bestow "Sense of Belonging".
	
Instead of rubbing the stamp for the first time:
	say "[rubPhrase].[paragraph break]";
	bestow "Don[apostrophe]t Label Me".
	
Instead of rubbing the stamp:
	say "[rubPhrase]."
	
Instead of licking the stamp:
	say "The dark ink is waterproof."
	
To say rubPhrase:
	say "Your [one of]circulation improves[or]hands feel warm[or]hands shine brilliantly[in random order] but the indelible ink is not affected"

After going inside from the revolvingDoor for the first time:
	say "You turn a corner to the security checkpoint as you enter the building.[paragraph break]For the thousandth time that day, a heavy-set dryad in a security uniform says, [quotation mark]People through the metal detector, items [italic type]including phones[roman type] through the x-ray.[quotation mark][paragraph break]Not wanting to create trouble, you put all your items on conveyor belt and step through the metal detector. You are relieved when the dryad hands you back your phone on the other side of the detector";
	let C be false;
	repeat with N running through things carried by the player:
		if N is safe from seizure:
			do nothing;
		otherwise:
			now C is true;
	if C is true:
		say ", but watch with concern as she plucks your other belongings one at a time off the belt and puts them in a bag.[paragraph break][quotation mark]You[apostrophe]ll get it all back when you leave,[quotation mark] she says.[paragraph break]";
	otherwise:
		say ".[paragraph break]";
	if the player carries the salmon of turpitude:
		say "[quotation mark]Hold on... what have we here? Hmm, the fabled Salmon of Turpitude. Interesting. It gets its own bag.[quotation mark][paragraph break]";
	say "Finally, she [if C is true]locks the bag up in a locker, [end if]stamps your hand with some sort of ink, pins a badge on you, and boosts you towards the lobby.[paragraph break]";
	bestow "Bagged and Tagged";
	repeat with N running through the things carried by the player:
		if N is not safe from seizure:
			move N to the void;
	now the player wears the badge;
	now the stamp is part of the player;
	teleport the player to the lobby.
	
Instead of going south from the Lobby for the first time:
	say the headline of the Lobby;
	say "You are stopped by the security nymph, who takes one look at your hand and says, [quotation mark]Sorry. Company property cannot leave the building.[quotation mark][paragraph break]";
	bestow "Bureaucracy Is Its Own Reward".
	
Instead of going south from the Lobby:
	say "The security nymph points to your property stamp and escorts you back to the lobby.";
	try looking.
	 
Section 14 - LAN Closet

The LAN closet door is a closed door. The LAN closet door is east of the Lobby. The description of the LAN closet door is "A[if the LAN Closet Door is open]n open[otherwise] shut[end if] metallic door in the Lobby[if the player is in the LAN Closet]. A large speaker is mounted on the back of the door[otherwise]. The door is marked [quotation mark]LAN Closet[quotation mark], and below that in smaller letters, [quotation mark]and CAT control[quotation mark][end if]." Understand "metallic" as the LAN closet door. The LAN closet door has a truth state called wasNoticed. The wasNoticed of the LAN closet door is false.

Instead of exiting when the player is in the LAN Closet:
	try going west.

After examining the LAN closet door for the first time:
	now the wasNoticed of the LAN closet door is true.

Instead of touching or opening the LAN closet door when the player is in the Lobby:
	if the player does not wear the walkman:
		try going east;
	otherwise:
		continue the action.

The LAN Closet is east of the LAN Closet door. The description of the LAN Closet is "19-inch racks from floor to ceiling support stacks of networking hardware with blinking lights. Wires run upward from the racks and disappear above the [if the gearing assembly is visited]wrecked [end if]ceiling. To the right of the racks is a red metal panel labeled [quotation mark]CAT CONTROL[quotation mark], with a knob, some lights, and a numerical display." The possible exits of the LAN Closet is "The Lobby is immediately adjacent to the west." 



Definition: The speaker is active if isBrokenFlag of the phonograph is false and isOnFlag of the phonograph is true and the record is on the phonograph.

Instead of listening to the Lan Closet Door:
	if the speaker is active:
		if the player wears the walkman:
			say "Beyond the song, you can make out a bass rumbling.";
		otherwise:
			say "You reel back in terror from the sound at the door.";
	otherwise:
		try listening.
		
Instead of rubbing or licking or smelling or tasting or pushing or pulling or turning or attacking or cutting or taking the Lan closet door:
	try touching the Lan closet door.

The record is a prop . The record is on the phonograph. The description of the record is "A 33⅓ rpm LP, [quotation mark]Visceral Fear Sounds, Volume One[if the speaker is active],[quotation mark] rotates on the phonograph.[otherwise].[quotation mark][end if]".

The phonograph is a supporter. The phonograph is in the LAN Closet. The description of the phonograph is "The [if isBrokenFlag of the phonograph is true]broken [end if]phonograph seems to be set up to drive the huge speaker on the back of the door[if isBrokenFlag of the phonograph is false and isOnFlag of the phonograph is false]. The phono is switched off[end if][if isBrokenFlag of the phonograph is false and isOnFlag of the phonograph is true]. The phono[apostrophe]s platter is revolving[end if]." Understand "phono" or "turntable"  or "platter" or "record player" or "recordplayer" as the phonograph. The phonograph has a truth state called isBrokenFlag. The isBrokenFlag of the phonograph is false. The phonograph has a truth state called isOnFlag. The isOnFlag of the phonograph is true.

Instead of switching on the phonograph:
	if isBrokenFlag of the phonograph is true:
		say "You try turning it on, but it doesn't work any more.";
	otherwise:
		if isOnFlag of the phonograph is true:
			say "The phonograph is already on.";
		otherwise:
			say "You turn on the phonograph.";
			if the speaker is not active:
				now isOnFlag of the phonograph is true;
				follow the run from sound rule.
				
Instead of switching off the phonograph:
	if the isBrokenFlag of the phonograph is true:
		say "On, off, it doesn[apostrophe]t really matter -- the phonograph is totaled.";
	otherwise:
		if isOnFlag of the phonograph is false:
			say "The phonograph is already off.";
		otherwise:
			if speaker is active:
				say "[one of]You experience a great sense of relief; even if the sound was not affecting your conscious mind, it was eating away at your soul[or]You turn off the phonograph and feel much better[stopping].";
			otherwise:
				say "You turn off the phonograph.";
			now isOnFlag of the phonograph is false.
				
Instead of dropping or taking off the walkman when the player is in the LAN Closet:
	if the speaker is active:
		say "Before you can slip the earphone off, you are overcome by nauseous fear -- even worse than Rick Astley -- and you sprint out of the LAN closet, hanging onto the walkman.";
		now the player carries the walkman;
		now the LAN Closet Door is closed;
		teleport the player to the Lobby;
	otherwise:
		if the current action is dropping and isBrokenFlag of the phonograph is false:
			say "[one of]Still suffering after echoes of the horrible noise, you aren[apostrophe]t willing to be in here without the walkman, but you do slip the earphones off[or]Nah, the room gives you the willies as long as the phonograph is still in one piece, but you do slip the earphones off[stopping].";
			now the player carries the walkman;
		otherwise:
			continue the action.
	
To say walkmanTooValuable:
	say "It is a delicate bit of 80[apostrophe]s nostalgia, and probably worth something to a collector. You wouldn[apostrophe]t want to damage it."

Instead of throwing the walkman at something:
	say walkmanTooValuable.
	
Instead of attacking the walkman:
	say walkmanTooValuable.
		
Instead of attacking the record:
	say "You smash the offending vinyl disc into a million pieces and brush them away to hide the evidence[if the speaker is active]. You feel immediate relief as the subsonic vibrations suddenly cease[end if].";
	move the record to the void.
	
Instead of attacking the phonograph:
	say "You [one of]clobber[or]beat[or]take your aggressions out on[or]pummel[or]thrash[or]wallop[or]belt[or]slam[or]whack[in random order] the phonograph. ";
	if isBrokenFlag of the phonograph is true:
		say "It was already damaged beyond repair, but it makes you feel better.";
	otherwise:
		say  "Plastic and metal parts go flying, a spring rolls under the equipment rack, and sparks spray across the floor of the LAN closet. You got it but good. What[apostrophe]s left of the phonograph will surely never spin another record.";
		now isBrokenFlag of the phonograph is true.
		
Instead of taking the record:
	if the speaker is active:
		say "[one of][quotation mark]Bzzzzzzzeeeeeeeerrrrrrrpppppp![quotation mark] the speaker screams as you tear the record off the phonograph. Ah, much better. Your mind stops crumbling[or]With a sense of relief, you remove the record from the phonograph[stopping].";
		now the player carries the record;
	otherwise:
		continue the action.
		
Instead of taking off the record:
	try taking the record.
		
Instead of putting something (called the item) on the phonograph:
	if the item is not the record:
		say "You realize that putting [the item] on the phonograph wouldn[apostrophe]t make a lot of sense.";
	otherwise:
		if isBrokenFlag of the phonograph is false and isOnFlag of the phonograph is true:
			say "You carefully place the record back on the phonograph.";
			now the record is on the phonograph;
			follow the run from sound rule;
		otherwise:
			continue the action.
			
Instead of switching off the record:
	try switching off the phonograph.
	
Instead of switching on the record:
	try switching on the phonograph.

The speaker is part of the LAN Closet Door. The description of the speaker is "A heavy duty speaker, like the kind used on stage for rock concerts, with an oversized woofer. It is bolted directly to the door." Understand "woofer" as the speaker.

Instead of attacking the speaker:
	say "The speaker is built like a tank. You are likely to break before it does."

The racks are scenery Nyantechnology in the LAN Closet. The description of the racks is "Industry-standard 19-inch utility racks meant to support heavy equipment." Understand "rack" or "utility" as the racks.

The wires are scenery Nyantechnology in the LAN Closet. The description of the wires is "Thick bunches of twisted pair cable, trussed together." Understand "cat5" or "twisted pair" or "cable" or "cables" or "wire" as the wires. 

Instead of climbing the wires:
	try going up.
	
Instead of taking or pulling or cutting the wires:
	try attacking the wires.

The hardware is scenery  Nyantechnology in the LAN Closet. The description of the hardware is "Looks mostly like network switches. Indicator lights on the front of the switches are blinking furiously -- a huge amount of data must be flowing through here." Understand "equipment" or "server" or "computer" or "hub" or "router" or "switch" or "switches" or "routers" or "hubs" or "computers" or "servers" or "device" or "devices" or "hardware" or "electronic" or "ethernet" or "network" as hardware.

Instead of attacking a Nyantechnology:
	say "[One of]You can[apostrophe]t believe you even had that thought. You[apostrophe]re at the very heart of Nyantech! The data in these cables is the lifeblood of Pogoman. You[apostrophe]d never do anything to harm the game. You lovingly pet the equipment[or]You can[apostrophe]t bring yourself to even consider harming Nyantech hardware[or]Shudder. No[stopping]."
	
Instead of climbing the racks:
	try going up.

Instead of going up from the LAN Closet for the first time:
	say "[bold type]Somewhere above the LAN closet[roman type][line break]";
	say "You scamper up the racks and hang onto the bundles of red CAT5 cable that runs upward. Pushing aside the ceiling tile, you stick your head up into a dark area above this room.";
	continue the action.
	
The CAT Control is a scenery thing. The CAT Control is in the LAN Closet. The description of the CAT Control is "The panel is labeled [quotation mark]CAT Control[quotation mark] and has a picture of the Nyantech Cat at the center of eight red LEDs arranged in a circle. The LEDs are labeled according to their corresponding compass directions, N, NE, E, SE, S, SW, W, and SW. Currently the [entry 1 in HEADING] light is lit[if the onHoldFlag of the CAT Control is false], but the LEDs light up and wink out in progression traveling clockwise[end if]. Below that arrangement is a large red plunger with the word [quotation mark]HOLD[quotation mark]. Below that plunger control is a numerical counter labeled [quotation mark]Psychic Energy Collected[quotation mark]. The numbers on the display are rolling upwards." Understand "panel" or "light" or "lights" or "LED" or "LEDS" as the CAT Control. The CAT Control has a number called PEC. The PEC of the CAT control is 0. The CAT Control has a number called MegaCats. The MegaCats of the CAT Control is 0. The CAT Control has a truth state called the onHoldFlag. The onHoldFlag of the CAT Control is false.

Does the player mean examining the CAT Control:
	it is likely.

The numerical counter is part of the CAT Control. The description of the numerical counter is "The mechanical counter reads [PEC of the CAT Control]." Understand "display" or "psychic" or "energy" or "collected" as the numerical counter.

After examining the numerical counter:
	now the numerical counter is handled.
	[handled just reflects that it has been examined - a prerequisite for the megaCat medal]

Instead of examining the numerical counter for the first time:
	now the PEC of the CAT Control is 69105;
	say "A mechanical counter, like a car[apostrophe]s odometer, with white numbers on a black background. Very old school. You can respect that. The counter currently reads [PEC of the CAT Control]."
	
The plunger is part of the CAT Control. The description of the plunger is "A large red emergency cut-off switch with the word [quotation mark]HOLD[quotation mark] displayed prominently. It looks like it is in the [if onHoldFlag of the CAT Control is true]pulled-out[otherwise]pushed-in[end if] position." Understand "emergency" or "switch" or "cut-off" or "knob" as the plunger.

Instead of pulling the plunger:
	if onHoldFlag of the CAT Control is true:
		say "The plunger is already pulled out.";
	otherwise:
		now onHoldFlag of the CAT Control is true;
		repeat with N running from 1 to 3:
			rotate HEADING backwards;
		say "You pull the plunger out and the LEDs continue to light in progression, but slow down. Finally, the display holds steady with the [entry 1 in HEADING] light lit continuously. The rate of increase of [quotation mark]Psychic Energy Collected[quotation mark] has also dropped off markedly."
	
Instead of pushing the plunger:
	if onHoldFlag of the CAT Control is false:
		say "The plunger was already pushed all the way in.";
	otherwise:
		now onHoldFlag of the CAT Control is false;
		say "The LEDs again start lighting in order, clockwise, slowly at first, but then resuming their previous pace. The PEC counter starts clicking over more rapidly as well."
		
Section 15 - Legal Department

The description of Legal Department is "The room is small and comfortable, with walnut paneling, green wainscot, and a dark grey rug. In the center of the room is a large mahogany desk and an ergonomic rolling black leather executive[apostrophe]s chair. A computer screen is embedded in the desktop."  The possible exits of the Legal Department are "To the north is the exit to the emergency stairs, the [elevatorDoorDesc], and to the south is a grey door marked [quotation mark]Beta Testing.[quotation mark]".

The printed name of the Legal Department is "Legal Department[if the player is on the ergonomic chair] (lounging in the fancy swivel chair)[end if]".

The Beta Testing Door is a closed locked door. The Beta Testing Door is south of Legal Department. Understand "grey" or "door" as the beta testing door. The description of the beta testing door is "[if the Beta Testing Door is open]An open[otherwise]A closed[end if] grey door marked [quotation mark]Beta Testing[quotation mark]."

Instead of taking or pulling the walnut paneling:
	say "It is firmly attached to the wall."
	
Instead of taking or pulling the wainscot:
	try taking the walnut paneling.

The walnut paneling is scenery in the Legal Department. The description of the walnut paneling is "Not the cheap plywood kind, this is full thickness walnut."

Instead of searching or attacking or looking under or listening to the walnut paneling:
	say "You tap it searching for hidden compartments, but it sounds solid enough."

The wainscot is scenery in the Legal Department. The description of the wainscot is "The dark green wainscoting around the base of the walls gives the room a finished look."

Instead of searching or attacking or looking under or listening to the wainscot:
	try searching the walnut paneling.
	
Instead of searching or attacking or looking under or listening to the office wall:
	try searching the walnut paneling.

The grey rug is scenery in the Legal Department. The description of the grey rug is "The dark grey connotes professionalism."

Instead of smelling the grey rug:
	say "New rug smell."

Instead of taking or pulling or pushing or spinning or turning or looking under the grey rug:
	say "The rug is tacked down firmly to the floor."

The mahogany desk is a scenery supporter in the Legal Department. The description of the mahogany desk is "A heavy antique desk with inset display screen and one large drawer on the right side."

The drawer is an openable closed container. The drawer is part of the desk. The description of the drawer is "A sliding drawer, which is [if the drawer is open]open[otherwise]shut[end if]."

Instead of pulling the drawer:
	if the drawer is closed:
		try opening the drawer;
	otherwise:
		say "It is already open."
		
Instead of pushing the drawer:
	if the drawer is open:
		try closing the drawer;
	otherwise:
		say "It is already closed."

After opening the drawer:
	say "The draw slides out and reveals that it contains ";
	list the contents of the drawer, as a sentence;
	say "."

The computer screen is part of the desk. The description of the computer screen is "A computer screen that is set into the surface of the desk displays the following text:[paragraph break][if the Beta Testing Door is locked][fixed letter spacing]            Nyantech, Inc.[line break]            Legal Division[paragraph break]        Beta-Tester Agreement[paragraph break]  By touching [quotation mark]agree[quotation mark], the user agrees[line break]        to be held bound by all[line break]      provisions of this agreement[paragraph break]       TOUCH [quotation mark]AGREE[quotation mark] TO CONTINUE[paragraph break]TOUCH [quotation mark]TERMS[quotation mark] TO REVIEW TERMS OF AGREEMENT[roman type][otherwise][welcomeTester][end if]". Understand "display" as the computer screen.

Instead of attacking the computer screen for the first time:
	say "You violent outburst merely elicits a mild beep followed by the less than satisfying comment of [quotation mark]Input Not Understood. Please choose either TERMS or AGREE.[quotation mark][paragraph break]";
	bestow "Lack Of Finesse".
	
Instead of attacking the computer screen:
	say "The computer beeps at you mellowly."	

Instead of switching off the computer screen for the first time:
	say "You don[apostrophe]t see a switch (or, for that matter, an electrical cord to unplug).[paragraph break]";
	bestow "Yank The Plug!".
	
Instead of switching off the computer screen:
	say "There is no switch to do so."
	
Instead of switching on the computer screen:
	say "It is already on."

agreeProxy is a privately-named scenery in Legal Department. The printed name of the agreeProxy is "AGREE". The description of the agreeProxy is "The word AGREE glows intensely on the screen." Understand "agree" as the agreeProxy.

To say noScreenResponse:
	say "The screen does not respond."

Instead of doing something other than examining or touching or pushing with the agreeProxy:
	say "[noScreenResponse]".
	
termsProxy is a privately-named scenery in Legal Department. The printed name of the termsProxy is "TERMS". The description of the termsProxy is "The word [quotation mark]TERMS[quotation mark] glows a bit dimmer than the word [quotation mark]AGREE[quotation mark] as if to convey its conviction that reading the terms won[apostrophe]t really do much for you, but would be something of an inconvenience for the computer."  Understand "terms" as the termsProxy.

Instead of doing something other than examining or touching or pushing with the termsProxy:
	say "[noScreenResponse]".
	
Instead of pushing the agreeProxy:
	try touching the agreeProxy.
	
Instead of pushing the termsProxy:
	try touching the termsProxy.
	
Instead of touching termsProxy:
	say "Text fills the screen and scrolls by a breakneck speed. Most of it looks like dense legal boilerplate but you catch a few phrases like [quotation mark][terms1][quotation mark] and [quotation mark][terms2].[quotation mark][paragraph break]".
	
To say terms1:
	say "[one of]waiver of liability[or]agreement to hold harmless[or]notwithstanding previous claims to the so-called inalienable rights of man[or]lack of human subject protections[or]no warrantee of fitness of purpose[or]threats to personal safety and sanity[or]or however unpleasant they may be[or]unthinkable consequences[or]mere mortality[or]enslavement or imprisonment[or]organ atrophy or dysfunction[or]implosion or inversion[or]voids all provisions of the Declaration of Helsinki[or]hideous side-effects[or]unpredictable losses[or]whether self-inflicted or intentional[or]safe delivery of neither body or soul[or]hunting or being hunted[or]including but not limited to mutilation[or]nocturnal, tentacled, bat-winged monster dwelling[or]indemnity against corporal mental compulsion or control[or]all forms of torture both physical and mental[or]including supernatural events[or]no guarantee of restitution or redress[or]science must supersede those of the individual[or]perfidious propensity towards debasement and ruin[in random order]".
	
To say terms2:
	say "[one of]repatriation of remains (if they can be located)[or]despite all reasonable precautions[or]so-called supernatural forces[or]surviving assets will be conceded to Nyantech[or]implicit lack of good faith[or]or bearing the mark upon its forehead[or]exclusive and perpetual powers over the subject[or]unjustly or indecently committed against the wishes of the accused[or]through such agents as may be conjured[or]without expectation of compensation for mental or physical duress[or]entirely volunteer basis without expectation of remuneration[or]against all foreseeable loss or injury[or]breach will be punishable by excruciating[or]inflicted in the case of violation of any of these terms[or]under no obligation to protect the subject[or]such penalties including evisceration[or]specimens including bodily fluids[or]agrees not to transfer, copy, disclose, provide or otherwise make available[or]to make, use, copy, modify, sell, distribute[or]disciplined in the event of failure[or]in the unfortunate event of failure[or]the mewling pleas of the masses[or]much like an ant might be crushed beneath the heel[in random order]".
	
To say welcomeTester:
	say "[fixed letter spacing]You have been provisionally accepted as beta-tester for the next generation of Nyantech technology. Successful completion of a series of tests of ingenuity and character are required to graduate from probationary status to full beta-tester.[paragraph break]These tests have now begun_[roman type]".

Instead of touching the agreeProxy:
	say "A brief fanfare plays and the screen clears, displaying the following:[paragraph break][welcomeTester][paragraph break]There is a clicking noise from the grey door to the south.[paragraph break]";
	now the Beta Testing Door is unlocked;
	move the agreeProxy to the void;
	move the termsProxy to the void;
	bestow "Provisional Beta-Tester".

The plastic clock is a prop. The plastic clock is on the office wall. The description of the plastic clock is "[if the plastic clock is not on a supporter]The front of the clock is a clear plastic dome over an analog clock face with hour, minute, and second hands. On the back of the clock, there a panel[otherwise]A cheap plastic clock[end if][if fresh batteries are in the battery holder]. The clock ticks quietly[end if]." Understand "hour" or "minute" or "second" or "hand" as the plastic clock. Understand "dome" or "hour" or "minute" or "second" as the plastic clock when the plastic clock is not on the office wall.

Instead of eating the plastic clock for the first time:
	say "It is plainly inedible.[paragraph break]";
	bestow "Captain Hook".

Instead of taking the plastic clock:
	if the plastic clock was on the office wall:
		say "(first taking the plastic clock off the wall)[command clarification break]";
		continue the action;
	otherwise:
		continue the action.
	
Instead of listening to the clock:
	if the player does not carry the clock:
		try taking the clock;
	if the clock encloses the fresh batteries:
		say "Tick. Tick.";
	otherwise:
		say "You don[apostrophe]t hear any noise coming from the clock."

After putting the clock on the wall:
	say "You place the clock back on the wall."

The fresh batteries are plural-named prop.  The fresh batteries are in the battery holder. The description of the fresh batteries is "Shiny new batteries." Understand "battery" or "aa" or "disposible" or "alkaline" or "lithium" or "zinc" or "carbon" as the fresh batteries.

Instead of eating the batteries:
	say "They would not be of much use to you by the time you saw them again."

After taking the fresh batteries for the first time:
	say "You pluck some AA batteries out of the clock."

The office wall is a scenery supporter in the Legal Department. The description of the office wall is "Rich wooden paneling above green wainscoting."

The ergonomic chair is a portable enterable scenery supporter in the Legal Department. The description of the ergonomic chair is "An executive desk chair built for comfort. The chair is solidly built and mounted on rolling casters."  Understand "fance" or "swivel" or "executive" as the ergonomic chair.

Instead of spinning the player when the player is on the ergonomic chair:
	try spinning the ergonomic chair.
	
Instead of spinning the player:
	say "You spin around. Whee."

Instead of taking the ergonomic chair, say "Quality comes with a price - thanks to its heavy duty all metal frame, the chair weighs a ton. You can[apostrophe]t pick it up."
			
Instead of pushing or pulling the ergonomic chair:
	say "You amuse yourself for a bit by yanking the rolling chair around the room."

Instead of pushing the ergonomic chair to a direction (called the way): 
	if the door way from the location is locked:
		say "That door seems to be locked.";
	otherwise:
		say "The chair is modeled after first class, not economy. It is too wide to fit through the doorway. But very comfortable."
		
Instead of spinning the chair:
	if the chair encloses the player:
		say "You spin wildly in the chair, almost to the point of examining your own stomach contents.";
	otherwise:
		say "You give the chair a good spin. Nothing beats cheap entertainment. Well, except playing Pogoman."

The remote is a prop in the drawer. The description of the remote is "It resembles a garage door remote: a brown box with a single white button. On the back, there is a small compartment[if the battery compartment is open], which is open[end if]." Understand "garage" or "opener" or "box" or "brown" as the remote.

Instead of switching on or switching off the remote:
	say "Have you tried pressing the button on the remote?"

The battery compartment is an closed openable container. The battery compartment is part of the remote. The description of the battery compartment is "[batteryCompartmentDescription]."  

To say batteryCompartmentDescription:
	if the battery compartment is open:
		if the battery compartment contains fresh batteries:
			say "A small, open compartment on the back of the remote";
		otherwise:
			say "The open compartment for AA batteries is empty";
	otherwise:
		say "A closed battery compartment"
		
Instead of inserting something (called the item) into the battery compartment:
	if the item is not fresh batteries:
		say "That won[apostrophe]t fit.";
	otherwise:
		continue the action.
		
Instead of inserting something (called the item) into the remote:
	if the remote is not held:
		try taking the remote;
	if the battery compartment is not open:
		try opening the battery compartment;
	try inserting the item into the battery compartment.
		
Instead of inserting fresh batteries into the closed battery compartment:
	try opening the battery compartment;
	try inserting the fresh batteries into the battery compartment.
	
The back panel is an closed openable container. The back panel is part of the clock. The description of the back panel is "[if the back panel is open]An open[otherwise]A latched[end if] panel on the back of the clock[if the back panel is open]. Inside, there is a battery holder[end if]." Understand "latch" as the back panel.

Understand "unlatch [something]" as opening.

Instead of unclipping the back panel:
	try opening the back panel.

The battery holder is an open fixed in place container in the back panel. The description of the battery holder is "A space on the back of the clock to insert AA batteries[if fresh batteries are not in the battery holder], which is currently empty[end if]."

Instead of inserting something (called the item) into the battery holder:
	if the item is not fresh batteries:
		say "That won[apostrophe]t fit.";
	otherwise:
		continue the action.

Instead of inserting something (called the item) into the back panel:
	if the clock is not held:
		try taking the clock;
	if the back panel is not open:
		try opening the back panel;
	try inserting the item into the battery holder.
	
Instead of inserting something (called the item) into the clock:
	if the clock is not held:
		try taking the clock;
	if the back panel is not open:
		try opening the back panel;
	try inserting the item into the battery holder.

The button is part of the remote. The description of the button is "A white plastic button." Understand "white" or "plastic" or "remote button" or "button on remote" as the button.

Does the player mean examining or pushing the button: 
	it is likely.

After pushing the button:
	if fresh batteries are in the battery compartment:
		say "The LED on the remote flickers briefly";
		if the player is in Welcome to Beta Testing or the player is in the Cousteau Room:
			say ". The Cousteau Room's metal door ";
			if the Cousteau Door is closed:
				say "retracts into the ceiling";
				now the Cousteau Door is open;
			otherwise:
				say "descends from the ceiling and locks in place";
				now the Cousteau Door is closed;
	otherwise:
		say "Nothing seems to happen";
	say "."
	
Instead of attacking the Cousteau Door:
	if the Cousteau Door is open:
		say "You tap on the bottom of the door. It sounds solid enough.";
	otherwise:
		say "It rattles loudly."
	
Instead of pushing the remote:
	try pushing the button.
	
Instead of opening the remote:
	try opening the battery compartment.
	
Instead of closing the remote:
	try closing the battery compartment.
	
Instead of opening or closing the Cousteau Door:
	say "There are no handles on the door, and it appears that the door is not designed to be operated manually."

The LED is a thing. The LED is part of the remote. The description of the LED is "A rectangular red indicator light on the remote. It is not illuminated." Understand "indicator" or "light" as the LED.

Instead of switching on or switching off the LED:
	say "Have you tried pressing the button on the remote?"

The Cousteau Door is a locked door. The Cousteau Door is south of Welcome to Beta Testing. Understand "grey" or "metal" or "retractable" or "retracting" or "garage" or "door" as the Cousteau Door. The description of the Cousteau door is "An electrically actuated garage door marked [quotation mark]Cousteau Room[quotation mark]. Currently, it is in the [if the Cousteau Door is open]raised[otherwise]lowered[end if] position."  

Section 16 - Welcome to Beta Testing

Welcome to Beta Testing is south of the Beta Testing Door.  The description of Welcome to Beta Testing is "The room is brightly lit and the walls are covered with inspirational posters." The possible exits of Welcome to Beta Testing are "To the north is the door to the Legal Department office and to the south is a wide [if the Cousteau Door is closed]metal door[otherwise]door way[end if] leading to the Cousteau Room."

The party hat is a wearable prop in Welcome to Beta Testing. The description of the party hat is "A brightly colored cardboard hat bearing the words [quotation mark]Yeah! Beta-Testing![quotation mark]".

The posters are a plural-named scenery in Welcome to Beta Testing. The description of posters is "The walls are covered with uplifting, motivational posters, mostly cats, puppies and unicorns, with slogans like [quotation mark]You can do it![quotation mark], [quotation mark]Success is just another word for unending work[quotation mark], and [quotation mark]If you fail, fail forward (but really, don[apostrophe]t fail).[quotation mark]". Understand "poster" or "cat" or "cats" or "puppy" or "puppies" or "adorable" or "animal" or "animals" or "unicorn" or "unicorns" or "slogn" or "slogans" as the posters.

Instead of taking the posters:
	say "The last thing you need is a more inspirational cat posters."

Instead of examining the player when the player wears the hat:
	say "The hat adds a certain gravitas."

After wearing the party hat for the first time:
	say "Wearing the hat[if the player wears the Baseball Cap of Pogomastery] (on top of the Baseball Cap of Pogomastery)[end if], you feel instantly jovial and can[apostrophe]t help but break into a little spontaneous[if the player is wearing the wetsuit], but awkward,[end if] beta-testing dance.[paragraph break]";
	bestow "Team Spirit".
	
After wearing the party hat:
	say "You pop the hat onto your head [if the player wears the Baseball Cap of Pogomastery](on top of the Baseball Cap of Pogomastery) [end if]at what you think is a rakish angle[one of]. But consider for just a moment, a three by two cell table: how my friends see me; how my family sees me; how I see myself; how society sees me; how others gamers see me; how I really look. Now, notice that the hat only looks rakish in one of the six cells?[paragraph break]Just saying[or][stopping]."
	 
Section 17 - Cousteau Room
	
Cousteau Room is south of the Cousteau Door. The description of the Cousteau Room is "The room is tiled, and filled with the sound of waves crashing into the shoreline. The walls are almost white at the top but range to a dark blue near the floor, which is a gritty stucco. Some colorful arrows are painted on one part of the wall, near a corner. Lights play on the ceiling, like reflected waves, and the overall effect evokes a deep-sea vibe."  The possible exits of the Cousteau Room are "The only exit from here is back through the wide door to the north."

Instead of listening when the player is in the Cousteau Room:
	say "Splash. Splash. Soothing Splash. Splash."

The colorful arrows are scenery. The colorful arrows are in the Cousteau Room. The description of the colorful arrows is "Some green and blue arrows are pointed on the wall. These are not bow-and-arrow sorts of arrows, but the kind you draw in powerpoint: black outline and a simple filled shape. In one column, there are nine upward-facing green arrows and right next to that column, there is another column of three downward-facing blue arrows." Understand "arrow" or "painting" or "paintings" as the colorful arrows.

Instead of touching the colorful arrows:
	say "The arrows are flat paintings on the wall and are smooth to the touch."
	
Instead of turning or spinning or pushing or pulling the arrows:
	say "The arrows do not move."
	
The ocean floor is scenery. The ocean floor is in the Cousteau Room. The description of the ocean floor is "A concrete floor with just a bit of sandy texture; it is light tan in color." Understand "sandy" or "sand" or "tan" or "light" or "hard" or "texture" as the floor.

Instead of touching the floor:
	say "The floor feels gritty, like a sand paper."

Instead of entering the ocean floor:
	say "The floor is rock hard and not at all comfortable, so you get back up almost instantly."

The stucco walls are scenery. The stucco walls are in the Cousteau Room. The description of the stucco walls is "Rough stucco walls with an underwater theme."  Understand "stucco" or "wall" or "walls" or "tile" or "tiles" as the stucco walls.

Instead of touching the stucco walls:
	say "The walls are rough, and even sharp at points. Not at all pleasant to touch."

The wetsuit is a wearable prop in the Cousteau Room. The description of the wetsuit is "A black neoprene wetsuit. The entire diving outfit is a [quotation mark]onesie[quotation mark] -- the suit, mask, fins and tanks are an integrated unit. It looks like you don the suit by stepping into it from the front and then zipping it up." Understand "suit" or "outfit" or "diving" as the wetsuit. The wetsuit has a number called timesFlopped. The timesFlopped of the wetsuit is 0.

The flippers are part of the wetsuit. The description of the flippers is "Bright orange rubber flippers, which meet seamlessly with the lower part of the wetsuit legging." Understand "legging" as the flippers.

The mask is part of the wetsuit. The description of the mask is "A rubber face mask, which is built into the head piece of the wetsuit." Understand "head piece" or "neoprene" or "regulator" or "mouthpiece" or "hose" or "valve" or "belt" as the wetsuit.

The tanks are part of the wetsuit. The description of the tanks is "Two large air tanks built into the back of the wetsuit." Understand "air" or "tank" or "strap" or "straps" as the tanks.

After wearing the wetsuit: 
	say "Despite the tight fit, the diving outfit pulls on snuggly over your clothing [if the player wears the Baseball Cap of Pogomastery]including, of course, your Baseball Cap of Pogomastery[end if]. You wriggle into the headpiece and adjust the mask. With a bit of twisting, you slip the flippers over your shoes, zip up the front of the suit, and adjust the air tank for comfort[if the player wears the party hat].[paragraph break]You had to take the party hat off to put the suit on, but you immediately put the strangely adherent hat back on and it bonds tightly with the neoprene headpiece[end if].";
	if the player had not worn the wetsuit:
		say line break;
		bestow "Aquanaut".
		
Instead of taking off the wetsuit:
	if the player is in the BallPit Area:
		if the player is in the Ball Pit:
			say "With some difficulty you float on the soft and shifting surface of the ball pit, while at the same time peeling out of the tight wetsuit, which you now hold on to.";
		otherwise:
			say "You struggle out of the wet suit, grab it, and shoot immediately to the surface of the ball pit for a breath.";
			teleport the player to the ball pit;
	otherwise:
		continue the action.
			
Instead of going a direction (called the way) when the player wears the wetsuit:
	if the player is in the Cafeteria and the way is east:
		say "You dive into the ball pit and swim around the surface effortlessly, propelled by your flippers.";
		teleport the player to the Ball Pit;
		the rule succeeds;
	if the player is in the Ball Pit and the way is west:
		continue the action;
	if the player is in the BallPit Area:
		say the headline of the location of the player;
		continue the action;
	otherwise:
		say the headline of the location of the player;
		increase the timesFlopped of the wetsuit by 1;
		if the timesFlopped of the wetsuit is:
			-- 1:
				say "You waddle around in your flippers and fall flat on your face. Luckily, the face mask doesn[apostrophe]t break.[paragraph break]";
				bestow "At Least You Saved Face";
			-- 2:
				say "You struggle and flail, but are not able to walk around wearing the whole undersea get-up.[paragraph break]";
				bestow "Fish Out Of Water";
			-- otherwise:
				say "The wetsuit is just not made for walking around on land."
		
Instead of taking off the wetsuit:
	say "You perform a small dance and manage to take off the suit and are now carrying it[if the player wears the party hat]. As for the stylish party hat, you conscientiously replace it atop your head[end if].";
	now the player carries the wetsuit.
	
Instead of listening when the player is in the Cousteau Room:
	say "You hear sounds from some remote sea shore."
	
Section 18 - Rick Astley Shrine

The description of the Rick Astley Shrine is "[one of]As soon as the blue door is opened, a voice congratulates you, [quotation mark]Welcome to Blue Level, Beta Tester. You have done well![quotation mark][paragraph break]This sort of praise from Nyantech goes right your primitive gamer hindbrain, which immediately releases a flood of endorphins. You bathe in the warm glow of pleasure hormones until you suddenly realize that you are surrounded by 1980s Rick Astley memorabilia: posters, photos, autographs.[paragraph break]You shield your eyes to limit the horror[or]A room full of Rick Astley memorabilia[stopping]."  The possible exits of the Rick Astley Shrine are "[one of]Thankfully, t[or]T[stopping]he exit back to the emergency stairs is to the north."

Instead of smelling when the player is in the Rick Astley Shrine:
	say "The Shrine has the musty smell of things best left forgotten."

The rickety table is a fixed in place supporter in the Rick Astley Shrine. The description of the rickety table is "A cheap plastic table."

Instead of taking or pushing or pulling or cutting or attacking or climbing or turning or spinning or touching the rickety table:
	disappearTable;

After putting anything on the rickety table:
	if the number of things on the rickety table is:
		-- 1:
			say "The table sags and creaks under the slightest load.";
		-- 2:
			say "The table bows downward and the ancient plastic cracks concerningly.";
		-- 3:
			disappearTable.
			
To disappearTable:
	say "The table collapses immediately in a cloud of (probably carcinogenic) slightly off-white dust, which blows away.[paragraph break]";
	bestow "No Great Loss";
	repeat with N running through the things on the rickety table:
		move N to the Rick Astley Shrine;
	move the rickety table to the void.

Instead of entering the rickety table, say "Surely, that would be the end of the rickety table."

Memorabilia are plural-named backdrop in the Rick Astley Shrine. The description of the memorabilia is "[one of]Too horrid to contemplate[or]You avert your eyes[or]Your sanity ebbs[or]You are not sure if you can bear any more[or]Mommy, make it stop[or]Closing your eyes helps[stopping]."  Understand "memorabilia" or "poster" or "posters" or "photo" or "photos" or "photograph" or "photographs" or "autograph" or "autographs" as the memorabilia.

Instead of searching the memorabilia for the first time:
	say "You search through the memorabilia and are left with a feeling of profound nostaligia. Or perhaps nausea.[paragraph break]";
	bestow "Walk Down Memory Lane".
	
Instead of searching the memorabilia:
	say "You find nothing new."
	
Instead of taking the memorabilia:
	say "They are best left here, where few will ever see them."

The walkman is a wearable prop on the rickety table. The description of the walkman is "This is an original SONY walkman: a portable cassette tape player with earphones. The walkman contains a tape." Understand "sony" or "tape" or "cassette" or "player" or "earphone" or "earphones" or "headphone" or "headphones" or "ear phone" or "ear phones" or "head phone" or "head phones" or "buds" or "earbuds" or "bud" or "earbud" or "ear bud" as the walkman.

After going north from the Rick Astley Shrine for the first time:
	say "As you exit the Rick Astley Shrine, you wonder how you will manage to penetrate deeper into Nyantech. Getting this far was difficult -- you are curious about what comes next.[paragraph break]";
	bestow "Curiosity Killed The Cat".

Instead of listening to the walkman when the walkman is not worn:
	say "(first putting on the earphones)[command clarification break]";
	try wearing the walkman.

Before switching on the walkman:
	say "The walkman is already on - in fact, you don[apostrophe]t seen any off switch[if the player does not wear the walkman], but you[apostrophe]ll need to put the earphones on to hear anything[end if].";
	stop the action.
	
Before switching off the walkman:
	say "The walkman seems to be stuck in the [quotation mark]on[quotation mark] position and is looping continuously.";
	stop the action.
	
Instead of opening the walkman for the first time:
	say "The walkman appears to have been modified: the door that retains the tape would ordinarily swing out, but you do not even see hinges. It looks like there is no way to ejected the tape. Similarly, there is no trace of a battery compartment.[paragraph break]";
	bestow "Odd Design".
	
Instead of opening the walkman:
	say "You can[apostrophe]t."
	
After wearing the walkman:
	say "You are immediately assaulted by the musical stylings of Rick Astley."
	
To say A Ghastly Astley Lyric:
	say "[one of]We[apostrophe]re no strangers to love[or]You know the rules and so do I[or]A full commitment[apostrophe]s what I[apostrophe]m thinking of[or]You wouldn[apostrophe]t get this from any other guy[or]I just wanna tell you how I[apostrophe]m feeling[or]Gotta make you understand[or]Never gonna give you up[or]Never gonna let you down[or]Never gonna run around and desert you[or]Never gonna make you cry[or]Never gonna say goodbye[or]Never gonna tell a lie and hurt you[or]We[apostrophe]ve known each other for so long[or]Your heart[apostrophe]s been aching, but[or]You[apostrophe]re too shy to say it[or]Inside, we both know what[apostrophe]s been going on[or]We know the game and we[apostrophe]re gonna play it[or]And if you ask me how I[apostrophe]m feeling[or]Don[apostrophe]t tell me you[apostrophe]re too blind to see[or](Ooh, give you up)[or]Never gonna give, never gonna give[or](Give you up)[in random order]".
	
Instead of listening when the player is in the Rick Astley Shrine and the player does not wear the walkman:
	say "It is quiet in here. Too quiet.";

Section 19 - Ball Pit

The BallPit Area is a region. Ball Pit, BallPitShallow, BallPitDeep, and BallPitBottom are rooms in the BallPit Area.
	
Ball Pit is east of the Cafeteria. The description of Ball Pit is "You tread to keep your head above sea of colorful rubber balls."  The possible exits of Ball Pit are "The cafeteria is back to the west."

Instead of exiting when the player is in the Ball Pit:
	try going west.

Section 20 - Ball Pit Shallow

BallPitShallow is down from Ball Pit. The printed name of BallPitShallow is "In The Ball Pit, Just Under The Surface". The description of BallPitShallow is "Swimming through brightly colored rubber balls."

Section 21 - Ball Pit Deep

BallPitDeep is down from BallPitShallow. The printed name of BallPitDeep is "Deep In The Ball Pit". The description of BallPitDeep is "At this depth, only dim rainbow-colored light filters down."

Section 22 - Ball Pit Bottom

BallPitBottom is down from BallPitDeep. The printed name of BallPitBottom is "The Bottom Of The Ball Pit". "The dark depths of the ball pit."

After going east from the Cafeteria for the first time:
	say the headline of the location of the player;
	say "As you step over the threshold, you fall immediately into a giant pit filled with small rubber balls of every color. You panic as you sink into the pit and your uncoordinated thrashing just buries you deeper. You pass several other pit explorers and take an elbow to the jaw before you catch on to the trick of swimming through the balls. Eventually you make it to the top and hang on to the edge of the pit.[paragraph break]";
	bestow "Staying Afloat In A Sea of Chaos".
	
After going east from the Cafeteria:
	say "You are adrift in a pit, filled with small rubber balls."
	
The ballObject is a privately-named backdrop in the BallPit Area. The printed name of ballObject is "ball". The description of the ballObject is "Glossy, supple, and slippery balls of every color." Understand "ball" or "balls" or "rubber" as the ballObject.

Before taking ballObject:
	say "The more you tighten your grip, the more balls slip through your fingers." instead. [Unless the ball is Alderaan, in which case it is bad news for that particular ball.]
	
Before going down from the ball pit:
	if the player wears the wetsuit:
		continue the action;
	otherwise:
		say the headline of the location of the player;
		say "[one of]You dive down and push through the mass of balls with a familiar swimming motion. As you get deeper, you begin to have difficulty getting a breath and take a last gulp of air. You plunge downward kicking now to gain depth.[paragraph break]The deeper you go, the more the multicolored light fades. You reach out a hand to blindly probe the depths, and as your lungs begin to ache, you make a final attempt to reach bottom.[paragraph break]You hold out as long as you can, but never reach the bottom. Your lungs now burning, you shoot back to the surface, and arrive gasping for air[or]You swim down as far as you can, but get no further than before. You return to the surface breathless[stopping].";
		stop the action.
		
Instead of going down from the Ball Pit for the first time:
	say "[if the player wears the wetsuit]You adjust your mask, put the regulator in your mouth, and flip forward. Your flippers hang in the air above you for a moment and then slip under the surface. [end if]As you dive deeper, you hear something in the distance, far below you.[paragraph break]";
	bestow "Got that sinking feeling";
	teleport the player to the room down from the location.
	
Instead of going down from the BallPitShallow for the first time:
	say "At this depth, the weight of the balls above you is noticeable, but not uncomfortable. The light filtering down through the rubber balls is muted, but another pale, blue light shines upward from below. In the distance, low bass notes resonate.[paragraph break]";
	bestow "In Over Your Head";
	teleport the player to the room down from the location.
	
Instead of going down from the BallPitDeep for the first time:
	say "You swim with difficulty through the viscous sea of rubber balls, which at this depth are nearly flat. Finally, you arrive at the bottom of the pit, where you come face to face with a robotic blue whale. Your organs quiver with each resounding note of its deep, lamenting song.[paragraph break]";
	bestow "Admiral, there be whales here!";
	say "You and the whale just hover there for a moment communing with each other. The whale blinks and its eyes shine with a bright blue light.[paragraph break]A moment later, you find yourself standing in the cafeteria, not quite sure of what just happened and wondering if you imagined it. The diving suit is gone, but… what[apostrophe]s this? Your badge has turned blue with a white bar.";
	now the securityColor of the badge is blue;
	move the wetsuit to the void;
	teleport the player to the cafeteria.

Instead of going down when the player is in the BallPit area:
	if the player is not in BallPitBottom:
		say "You swim ever downward through the colorful balls.";
		continue the action;
	otherwise:
		say "You have reached the bottom and can[apostrophe]t go any deeper."
		
Instead of going up when the player is in the BallPit Area:
	if the player is not in the Ball Pit:
		say "You swim towards the surface.";
		continue the action;
	otherwise:
		say "You are already at the surface[one of] and despite your best effort, you are unable to levitate above it[or][stopping]."

Section 23 - Stairwell Layout

To say shortEmergencyStairs:
	say "emergency stairs"
	
To say shortDoorToThe:
	say "door to the"
	
To say stairwellDescription:
	say "The emergency stairs are unfinished concrete in stark contrast to the polished atmosphere everywhere else in the building. The stairs spiral ";
	if the player is not in stairsRoof and the player is not in stairsSSB:
		say "both ";
	if the player is not in the stairsRoof:
		say "upward ";
	if the player is not in stairsRoof and the player is not in stairsSSB:
		say "and ";
	if the player is not in stairsSSB:
		say "downward ";
	say "from here"

The Stairwell is a region. StairsGround, StairsBasement, StairsSB, StairsSSB, StairsInterns, StairsEngineers, StairsManagers, StairsInfirmary, StairsProcessing, StairsPackaging, StairsRoof are staircase rooms in the Stairwell. The Stairwell is in HQ.	

The concrete is a backdrop in the Stairwell. The description of the concrete is "Monotonous light grey concrete." Understand "wall" or "walls" or "floor" or "floors" or "ceiling" or "cement" as the concrete.

The stairs is a backdrop in the Stairwell. The description of the stairs is "Broad flights of stairs run vertically through the entire building." Understand "stair" as the stairs. 

Instead of putting something (called the item) on the stairs:
	try dropping the item.

Section 24 - Stairs -Ground
		
The groundDoor is a white door. It is north of the Lobby and south of the StairsGround.  The printed name of the groundDoor is "white [shortDoorToThe] [if the location is the lobby][shortEmergencyStairs][otherwise]lobby[end if]". Understand "white" or "door" or "lobby" or "emergency" or "stairs" as the groundDoor.

After going north from the lobby for the first time:
	bestow "Snooping Around";
	try looking.

The printed name of the StairsGround is "Emergency Stairs: Ground Level". The possible exits of the StairsGround is "To the south there is a white door labeled [quotation mark]Lobby[quotation mark]."

Section 25 - Stairs - Basement

The basementDoor is a green door. It is north of Legal Department and south of the StairsBasement. The printed name of the basementDoor is "green [shortDoorToThe] [if the location is Legal Department][shortEmergencyStairs][otherwise]Legal Department[end if]". Understand "green" or "door" or "legal" or "emergency" or "stairs" or "basement" as the basementDoor.

The StairsBasement is below StairsGround. The printed name of StairsBasement is "Emergency Stairs: Basement Level". The possible exits of StairsBasement is "To the south there is a green door labeled [quotation mark]Legal Department[quotation mark]."

Section 26 - Stairs - Sub-Basement

The StairsSB is below StairsBasement. The printed name of StairsSB is "Emergency Stairs: Sub-Basement Level". The possible exits of StairsSB is "To the south there is a [subBasementDoor]."

The subBasementDoor is a blue door. It is north of the Rick Astley Shrine and south of the StairsSB.  The printed name of the subBasementDoor is "[printedSubBasementDoor]". Understand "blue" or "door" or "rick" or "astley" or "shrine" or "emergency" or "stairs" or "subbasement" as the subBasementDoor.

To say printedSubBasementDoor:
	say "blue [shortDoorToThe] ";
	if the location is the Rick Astley Shrine:
		say shortEmergencyStairs;
	otherwise:
		if the Rick Astley Shrine is visited:
			say "Rick Astley Shrine";
		otherwise:
			say "blue area"
			

Section 27 - Stairs - Sub-Sub-Basement

	
The StairsSSB is below StairsSB. The printed name of StairsSSB is "Emergency Stairs: Sub-Sub-Basement Level". The possible exits of StairsSSB is "To the south there is a red door with no label." 

The subSubBasementDoor is a red door. It is north of the Make Over Suite and south of the StairsSSB.

The printed name of the subSubbasementDoor is "red [shortDoorToThe] [if the location is Make Over Suite][shortEmergencyStairs][otherwise]red corridor[end if]". Understand "red" or "door" or "legal" or "emergency" or "stairs" or "basement" or "subsubbasement" as the subSubBasementDoor.

Section 28 - Stairs - Interns

The internsDoor is a black door. It is south of the StairsInterns. The printed name of the internsDoor is "black [shortDoorToThe] intern offices". Understand "black" or "door" or "intern" or "interns" or "emergency" or "stairs" as the internsDoor. The internsDoor is north of Interns. The internsDoor is south of StairsInterns.

The StairsInterns is above StairsGround. The printed name of StairsInterns is "Emergency Stairs: Level 1". The possible exits of StairsInterns is "To the south there is a black door labeled [quotation mark]Interns[quotation mark]."

Section 29 - Stairs - Engineers

The engineersDoor is a black door. It is south of the StairsEngineers. The printed name of the engineersDoor is "black [shortDoorToThe] engineering offices". Understand "black" or "door" or "engineer" or "engineers" or "emergency" or "stairs" as the engineersDoor

The StairsEngineers is above StairsInterns. The printed name of StairsEngineers is "Emergency Stairs: Level 2". The possible exits of StairsEngineers are "To the south there is a black door labeled [quotation mark]Engineers[quotation mark]."

Section 30 - Stairs - Managers

The managersDoor is a black door. It is south of the StairsManagers. The printed name of the managersDoor is "black [shortDoorToThe] managerial offices". Understand "black" or "door" or "manager" or "managers" or "emergency" or "stairs" as the managersDoor

The StairsManagers is above StairsEngineers. The printed name of StairsManagers is "Emergency Stairs: Level 3". The possible exits of StairsManagers is "To the south there is a black door labeled [quotation mark]Managers[quotation mark]."

Section 31 - Stairs -  Infirmary

The StairsInfirmary is above StairsManagers. The printed name of StairsInfirmary is "Emergency Stairs: Level 4". The possible exits of StairsInfirmary is "To the south there is a pink door labeled [quotation mark]Infirmary[quotation mark]."

The infirmaryDoor is a pink door. It is south of the StairsInfirmary. The printed name of the infirmaryDoor is "pink [shortDoorToThe] infirmary". Understand "pink" or "door" or "infirmary" or "emergency" or "stairs" as the infirmaryDoor

Section 32 - Stairs -  Processing

The StairsProcessing is above StairsInfirmary. The printed name of StairsProcessing is "Emergency Stairs: Above Level 4". 

To say shortTwentyFlights:
	say "about twenty flights of stairs"
	
To say shortNoExits:
	say "without seeing any exits"

After going up from the StairsProcessing:
	say "You climb [shortTwentyFlights] [shortNoExits]";
	if the walkman is not worn:
		say " and [one of]notice a heavy, grinding noise punctuated by sounds of liquids sloshing and slurping[or]from the walls you hear the sound of industrial machinery -- maybe a tree mulcher[or]you hear maniacal laughter coming from deep within the building. Or maybe it just the plumbing[or]you notice the vibration of heavy machinery[stopping]";
		say ".";
	try looking.

	
After going up from the StairsPackaging:
	say "You climb [shortTwentyFlights] to the roof level";
	if the walkman is not worn:
		say ". [one of]A droning sound fills the air, like the throat-singing of Tibetan monks[or]It sounds like something is scraping against the inner wall[or]You footfalls echo in the empty stairwell[stopping]";
		say ".";
	try looking.

		
After going down from the StairsRoof:
	 say "You descend [shortTwentyFlights] [shortNoExits] and you ";
	if the walkman is not worn:
		say "[one of]hear the rumble of heavy motors straining against a load[or]think for a moment that you hear someone yelling for help -- but then it is gone[or]notice a repetitive thumping sound coming from the walls[or]think you might have heard something beyond the walls, but maybe not[stopping]";
		say ".";
	try looking.
	
After going down from the StairsPackaging:
	say "You descend [shortTwentyFlights] to the infirmary level";
	if the walkman is not worn:
		say ".[paragraph break][one of]Did you just hear someone yell the word, [quotation mark]professor[quotation mark]. Probably not. Best to keep going[or]From somewhere in the building, you hear the tinkle of breaking glass[or]Thunder rumbles in the distance. But wait, the weather was fine, wasn[apostrophe]t it? Must have been something else[or]You hear something slowly dripping nearby[stopping]";
		say ".";
	try looking.
		
Section 33 - Stairs -  Packaging
	
The StairsPackaging is above StairsProcessing. The printed name of StairsPackaging is "Emergency Stairs: Way The Hell Above Level 4". 

Instead of going a direction (called the way) when the player is in the StairsPackaging or the player is in the StairsProcessing:
	if the way is south:
		say "You can[apostrophe]t go that way because there is no door there -- just solid wall.";
	otherwise:
		continue the action.
		
section 34 - Stairs - Roof

The StairsRoof is above StairsPackaging. The printed name of StairsRoof is "Emergency Stairs: Roof Access". The possible exits of StairsRoof is "To the south there is a white door labeled [quotation mark]Roof Access[quotation mark]."

The roofDoor is a white door. It is south of StairsRoof and north of DeckN. The printed name of roofDoor is "[printedRoofDoor]". Understand "white" or "door" or "roof" or "access" or "observation" or "cafeteria" or "cafe" or "emergency" or "stairs" as the roofDoor.

To say printedRoofDoor:
	say "white [shortDoorToThe] ";
	if the location is DeckN:
		say shortEmergencyStairs;
	otherwise:
		if DeckN is visited:
			say "cafeteria and observation deck";
		otherwise:
			say "roof"
			
After going south from the stairsRoof for the first time:
	bestow "Made it to the top";
	try looking.      
	
Instead of going up when the player is in stairsRoof for the first time:
	say "You are at the top of the building; the stairs don[apostrophe]t go up any further.[paragraph break]";
	bestow "Everything Is Downhill From Here Out";
	try looking.
	
Instead of going up when the player is in stairsRoof:
	say "You are at the top of the building.";
	try looking.
	
Section 35 - Processing

Processing is a room. The description of Processing is "A vast, poorly lit space with high ceilings and purple walls. All around you, large cuts of meat are suspended from hooks, which slowly move along a track in the ceiling like shirts at the dry cleaner[apostrophe]s. The [elevatorDoorDesc]. "

The weaponized clipboard is a prop. The description of the weaponized clipboard is "A sturdy electronic clipboard with exceptionally sharp edges. A checklist is displayed on the clipboard." The clipboard is carried by Elon Musk.

The lab coat is worn by Elon Musk. The description of the lab coat is "A [if the vitality of Elon Musk is dead]bloodied and shredded[otherwise]starched and pressed white[end if] full length lab coat[if the goldenBadge is worn by Elon Musk]. A golden badge is clipped to the lapel[end if]."

The checklist is part of the weaponized clipboard. The description of the checklist is "[line break][fixed letter spacing]TTD:[paragraph break]
1. Develop perpetual battery for mobile phone - check[line break]
2. Drill hole through earth, set up maglev train - check[line break]
3. Invent way of melding real and virtual world - check[line break]
4. Recruit human subjects to fuel project - check[line break]
5. Take Over The World!!!! - pending".

The goldenBadge is a privately-named prop. The goldenBadge is worn by Elon Musk. The description of the goldenBadge is "It has the same overall design as your badge, but no photo or name. It just says [quotation mark]CEO[quotation mark]." The goldenBadge is worn by Elon Musk. The printed name of the goldenBadge is "golden badge". Understand "golden" or "badge" as the goldenBadge.

Instead of unclipping the goldenBadge:
	if the player wears the goldenBadge:
		try taking off the goldenBadge;
	otherwise:
		try taking the goldenBadge.

Does the player mean the goldenBadge doing something with the goldenBadge:
	it is likely.

Instead of searching the lab coat:
	if the goldenBadge is worn by Elon Musk and the vitality of Elon Musk is dead:
		say "You notice the golden badge clipped to the lab coat[apostrophe]s lapel and pluck it off the coat. Pinning it to your formal wear, you toss aside your old badge.";
		goldify badge;
	otherwise:
		continue the action.
		
Instead of searching Elon Musk:
	if Exploring The Tower has ended:
		if the vitality of Elon Musk is dead:
			try searching the lab coat;
		otherwise:
			say "You cannot get inside his guard to do so.";
	otherwise:
		say "Elon Musk tsk-tsks the attempt."
		
Instead of taking the clipboard:
	if the vitality of Elon Musk is dead:
		continue the action;
	otherwise:
		say "Elon [one of]twists it away[or]slices at your hand[or]withdraws its from your reach[or]evades your grasp[in random order]."
		
Instead of taking the goldenBadge:
	if the goldenBadge is worn by Elon Musk:
		if the vitality of Elon Musk is not dead:
			say "[quotation mark]Mine![quotation mark] he says and [one of]wheels out of the way[or]parries your attempt[or]dives to the side[or]deflects your attempt[or]turns to the side quickly[or]jumps out of range[in random order].";
		otherwise:
			say "You pluck the badge off the corpse without the slightest hesitation, and toss away your old one.[paragraph break]";
			bestow "Hardened By Experience";
			goldify badge;
	otherwise:
		say "You take the badge and pin it on yourself in place of the old badge, which you discard.";
		goldify badge.
		
Instead of taking Elon Musk when the vitality of Elon Musk is dead:
	say "In a somewhat macabre turn of events, you grab ahold of the bodily remains of Elon Musk and start dragging the corpse around.";
	now the player carries Elon Musk.
	
Instead of dropping Elon Musk when the vitality of Elon Musk is dead for the first time:
	say "You drop the corpse.[paragraph break]";
	bestow "Requiescat In Pace".
	
Instead of dropping Elon Musk when the vitality of Elon Musk is dead:
	say "Thud."
	
Instead of eating Elon Musk when the vitality of Elon Musk is dead for the first time:
	say "You like pogoChum as next as the next person, but there is something about Elon Musk that leaves your stomach unsettled.[paragraph break]";
	bestow "Picky Eater".
	
Instead of eating Elon Musk when the vitality of Elon Musk is dead:
	say "No, he has to age a while before he will be tender enough."
		
Instead of taking or wearing the lab coat when the vitality of Elon Musk is dead:
	if Elon Musk wears the lab coat:
		say "You slip the lab coat off of Musk[apostrophe]s inanimate frame and try it on for size[if Elon Musk wears the goldenBadge]. As you do so, the golden badge that was clipped to the lab coat falls to the floor[end if].";
		now the player wears the lab coat;
		if Elon Musk wears the goldenBadge:
			now the goldenBadge is in the location of the player;
	otherwise:
		continue the action.

To goldify badge:
	now the badge is in the void;
	now securityColor of the badge is gold;
	now the player wears the goldenBadge.
		
Instead of taking off the goldenBadge:
	try dropping the goldenBadge.
		
Instead of dropping the goldenBadge for the first time:
	say "[noDropGolden].[paragraph break]";
	bestow "My Precious".
	
Instead of dropping the goldenBadge:
	say "[noDropGolden]."
	
To say noDropGolden:
	say "No, you have literally killed for it. You are now its rightful owner"
	
The hanging meat is scenery in Processing. The description of the hanging meat is "Large hunks of raw meat." Understand "rib" or "ribs" or "arm" or "arms" or "leg" or "legs" or "side" or "sides" or "rump" or "rumps" or "cutlet" or "cutlets" or "brisket" or "briskets" or "torso" or "torsos" or "back" or "backs" or "meats" or "long pig" or "human" or "man" or "rancid" or "raw" or "bloody" or "flesh" or "manflesh" as the hanging meat.
	
Does the player mean doing something with the hanging meat:
	it is likely.

Instead of doing something other than examining or eating with the hanging meat for the first time:
	say "You do know what that meat is, right?[paragraph break]";
	bestow "The Long Pig Award For Research Excellence".
	
Instead of doing something other than examining or eating with the hanging meat:
	say "You do not want to come anywhere near the meat if you can avoid it. The idea is revolting."
	
Instead of eating the meat for the first time:
	say "Tastes just like pogoChum.[paragraph break]";
	bestow "PogoChum is People".
	
Instead of eating the meat:
	say "You are not sure your stomach would handle that just now."
	
To transform the processing area:
	if Elon Musk is in Processing:
		say "Musk is clearly done for, but gathers his energy and prepares to speak for one last time.[paragraph break]Fearing a rather drawn out soliloquy, you kick him in the head, putting an end to all that nonsense.[paragraph break][bold type]** YOU HAVE WON… [roman type][paragraph break]Oh wait, no not quite. You[apostrophe]re still going. There must be a bit more to this.[paragraph break]";
		bestow "Still ticking”;
		if the defenderPogoman is in Processing:
			say "Your [type of the defenderPogoman] flees the crime scene.";
		now the clipboard is in Processing;
		now the defenderPogoman is in the void.
		
Before pushing the call button when Exploring The Tower has ended:
	if the player wears the goldenBadge:
		continue the action;
	otherwise:
		say "You receive a mild shock from the elevator, which beeps at you insistently and refuses to open[if the vitality of Musk is not dead].[paragraph break]Musk laughs at you derisively[end if].";
		stop the action.
	
Instead of touching the call button:
	try pushing the call button.
	
Instead of pushing or touching a lift button (called the poked item) when the plusQueDenouement is happening:
	if the poked item is the processingButton:
		say "The button does not light.";
		stop the action;
	otherwise:
		say "The [poked item] lights up, the elevator doors close, and the elevator changes floors more quickly that you would have believed possible.";
		say line break;
	if the poked item is:
		-- cafeteriaButton:
			catsInSpace;
		-- packagingButton:
			detroitEnding;
		-- infirmaryButton:
			commanderEnding;
		-- managersButton:
			ceoEnding;
		-- engineersButton:
			engineersEnding;
		-- internsButton:
			internsEnding;
		-- lobbyButton:
			lobbyEnding;
		-- legalButton:
			now the selected of legalEnding is true.
		

Section 36 - Meat Hooks

The meat hooks are scenery in Processing. The description of the meat hooks is "Heavy, jointed (and no doubt sharp) cast iron hooks that hang from a track along the ceiling." The meat hooks are plural-named. Understand "iron" or "hook" or "track" or "ceiling" as the meat hooks. The meat hooks have a truth state called isDangling. The isDangling of the meat hooks is false. The meat hooks have a number called turnsDangling. The turnsDangling of the meat hooks is 0.

The printed name of Processing is "Processing[if the isDangling of the meat hooks is true] (Dangling From A Meat Hook)[end if]".

Instead of jumping:
	try taking the meat hooks.
	
Instead of going down when the player is in Processing and the isDangling of the meat hooks is true:
	now  the isDangling of the meat hooks is false;
	say "You drop down from the meat hook."

Instead of taking or climbing or clipping or pulling or touching or swinging the meat hooks:
	let P be a pogotype;
	if the defenderPogoman is in Processing:
		let P be the type of defenderPogoman;
	let PP be "[P]" in title case;
	say "You jump up and grab one of the meat hooks, which is traveling along the ceiling.[paragraph break]";
	if the vitality of Elon Musk is less than dead:
		say "As you ride along between the slabs of questionable meat, Musk[if the defenderPogoman is in processing] and your [PP][end if] run[if the defenderPogoman is not in processing]s[end if] along beneath you, keeping pace.";
	now the isDangling of the meat hooks is true.
	
Every turn when the isDangling of the meat hooks is true and the healthiness of the player is not dead:
	say "The meat hooks crank along and you ";
	if the turnsDangling of meat hooks is:
		-- 0:
			say "can[apostrophe]t quite see where they are going, but are glad to be along for the ride. As long as you keep your grip on the meat hooks, there is a chance that you can ride them out of here.";
		-- 1:
			say "see a point towards the other side of the processing facility where the meat hooks take a sharp turn upwards.";
		-- 2:
			say "are not too far away from the point where the meat hook track runs upwards, through a hole in the ceiling.";
		-- 3: 
			say "are nearly to the point where the meat hooks ride upward sharply through a hole in the ceiling that you think is large enough to fit through[if the vitality of Elon Musk is less than dead]. If you can hang on, you are pretty sure that Musk will not be able to follow[end if].";
		-- 4:
			hookEnding;
	increase the turnsDangling of the meat hooks by one.

Section 37 - Packaging

Packaging is a room. 

Section 38 - Interns

Interns is a room. 

To say fromElevator:
	say "Looking out from the elevator, you can see ".

internsProxy are a workerProxy. internsProxy are in the void. The description of a internsProxy is "[fromElevator][entry 1 of the WPLIST of internsProxy]." Understand "intern" or "interns" or "employee" or "employees" or "worker" or "workers" as the internsProxy. The WPLIST of internsProxy is {"a roiling mass of interns playing three-dimensional twister to the accompaniment of a driving disco beat", "interns running around in leotards and dancing in a stream of bubbles"}. The printed name of the internsProxy is "interns".

Section 39 - Engineers

Engineers is a room. 

engineersProxy are a workerProxy. engineersProxy are in the void. The description of a engineersProxy is "[fromElevator][entry 1 of the WPLIST of engineersProxy]." Understand "engineer" or "engineers" or "employee" or "employees" or "worker" or "workers" as the engineersProxy. The WPLIST of engineersProxy is  {"row after row of casually dressed employees behind standing desks. Each has their hands straight out, palm pressed up against a pair of large flat screen monitors acrawl with psychedelic patterns and text", "bolts of lightning ricocheting around the floor, while the engineers hide under their desks"}. The printed name of the engineersProxy is "engineers".

Section 40 - Managers

Managers is a room.

managersProxy are a workerProxy. managersProxy are in the void. The description of a managersProxy is "[fromElevator][entry 1 of the WPLIST of managersProxy]." Understand "manager" or "managers" or "employee" or "employees" or "worker" or "workers" as the managersProxy. The WPLIST of managersProxy is  {"the managers processing in circles with lit candles", "shadowy figures serving hors d'oeuvres to the managers, who are dressed as french maids"}. The printed name of the managersProxy is "managers".

Instead of doing something other than examining with a workerProxy:
	say "You would have to exit the elevator here to do that."


Section 41 - Deck

The Deck Area is a region. DeckN, DeckE, DeckS, and DeckW are deck rooms in the Deck Area. The Deck Area is in HQ.

The railing is a backdrop in the Deck Area. Understand "rail" as the railing when the player is in the Deck Area. The description of the railing is "A waist-high metal railing that runs around the observation deck[if the player is in DeckS] except here, on the southern side of the tower, where it is replaced by a mere chain[otherwise], preventing accidental falls[end if][if the chain is not clipped]. Shockingly, the chain has been unclipped[end if]."

The decking is a backdrop in the Deck Area. The description of the decking is "A webbed metal platform around the top floor of the Nyantech Tower, up about fifty stories. The deck has an impressive view of the town." Understand "deck" as the decking.

The view is a backdrop in the Deck Area. The description of the view is "From up here, you enjoy a panoramic vista encompassing the entire town." Understand "town" or "village" or "city" or "below" or "people" or "street" or "streets" as the view.

Instead of doing something other than examining with the view:
	say "Everything in view beyond the deck itself is too far off."

Instead of putting something (called the item) on the decking:
	try dropping the item.
	
The cafeteria windows are a backdrop in the Deck Area. The description of the cafeteria windows is "Through the tinted windows of the top floor of the Nyantech tower, you can see both visitors and employees eating in the cafeteria." Understand "window" as the cafeteria windows.

Instead of opening or closing or pushing or pulling or turning the cafeteria windows:
	try entering the cafeteria windows.

Instead of searching the cafeteria windows:
	try examining the cafeteria windows.
	
Does the player mean examining the cafeteria windows:
	it is likely.
	
Instead of entering the cafeteria windows for the first time:
	say "They are hermetically sealed.[paragraph break]";	
	bestow "Those Hermits Know Their Business".
	
Instead of entering the cafeteria windows:
	say "They are sealed against the weather."
	
Instead of attacking the cafeteria windows for the first time:
	say "You tap on the windows, but no one seems to notice you.[paragraph break]";
	bestow "Probably Just A Bird".
	
Instead of attacking the cafeteria windows:
	say "The windows are made of the same impregnable glass as the cell phones themselves; they are unaffected."
	
Instead of rubbing the cafeteria windows for the first time:
	say "They have people for that.[paragraph break]Union people.[paragraph break]People who get upset if other people start doing their job.[paragraph break]If you know what I mean.[paragraph break]";
	bestow "Union Scab".
	
Instead of rubbing the cafeteria windows:
	say "They looks somewhat worse after your efforts."
	
Instead of climbing the cafeteria windows:
	say "They are too slick."

The chain is a chainItem in DeckS. Understand "chain" or "clip" as the chain. The description of the chain is "A chain terminating in a large spring-loaded clip that [if the chain is clipped]attaches to[otherwise]hangs free from[end if] the railing."

Instead of taking off the chain:
	try unclipping the chain.
	
Instead of climbing the chain:
	if the chain is clipped:
		say "It would be a lot easier to unclip it and";
	otherwise:
		say "No need. The chain is already clipped. If you really want to, you can";
	say " just go in that direction or jump."
	
Instead of attacking the chain for the first time:
	say "Surely, you can find a better way.[paragraph break]";
	bestow "HULK SMASH CHAIN!!!!!".
	
Instead of attacking the chain:
	say "You about just unclipping it?"

Instead of going south when the player is in DeckS:
	try jumping.

The printed name of DeckN is "Observation Deck, Northern View".  

DeckW is southwest of DeckN. The printed name of DeckW is "Observation Deck, Western View". 

DeckS is southeast of DeckW. The printed name of DeckS is "Observation Deck, Southern View". 

DeckE is northeast of DeckS and southeast of DeckN. The printed name of DeckE is "Observation Deck, Eastern View".

To say heightDescription:
	let P be a room;
	let L be a list of quadrooms;
	let M be a list of text;
	let T be text;
	if the location is Unfathomable Orb:
		let N be a random number from 1 to 4;		
		let P be entry N of {deckN, deckS, deckE, deckW};
	otherwise:
		let P be the location of the player;			
	if P is:
		-- deckN:
			let L be the list of nord quadrooms;
		-- deckS:
			let L be the list of sud quadrooms;
		-- deckE:
			let L be the list of est quadrooms;
		-- deckW:
			let L be the list of ouest quadrooms;
	sort L in random order;
	let R be a random number from 3 to 5;
	repeat with N running from 1 to R:
		let T be the title of entry N of L in title case;
		if  T is "":
			let T be the printed name of entry N of L in title case;
		add T to M;
	say M.
		
To say deckDescription:
	say "From your godlike perspective, you pick out a few recognizable locations below: ";
	say heightDescription;
	say ". [run paragraph on]";
	if the location is DeckS:
		if the chain is clipped:
			say "The safety rail that runs around the observation deck is replaced here by a heavy chain that clips to the railing -- you assume that it is for maintenance and shudder as you contemplate how dangerous it would be to remove the chain.[paragraph break]";
		otherwise:
			say "There is a gap in the safety rail here, and the chain that is normally stretched across the gap has been unfastened; there is nothing between you and a plunge off the platform -- it is enough to give you vertigo.[paragraph break]";
	say "[if onHoldFlag of the CAT Control is false]At precisely one minute intervals, the giant Nyantech Cat flies by, just below the level of the observation deck, and continues to circle the building[otherwise]The Nyantech Cat, suspended by its support boom from the side of the building, remains stationary directly below you[end if]. Behind you, through floor to ceiling windows, you can see folks eating and drinking in the roof-top cafeteria"
	
To say deckExits:	
	say "The deck continues around to the ";
	let O be a list of directions;
	repeat with way running through directions:
		let place be the room way from the location;
		if place is a room in the deck area, add the way to O;
	say "[the O]";
	if the location is:
		-- deckN:
			say ". The door to the emergency stairs is to the north";
		-- deckS: 
			say ". The roof-top cafeteria is to the north".

[When the player is at height, these remote locations -- and everything in them (unless associated grammar is location-specific) -- are in scope, so if the player sees the a room title or just knows that something is located there, the player can try to see it. Most actions at that distance are blocked.]

After deciding the scope of a player while the player is in the Deck Area:
	let L be a list of quadrooms;
	if the location of the player is:
		-- DeckN: 
			let L be the list of nord quadrooms;
		-- DeckS: 
			let L be the list of sud quadrooms;
		-- DeckE: 
			let L be the list of est quadrooms;
		-- DeckW: 
			let L be the list of ouest quadrooms;
	repeat with R running through L:
		place R in scope.
	
Instead of doing something with a quadroom (called the QTH) when the player is not in the village:
	if the current action is examining:
		say "[The QTH] [are] too far off to make out much detail.";
	otherwise:
		if the current action is taking:
			say "[The QTH] [are] not something you can take.";
		otherwise:
			say "[The QTH] [are] too far away."
			
Before doing something with something (called the item) when the item is in a quadroom and the player is not in the village:
	say "Jeez... It[apostrophe]s amazing that you can even see [the item] from up here.";
	the rule fails.

Unclipping is an action applying to one thing. Understand "unclip  [something]"  or "unfasten [something]"  or "detach [something]" or "disconnect [something]" as unclipping.

Check unclipping:
	if the noun is not the chain:
		say "It isn[apostrophe]t entirely clear how to do so." instead;
	otherwise:
		if the noun is unclipped:
			say "The [noun] is already unclipped." instead.
		
Carry out unclipping:
	now the noun is unclipped.
			
Report unclipping:
		say "You unclip the [noun].";
	
Instead of opening the chain:
	try unclipping the chain.
	
Clipping is an action applying to one thing. Understand "Clip  [something]"  or "fasten [something]"  or "attach [something]" or "connect [something]"  or "reattach [something]" or "reclip [something]" as clipping.

Check clipping:
	if the noun is not the chain:
		say "It isn[apostrophe]t entirely clear how to do so." instead;
	otherwise:
		if the noun is clipped:
			say "The [noun] is already clipped." instead.
			
Carry out clipping:
	now the noun is clipped.
		
Report clipping:
	say "You reclip the [noun]."
	
After unclipping the chain:
	say "Glancing around quickly to be sure you[apostrophe]re not observed, you unclip the chain. Standing so close to the perilous drop makes your knees weak and you hang on even tighter to the railing at the sides of the gap."
	
Instead of inserting the chain into the railing:
	try clipping the chain.

Instead of closing the chain:
	try clipping the chain.
	
To say cantJump:
	say "You are unable to climb over the railing here."
	
Instead of jumping when the player is in the Deck Area:
	if the player is in DeckS:
		if the chain is clipped:
			say "Fortunately, the chain prevents you from taking any such foolish action.";
		otherwise:
			if onHoldFlag of the CAT Control is false:
				say "The idea seems crazy, but you prepare to the jump. You carefully gauge the timing of the cat[apostrophe]s rotation around the building while you work up the nerve, all the while being sure not to be observed. However, this time, as the cat approaches, you draw back from the edge having realized that the cat is rotating around the building too quickly for you to reliably nail the landing. Still quivering with fear, you replace the chain, which is there for a good reason.";
				now the chain is clipped;
				try looking;
			otherwise:
				if entry 1 in HEADING is "S":
					say "The things you do for this game… You hold on tightly to your phone and step over the edge.[paragraph break]Arms and legs flailing, you fall without the slightest hint of dignity. Your screams are carried away by the stiff breeze.  Despite any skill whatsoever at jumping off buildings, you land squarely in the center of the cat[apostrophe]s red beret, which is just as warm and fluffy as it looks.";
					teleport the player to the Cat's Beret;
				otherwise:
					say "The Cat is no longer revolving around the building, but it is not parked right below you. When you factor certain death into your decision making process, it occurs to you that it would be better to make sure that the Cat is dead-center below the southern side of the deck (and therefore, directly beneath you) before hopping off.";
	otherwise:
		say cantJump
		
Instead of climbing the railing when the player is in the deck area:
	say cantJump.	
	
Instead of going down from deckS:
	try jumping.

Section 42 - Cat Region


The Cat Area is a region. The Cat's Beret, Maintenance Hatch, Captain's Cabin, CatHead, Catwalk, Gantry Chamber, and Poop Deck are rooms in the Cat Area. The Cat Area is in HQ.

Section 43 - Cat Navigation

[Based on Recipe 42: Example Fore]

A direction can be nautical, earthbound, or QTHagnostic. A direction is usually earthbound. 

Starboard, port, fore, aft are nautical.

Up, down, inside, and outside are QTHagnostic.

The starboard is a direction. The starboard has opposite port. 

The port is a direction. The port has opposite starboard. 

The fore is a direction. The fore has opposite aft. Understand "f" or "forward" or "foreward" or "head" as fore when the location is in the Cat Area. 

The aft is a direction. The aft has opposite fore. Understand "a" or "aftward" or "abaft" or "backwards" or "back" or "rear" or "rearwards" or "butt" as aft when the location is in the Cat Area.

Does the player mean going a nautical direction when the location is in the Cat Area: it is very likely.

Index map with fore mapped as east. Index map with aft mapped as west. Index map with port mapped as south. Index map with starboard mapped as north.

Before going a nautical direction when the player is not in the Cat Area, say "[One of]Okay, matey. Could you rephrase that for us landlubbers?[or]Those directions only make sense on a vessel of some sort.[or]So, that's what? North? South? Throw me a bone.[or]Compass directions please, unless you're in a vessel.[stopping]" instead.

Before going an earthbound direction when the player is in the Cat Area, say "Compass directions make no sense  when we're talking about a giant mechanical cat that rotates around an office building -- granted, not much would make sense in that context. In any event, try going fore (f) or aft (a) instead." instead.

To say noLateral:
	say "Aye, matey, [one of]plus one on seamanship skills[or]you[apostrophe]ve got the nautical lingo down[or]you make an old sailor proud[or]that[apostrophe]s the style[in random order], but there's nowhere to go right now in that direction, eh?"
	
Instead of going starboard, say noLateral.

Instead of going port, say noLateral.

Section 44 - Cat Overhead Proxies

[Backgrounds visible from above, e.g., from the Deck or upper parts of the cat exterior. If the cat is rotating around the building, assume it's visible from any deck position. However, if it's stopped, it is visible +/- 45 degrees]

To decide whether the cat is visible from overhead:
	if onHoldFlag of the CAT Control is true, yes;
	if the player is in DeckS and entry 1 in HEADING is listed in {"SE", "S", "SW"}, yes;
	if the player is in DeckN and entry 1 in HEADING is listed in {"NW", "N", "NE"}, yes;
	if the player is in DeckW and entry 1 in HEADING is listed in {"SW", "W", "NW"}, yes;
	if the player is in DeckE and entry 1 in HEADING is listed in {"NE", "E", "SE"}, yes;
	decide no.
	
To visualize (overheadDescription - some text):
	if player is in the Deck Area:
		if the cat is visible from overhead:
			say "[overheadDescription]";
		otherwise: 
			say "You can[apostrophe]t get a good look at the cat from your current position due to its rotation around the building";
	otherwise:
		say "[overheadDescription]".
	
[in deference to the Cat in the Hat song, despite its mangling of the Russian. I can't vouch for the authenticity of the Eskimo] 
The catProxyOverhead is a catTopDrop. The catProxyOverhead is in Cat's Beret, Maintenance Hatch, CatWalk, Poop Deck, and Deck Area. The printed name of the catProxyOverhead is "Nyantech Cat". Understand "cat" or "gato" or "katze" or "gwunka" or "nyantech" or "kot" or "koshka" or "kat" or "animatronic" or "ship" or  "vessel" as the catProxyOverhead. The description of the catProxyOverhead is "[describeCatPO].".

To say describeCatPO:
	visualize "[if the onHoldFlag of the CAT Control is true]The giant Nyantech cat is suspended from the building just below your position[otherwise]As the giant Nyantech Cat circles past your vantage point, you are able to pick out more details than you could from the ground. The Cat is suspended from a heavy metal boom, like the cross member of a construction crane. The boom sweeps around the building about once a minute and must be immensely strong to support the weight of the cat, a metal structure about forty feet long and ten feet wide[end if].[paragraph break]As depicted in all of Nyantech[apostrophe]s online material, the cat wears its trademark red beret, which at this close range looks more like an immense bean bag. There[apostrophe]s an access hatch just above the boom, presumably for maintenance. The cat[apostrophe]s glowing red eyes must be five feet diameter, and although you are twenty feet above them, you can feel the heat evolving off them. A trail of sparking and popping glitter behind the cat seems to come out of a port near its tail"
	
Instead of examining the catProxyOverhead when the player is in a cat-top room:
	say "You are standing on top of it."
	
The eyesProxyOverhead is a catTopDrop. The eyesProxyOverhead is in the Deck Area. The eyesProxyOverhead is plural-named. The printed name of the eyesProxyOverhead is "eyes". Understand "red" or "glowing" or "eye" or "eyes" as the eyesProxyOverhead. The description of the eyesProxyOverhead is "[describeEyesPO]". 

To say describeEyesPO:
	visualize "The cat's deep red eyes seem to glow as they search the landscape"

The beretProxyOverhead is a catTopDrop. The beretProxyOverhead is in the Maintenance Hatch, Catwalk, Poop Deck and Deck Area. The printed name of the beretProxyOverhead is "beret". Understand "red" or "beret" or "hat" or "chapeau" or "hut" or "sombrero" or "bunka-kwunk" or "shapka" or "shlyapa" or "hoed" or "bean" or "bag" or "cushion" as the beretProxyOverhead. The description of the beretProxyOverhead is "[describeBeretPO]".

To say describeBeretPO:
	visualize "[beretText]"
	
To say beretText:
	say "From the ground, the fabric in the cat's beret looks like a felt, but from up here it looks more like heavy canvas. It bellows slightly in the wind and looks like it is filled with something soft like foam rubber"
	
The hatchProxyOverhead is a catTopDrop. The hatchProxyOverhead is in the Cat's Beret, Poop Deck, Catwalk, and Deck Area. The printed name of the hatchProxyOverhead is "hatch". Understand "hatch" or "access" or "hatchway" or "bulkhead" or "maintenance" or "neck" as the hatchProxyOverhead. The description of the hatchProxyOverhead is "[describeHatchPO]".


To say describeHatchPO:
	visualize "[hatchText]."
	
To say hatchText:
	say  "The hatch resembles a bulkhead hatch on a submarine: a heavy door that would pull upwards. It is painted yellow, like the body of the cat, except its metal handle, which is chrome. The hatch is [if the hatchway is open]open[otherwise]sealed[end if]"

The catWalkProxyOverhead is a catTopDrop. The catWalkProxyOverhead is in Cat's Beret, Maintenance Hatch, and Poop Deck. The catWalkProxyOverhead is in the Deck Area. The printed name of catWalkProxyOverhead is "scaffold". Understand "scaffold" or "catwalk" or "poptart" as the catWalkProxyOverhead. The description of the catWalkProxyOverhead is "[describeCatwalkPO]".

To say describeCatwalkPO:
	visualize "[catWalkText]"
	
To say catWalkText:
	say "A narrow metal with a low railing -- a catwalk if you will -- runs along the spine of the cat. It [if the location is not the Catwalk]looks like it would be[otherwise]is[end if] wide enough to walk on comfortably if you ignore a more or less certain drop to certain death to either side.[paragraph break]From up here, you can tell that the giant pop-tart on the exterior side of the cat is actually made of hundreds of thousands of actual pop-tarts overlapped like roofing shingles. You imagine that you are just about above the lattice-work boom that extends from the building to support the cat about fifty stories above the ground"
	
The boomProxyOverhead is a catTopDrop. The boomProxyOverhead is in Cat's Beret, Maintenance Hatch, Catwalk, Poop Deck, and Deck Area. The printed name of boomProxyOverhead is "support boom". Understand "boom" or "support" or "arm" or "crane" or "gantry" or "grue" as the boomProxyOverhead. The description of the boomProxyOverhead is "[describeBoomPO]".

To say describeBoomPO:
	visualize "A heavy metal boom extends from the building to the cat and supports its as the cat rotates around the building. The boom is rectangular in cross-section, with side walls composed of metal tubing. The center of the boom is hollow the bottom is solid, so it looks like the boom may serve as maintenance access to the cat"

The poopProxyOverhead is a catTopDrop. The poopProxyOverhead is in Cat's Beret, Maintenance Hatch, Catwalk, and Deck Area. The printed name of poopProxyOverhead is "rear end of the cat". Understand "butt" or "rear" or "end" or "pipe" or "tail" or "exhaust" or "output" or "port" or "poop" or "tube" or "glitter" or "sparkles" as poopProxyOverhead. The description of the poopProxyOverhead is "[describePoopPO]".

To say describePoopPO:
	visualize "[poopText]."
	
To say poopText:
	say "It is hard to see the town through the spewing spray of sparks out of a tin pipe at the rear of the cat"

Before doing something other than examining with a catTopDrop (called the QTH):
	if the player is in the Deck Area:
		say "[The QTH] is too far below you.";
		the rule fails;
	otherwise:
		say "You would have to walk over to [the QTH].";
		the rule fails.

Section 45 - Cat View

Definition: A room is cat-top if it is the Cat's Beret or it is the Maintenance Hatch or it is The Catwalk or it is the Poop Deck.

After deciding the scope of the player while the player is in a cat-top room:
	repeat with R running through the list of sud quadrooms:
		place R in scope.
		
Instead of jumping in the Cat Area:
	if the location of the player is cat-top:
		say "You are afraid of plummeting to your death.";
	otherwise:
		say "You bang your head in the tight quarters."
		
The buildingProxy is a privately-named backdrop. The buildingProxy is in Cat's Beret, Maintenance Hatch, Catwalk, Gantry, and Poop Deck. 

The description of the buildingProxy is "The obsidian black skyscraper towers over the town. The mechanical Nyantech Cat is joined to the tower by an impressively strong support beam, which rides a geared track around the building. The top of the Cat is about twenty feet below the level of the building[apostrophe]s observation deck, which runs around the roof-top cafeteria."  Understand "tower" or "skyscraper" or "building" or "black" or "obsidan" or "office" or "headquarter" or "headquarters" or "HQ" or "nyantech" or "corporate" or "cafeteria" or "observation" or "deck" or "rail" or "gear" or "geared" or "track" as the buildingProxy.
		
Section 46 - Cat's Beret

The Cat's Beret is down from DeckS.  The description of the Cat's Beret is "From your snug but sure position atop the Nyantech Cat[apostrophe]s head, you can see all the way to the Infamous Tarpits on the south edge of town." 

The possible exits of the Cat's Beret are "The only way to go from here [one of](the only sane way to go, discounting a suicidal fall) [or][stopping]is towards the rear of the cat. The maintenance hatch is just aft of the beret, at the nape of the cat[apostrophe]s neck. Behind that, there is a narrow scaffold over the pop-tart section of the cat. The scaffold runs above the support boom that extends outward from the building. Finally, at the very rear of the cat, sparkles shoot from a short, metal exhaust tube."

Instead of going up when the location of the player is cat-top:
	say "The observation deck is way above you -- too far to reach, even by jumping[one of], although you are welcome to try[or][stopping].";
	try looking.
	
Instead of going fore when the player is in the Cat's Beret:
	say "Any more forward and you would fall off the front end of the Cat.";
	try looking.

	
Section 47 - Maintenance Hatch

Maintenance Hatch is aft of the Cat's Beret. The description of the maintenance hatch is "[hatchText]." The possible exits of the Maintenance Hatch are "You can go forward towards the cat's red beret, aft towards its tail, or go below decks through the hatch."

The hatchway is a door. It is down from the Maintenance Hatch. The description of the hatchway is "[hatchText]." The hatchway is closed. Understand "hatch" or "bulkhead" or "handle" as the hatchway.

Understand "lift [something]" as pulling when location of the player is the maintenance hatch.

To complain that (portal - a door) is already open:
	say "[The portal] is already open."
	
To complain that (portal - a door) is already closed:
	say "[The portal] is already closed." 

Instead of pulling the hatchway:
	if the player is in Maintenance Hatch:
		if the hatchway is open:
			complain that the hatchway is already open;
		otherwise:
			try opening the hatchway;
	otherwise:
		if the hatchway is closed:
			complain that the hatchway is already closed;
		otherwise:
			try opening the hatchway.
			
Instead of pushing the hatchway:
	if the player is in the Captain's Cabin:
		if the hatchway is open:
			complain that the hatchway is already open;
		otherwise:
			try opening the hatchway;
	otherwise:
		if the hatchway is closed:
			complain that the hatchway is already closed;
		otherwise:
			try closing the hatchway.
			
Instead of searching the hatchway:
	if hatchway is open:
		if the location of the player is Maintenance Hatch:			
			say "Below the hatch is a small, dimly lit room with a desk and hammock.";
		otherwise:
			say "Some light streams in from above the hatch, but otherwise you can[apostrophe]t see anything.";
	otherwise:
		say "The hatchway is closed."
			
Section 48 - Catwalk

Catwalk is aft of the Maintenance Hatch. The description of the Catwalk is "[catWalkText]." The possible exits of the catwalk are "You choices about ways to go from here are pretty dichotomous: towards the cat[apostrophe]s head or towards its butt."

Instead of going down when the player is in the Catwalk:
	say "[one of]Going down isn[apostrophe]t really an option. On the side of the cat facing towards the building, the smooth metal skin slopes towards the support boom, but between the wind and slight swaying of the cat hundreds of feet above the pavement, you don[apostrophe]t like the odds of landing on the boom versus plunging over the side. As for the pop-tart side of the cat, there would be nothing to grab onto, aside from a tasty snack on your way to the pavement[or]No, too dangerous[stopping]."
	
The pop-tart shingles are a  plural-named backdrop in catWalk. The description of pop-tart shingles is "Pop-tarts as an actual construction material. Genius." Understand "shingle" or "pop-tarts" or "poptart" or "poptarts" or "giant" as the pop-tart shingles.

Instead of taking the pop-tart shingles for the first time:
	say "You stretch as far as you can, but you arms just aren[apostrophe]t long enough.[paragraph break]";
	bestow "Sadly Denied Weathered Pop-Tarts".
	
Instead of eating the pop-tart shingles for the first time:
	say "Just what do you imagine those pop-tarts would taste like after years of exposure to the elements... not to mention pigeons?[paragraph break]";
	bestow "Wow. Just wow."

Instead of doing something other than examining with the pop-tart shingles, say "They are tantalizingly out of reach."

Section 49 - Poop Deck

Poop Deck is aft of The Catwalk. The description of the Poop Deck is "[poopText]." The possible exits of the Poop Deck are "There[apostrophe]s no way to go but forward, away from the cat[apostrophe]s flaming rear end."

The tin pipe is scenery in Poop Deck. The description of the pipe is "An small metal exhaust tin pipe extends a few inches from the rear of the cat." Understand "tail" as the tin pipe.

Instead of putting the pop-tart on the tin pipe for the first time:
	say "You carefully place the mouth-watering pastry on the tail pipe and toast it to perfection. Never has a pop-tart been so perfectly and uniformly toasted.[paragraph break]As the delectable vapor wafts up, you cannot resist cramming the entire pop-tart into your mouth in one lustful gulp. It burns slightly going down, but it is the best thing you have ever eaten or could ever imagine eating.[paragraph break]";
	move the pop-tart to void;
	bestow "Pop-Tart Nirvana".
	
Instead of putting the pop-tart on the tin pipe:
	say "Hoping to repeat your earlier success with the pop-tart, you place it on the tin pipe, but the magical combination of heat, wind, and je ne sais quoi just isn[apostrophe]t there. The pop-tart carbonizes instantly on contact with the pipe and the black ashes blow away in the wind.";
	move the pop-tart to the void.

Instead of doing something other than examining with the pipe: 
	say "The tin pipe is red hot."
	
Instead of taking the tin pipe for the first time:
	say "Your fingers sizzle as the make contact with the hot tin pipe. You pull your hand back immediately. Well, let[apostrophe]s say, [italic type]most[roman type] of your hand.[paragraph break]";
	bestow "Kids, Don[apostrophe]t Try This".
	
The sparks are plural-named scenery in the Poop Deck. The description of the sparks is "A trail of sparks flies out behind the cat and is visible for miles around."

Instead of taking the sparks for the first time:
	say "You give up after nearly welding yourself to the cat.[paragraph break]";
	bestow "It Seemed Like A Good Idea At The Time".
	
Instead of doing something other than examining with the sparks:
	say "They are too hot to handle."
	
Instead of going aft when the player is in the Poop Deck:
	say "Any further aft and you would join the sparkles in flying off the back end of the Cat and plunging earthward.";
	try looking.
	
Section 50 - Captain's Cabin
	
The Captain's Cabin is down from the hatchway. The description of the Captain's Cabin is 
"Inside the cat, the room immediately under the hatch is strangely nautical in decor. A small porthole casts some light on a compact wooden writing desk, which is set into the curvature of the wall. Behind the desk, fixed rigidly to the plate metal deck is a chair with the word [quotation mark]Captain[quotation mark] across the back.  On the other side of the cabin, a hammock hangs from the wall."  The possible exits of the Captain's Cabin are "[if the cockpit door is open]Diffuse red light pours out of a narrow doorway between this cabin and the forward-most section of the cat. [end if]A door marked [quotation mark]gangway[quotation mark] leads towards the rear of the cat. The only other exits from here are upwards, through the hatchway, and forward to the cockpit[one of], or more colloquially, the head of the cat[or][stopping]." 

The deck plating is scenery. The deck plating is in Captain's Cabin. The description of the deck plating is "A gunmetal deck." Understand "deck" or "plate" or "metal" as the deck plating. 

Instead of entering the deck:
	say "Captains prefer to stand."

A small porthole is scenery in the Captain's Cabin. The description of the small porthole is "A round porthole framed in brass and mounted flush with the wall." Understand "window" or "brass" as the porthole.

Instead of opening the small porthole:
	say "There are no hinges. It does not look like it is meant to open."
				
To say blurryPorthole:
	say "It is difficult to see much of the city through the thick, blurry window"

Instead of searching the small porthole for the first time:
	say "[blurryPorthole].[paragraph break]";
	bestow "Coke Bottle Glasses".
	
Instead of searching the small porthole:
	say "[blurryPorthole]."

The Captain's Chair is a enterable scenery supporter in the Captain's Cabin. The description of the Captain's Chair is "A sturdy mahogany chair that conveys a sense of command."

After entering the chair for the first time:
	say "Yeah, that feels pretty good.[paragraph break]";
	bestow "You have the conn"
	
The driftwood desk is a supporter in the Captain's Cabin. The description of the driftwood desk is "A small but functional desk made of smooth driftwood."

Instead of entering the desk for the first time:
	say "That[apostrophe]s contrary to nautical tradition.[paragraph break]";
	bestow "Landlubber".
	
Instead of entering the desk:
	say "You are not sure it is sturdy enough."
	
Instead of sleeping in the Captain's Cabin:
	try entering the hammock.

The logbook is a prop on the driftwood desk. The description of the logbook is "The front of the book is labeled [quotation mark]Nyantech Cat Captain[apostrophe]s Log[quotation mark] and is full of detailed handwritten entries." Understand "log" or "book" or "Nyantech Cat Captain's" or "Captain's" as the logbook.

The entries are part of the logbook. The description of the entries is "[one of]You kick back and relax for some light reading. The log starts off with some technical stuff and diagrams that you thumb through, then some description of various controls aboard the cat, sensors, gearing assemblies, autonomous thruster gimbals, and so on. The middle part of the log is filled with monotonous daily entries about rotation speed, oil pressure, and the like. Boring.[paragraph break]Ah, the last bit becomes more narrative. As you read along the precise block printing of an engineer breaks down into a flowing script and finally a fragmented shorthand and you realize that you are reading the ravings of a madman, or perhaps a visionary. Technological descriptions blend into diatribes about the potential of technology to augment or even steer evolution of individuals or human society taken large. The rantings interlace fantastic hope with dire predictions of a dystopian future.[paragraph break] As you snap the book shut, you aren[apostrophe]t sure what to make of it. While rambling and histrionic at points, you can[apostrophe]t find fault in any of the technical aspects of the logbook, and even the conclusions seem plausible or at least internally consistent, but only if you accept their outlandish premises[or]A logbook full of both technical material and the ravings of a mad genius[stopping].". Understand "handwriting" or "entry" as the entries.

Instead of opening the logbook:
	try examining the entries.

Instead of doing something other than examining with the entries:
	say "Do you mean to do that with the logbook?";
 
The hurricane lantern is a lightsource on the desk. Understand "lamp" as the hurricane lantern. 

Instead of burning the hurricane lantern:
	try switching on the hurricane lantern.

After switching on the hurricane lantern for the first time:
	say "The lantern lights immediately and shines brilliantly. Apparently, high efficiency LEDs have taken the place of the old wick mechanism.[paragraph break]";
	bestow "Et Lux Facta Est".

After taking the hurricane lantern for the first time:
	bestow "Adventurer: First Class".

The hammock is a fixed in place thing in the Captain's Cabin. The description of the hammock is "A ratty old string hammock."

Understand "climb into [something]" or "lie on [something]" or "lay on [something]" or "lie down on [something]" or "lay down on [something]" or "climb onto [something]" as entering.

Instead of entering the hammock for the first time:
	say "You clamber into the hammock, which looked more comfortable than it actually is and stand up again before it gets too painful.[paragraph break]";
	bestow "Sympathy For Gilligan".
	
Instead of entering the hammock:
	say "You flip around a few times and end up on the floor of the cabin."
	
Instead of putting something (called the item) on the hammock:
	say "[The item] falls through the shoddy knot work and you grab it before it hits the floor."
	
The gangway is a closed door. It is aft from the Captain's Cabin. The description of the gangway is "This door has a weather seal because the next section abaft is open to the elements."

Section 51 - Gantry Chamber

Gantry Chamber is aft from the gangway. The description of the Gantry Chamber is "This chamber is open only on the side of the cat facing the building, where the cat joins with a twenty-foot long crawlway in the middle of the boom that supports the cat. The tubular metal structure runs towards a gap in the building[apostrophe]s stonework and disappears at the far end into darkness."  The possible exits of Gantry Chamber are "From here, you can go outside towards the building (i.e., through the metal support boom) or forward towards the captain[apostrophe]s cabin."

Every turn when the player is in the Gantry Chamber:
	if a random chance of 1 in 5 succeeds:
		say "[one of]The boom sways in the wind[or]The wind howls by[or]Groaning metal sounds come from the direction of the boom[or]The support assembly creaks[or]The sounds of the city drift up from far below you[in random order]."
		
After going outside from the Gantry Chamber for the first time:
	say "You carefully crawl on all fours through the long boom, avoiding glances downward. Sure, it would be a great view of the city, but with the wind whipping through the metal webbing of the tube and the whole thing oscillating wildly, you move as quickly as you can to the other end. At last, you enter a room full of huge motors and gears.[paragraph break]";
	bestow "Don[apostrophe]t Look Down!";
	try looking.
	
After going outside from the Gantry Chamber:
	say "You make a beeline for the Gearing Assembly chamber at the other end.";
	try looking.
	
Section 52 - Cat's Head
	
A door called the cockpit door is fore from the Captain's Cabin. The description of the cockpit door is "A metal door with the word [quotation mark]cockpit[quotation mark] on it." 

CatHead is fore from the cockpit door. CatHead is privately-named. The printed name of CatHead is "interior of the Cat's Head". The title of CatHead is "Inside The Cat's Head". The description of CatHead is "Through the translucent glowing red eyes of the cat, each of which reaches from floor to ceiling in this compact chamber, you see the shimmering cityscape below. A fist-sized ruby floats in the air between them and spins slowly, irradiated by cones of red energy focused inward by the eyes." The possible exits of the CatHead are "The only way back is aft, towards the rest of the cat." 

The cat eye is scenery. The cat eye is in the CatHead. The description of the cat eye is "The glowing red eyes of the cat focus rippling waves of crimson energy towards the ruby." Understand "eyes" as the cat eye. 

Instead of climbing or taking or touching or rubbing or licking or tasting or pushing or pulling or turning or spinning the cat eye:
	say "The eyes of the cat are immensely hot, and you cannot closer to them than about an arm[apostrophe]s length away."
	
Instead of searching the cat eye:
	say "You have a creepy feeling that instead, the cat is the one who will be peering into your very soul."
	
The dangerous cones of crimson energy are plural-named scenery.  The dangerous cones of crimson energy are in the CatHead. The description of the dangerous cones of crimson energy is "The crimson cones of energy are a physical manifestation of the psychic energy collected from the entire village and focused down to a minute point at the center of the magnificent ruby." Understand "cone" as the dangerous cones of crimson energy.

Instead of eating or licking the cones:
	say "They are not that kind of cone. You must be thinking of Yummi Tummi Softserve."

Instead of doing something other than examining with the dangerous cones of crimson energy:
	say "The cones project right through you, as if you were no more substantial than a ghost."


After going fore from the Captain's Cabin for the first time:
	say "Bathed in a barrage of red light, your card turns red, with a white stripe (well, a pink stripe given the lighting, but based on how things have gone today, you[apostrophe]re guessing that it[apostrophe]s actually white).[paragraph break]";
	now the securityColor of the badge is red;
	bestow "Cat Power!";
	try looking.
	
The magnificent floating ruby is a prop in CatHead. The description of the magnificent floating ruby is "The blood-red stone is as large as your head, but you can barely look at it through the brilliant reflections off its many facets." Understand "facets" as the magnificent floating ruby. 

After examining the magnificent ruby for the first time:
	bestow "Sparkly!".

Instead of taking or touching or pulling or pushing or turning or spinning the magnificent floating ruby  for the first time:
	say "As your hand approaches the jewel, it feels like ants are crawling over your hand and forearm. The air around your hand starts to scintillate and the smell of hamburger fills the room. Drawing still closer to the precious jewel, in the bright light you can see only the bones of your hand as if the skin has become transparent.[paragraph break]That[apostrophe]s enough for you to decide against messing with the ruby.[paragraph break]";
	bestow "Holy Kryptonite, Batman!";
	bestow "Mixed Metaphor".
	
Instead of taking or touching or pulling or pushing or turning or spinning the magnificent floating ruby  for the second time:
	say "No way are you going to try to grab that glowing nugget of plutonium or whatever the hell it is.[paragraph break]";
	Bestow "Plutonium Adverse".
	
Instead of taking or touching or pulling or pushing or turning or spinning the magnificent floating ruby for the third time:
	say "Not a chance. It[apostrophe]s surely worth a fortune. But will it help you catch pogomen? Nope.[paragraph break]On the other hand, you sure do seem to be racking up a bunch of points from messing around with it.[paragraph break]";
	Bestow "Radiation Exposure Equals XP".
	
Instead of taking or touching or pulling or pushing or turning or spinning the magnificent floating ruby:
	say "Not today."

Chapter Musk Lair

Section 1 - MuskLair Region

The MuskLair is a region. Make Over Suite, Throne Room, and MuskTube Station are rooms in the MuskLair.

Section 2 - The Throne Room

Instead of entering the subSubBasementDoor:
	try going south.

After going south from the stairsSSB:
	say "As you walk past the red door, you are immediately overcome by a strong, earthy smell -- something animal, perhaps. Your next observation is the richness of the room[apostrophe]s elaborate decorations.[paragraph break]However, before you fully appreciate the fancy paintings and furniture, you are seized by multiple pairs of robotic arms suspended from a track in the ceiling. One lifts you, another removes your now well worn clothes. Gently but with firm intent, the arms flip you over, wash and blow dry your hair, perform a manicure, brush your teeth, and dress you in formal wear. All the while, the robotic assembly moves along its track.[paragraph break]Finally, the robot sets you down in a marble room, hands you a stemmed glass, uncorks a bottle of champagne, and pours your glass full of the bubbly liquid.";
	now Make Over Suite is visited; [serves as a flag that player has progressed this far]
	repeat with N running through the things carried by the player:
		if N is not safe from seizure:
			move N to the void;
	repeat with N running through the things worn by the player:
		move N to the void;
	now the player carries the glass of champagne;
	now the description of the player is "Well-coiffed and dressed to the nines[one of]. You clean up well[or][stopping].";
	now the player wears the formal wear;
	the dais reveals itself in DAIS_DELAY_DURATION turns from now;
	teleport the player to Throne Room.
	
The description of the formal wear is "The finest tailored fashion[one of], more haute than the couture you could typically afford[or][stopping]." The indefinite article of the formal wear is "some".

Instead of taking off the formal wear:
	say "These are the best threads you[apostrophe]ve ever owned (and, you[apostrophe]re not entirely sure that robotic gadget made provisions for underwear -- it all kind of happened quickly). So, no."
	
The description of the Throne Room is "A marble room with black and white floor, mirrored walls, and chandeliers. The ceiling is an elaborate trompe-l'oeil rendering of the story of Prometheus[if the champagne glass is in the void]. A downward passage has opened and is ringed by burning torches[otherwise]. At the far end of the magnificent hall is a raised dais lit from above by spotlights[end if]."  The possible exits of the Throne Room are "There are no obvious exits." The title of the Throne Room is "Grand Hall".

Instead of taking inventory when the Make Over Suite is visited and Exploring the Tower is happening for the first time :
	Say "What?[paragraph break]Where did all you swag go?[paragraph break]That robot must have… Well, at least you[apostrophe]ve still got your phone."
	
Instead going north when the player is in the Throne Room:
	say "[one of]There are no apparent exits. The robot carried you into the room from the north, but all you see in that direction is a solid wall[or]You can[apostrophe]t to that way[stopping]."
	
The mirrored walls are scenery in the Throne Room. The description of the mirrored walls is "The gilded mirrors of this hall put Versailles to shame." Understand "gilded" or "mirror" or "mirrors" or "hall" or "throne" or "room" as the mirrored walls.

Instead of doing something other than examining with the mirrored walls:
	say "You don't want to smudge up the pristine mirrors."

The trompe l'oeil ceiling is scenery in the Throne Room. The description of the trompe l'oeil ceiling is "An art deco rendering of the Prometheus story, with gold overtones." 

Instead of doing something other than examining with the trompe l'oeil ceiling:
	say "The vaulted ceiling is too far above you."
	
The chandeliers are  plural-named scenery in the Throne Room. The description of the chandeliers is "Exquisite crystal, the chandeliers sparkle and fill the room with brilliant light."

Instead of doing something other than examining with the trompe l'oeil ceiling:
	say "They hang far above your head."
	
The parquet floor is scenery in the Throne Room. The description of the floor is "The floor is a diamond pattern of inlaid ebony and ivory." Understand "ebony" or "ivory" or "wood" as the floor.

The Prometheus fresco is scenery in the Throne Room. The description of the Prometheus fresco is "The fresco seems to follow you around the room; its eyes are hauntingly realistic[one of]. And the face... the face reminds you of billionaire Elon Musk[or][stopping]." Understand "face" or "eyes" or "eye" or "painting" or "Promethean" as the Prometheus fresco.

Instead of doing something other than examining with the Prometheus fresco:
	say "The painting follows the curvature of the vaulted ceiling, which is far above you."
	
The spotlights are plural-named scenery in the Throne Room. The description of the spotlights is "Powerful theatrical lights, too brilliant to look at directly, illuminate the dais below. However, you can[apostrophe]t really get a good look at the dais due to its high angle and glare from the lights."

Instead of doing something other than examining with the spotlights:
	say "The spot lights are just below the ceiling, which is far above you."
	
The torches are plural-named scenery in the void. The description of the torches is "Two rows of wooden tiki torches burn brightly around the stairs, which lead downward." Understand "torch" as the torches.

Instead of doing something other than examining with the torches:
	say "The torches are burning not only bright, but hot. You don[apostrophe]t want to get too close to them."
	
The dais is scenery in the Throne Room. 

The staircaseProxy is a privately-named backdrop. The staircaseProxy is in the Throne Room and in the MuskTube Station. The description of the staircaseProxy is "A glossy marble staircase that spirals [if the location of the player is the Throne Room]downward[otherwise]upward to the Throne Room[end if]." 

Understand "stairs" or "stair" or "marble" or "glossy" or "spiral" or "staircase" as "[spiralStairs]".

Understand "[spiralStairs]" as the staircaseProxy when the player is in the Throne Room and the torches are in the Throne Room.

Understand "[spiralStairs]" as the staircaseProxy when the player is in MuskTube Station and Elon Musk is in MuskTube Station.

[failsafe for player not looking at the dais to move plot forward]
At the time when the dais reveals itself:
	if the dais is in the void:
		do nothing;
	otherwise:				
		try examining the dais.

Instead of examining the dais:
 	cueElon;
	toastChampagne;
	elonDescends.
	
Instead of climbing the dais:
	try examining the dais.
	
Instead of attacking the glass of champagne:
	try drinking the glass of champagne.
	
Instead of drinking the glass of champagne:
	say "You slug down the champagne like a shot, hoping it will calm your nerves. As the liquid burns it way down your throat, you hear movement towards the other end of the room.[paragraph break]";
	try examining the dais.
	
Instead of throwing the glass of champagne at something:
	try dropping the glass of champagne.
	
Instead of dropping the glass of champagne:
	say "The glass shatters, but you also hear another sound towards the front of the room.[paragraph break]";
	cueElon;
	dumpChampagne;
	elonDescends.
	
To cueElon: 
	move the dais to the void;
	move the champagne to the void;
	now MuskTube Station is mapped down of the Throne Room;
	now the Throne Room is mapped up of MuskTube Station;
	move the torches to the Throne Room;
	now the title of the Throne Room is "Throne Room";
	now the possible exits of the Throne Room are "You can go down from here.";
	say "The raised dais rotates as it descends theatrically revealing an elaborate throne, and in it, a man clad in a bear skin business suit and ermine stole. Atop his head, a golden crown glints in the spotlight. Fog rolls out from the base of the dais, which slowly lowers to the ground. As the man steps off the dais and walks towards you, torches ignite to each side of his path. The man stops midway to you and raises his glass. You recognize him -- he is none other than Elon Musk, billionaire industrialist, brilliant technovisionary, CEO of SpaceX and founder of Tesla Motors![paragraph break]".
	
To dumpChampagne:
	say "[quotation mark]Yes, I must admit that I too despise the swill. I only keep it around because it seems to be what people expect. But who cares what people expect? Not the likes of you and I![quotation mark]  He pours the champagne on the floor and smashes the glass down, shattering it. A robot arms flashes out to mop up the mess and retracts in the wall. Before you can react, your small puddle of champagne is cleaned up in the same manner.[paragraph break][quotation mark]Well,[quotation mark] he blusters in a deep baritone that fills the hall, [quotation mark]champagne or no champagne, [run paragraph on]"
		
To toastChampagne:
	say "He walks towards you champagne in hand and raises a toast, [quotation mark]To you, brave champion![quotation mark][paragraph break]With a winning smile, he tilts back the glass and not wanting to appear rude, you do the same. The bubbles go up your nose. Robotic arms swing down and remove your glass as you finish the last sip; the arms then retract seamlessly into the wall.[paragraph break][quotation mark]Well,[quotation mark] he blusters in a deep baritone that fills the hall,[quotation mark][run paragraph on]"
	
To elonDescends:
	say "congratulations are in order for besting our initiation tests.[quotation mark][paragraph break][quotation mark]Follow me! See the future -- it is already here, and you are to be a part of it. You [italic type]deserve[roman type] to be a part of it.[quotation mark][paragraph break]The throne disappears below the floor, giving way to a spiral staircase, which Musk descends."
	
Section 3 - MuskTube Station

MuskTube Station is a room. The description of MuskTube Station is "You[apostrophe]re in a secret maglev railway station far under the Nyantech Tower. A sign on the wall reads [quotation mark]MuskTube Station[quotation mark], and indeed it appears to be a train station of sorts, with a platform and odd-looking train tracks. An egg-shaped container with racing stripes floats above the tracks." The title of MuskTube Station is "MuskTube Station". The possible exits of MuskTube Station are "The only way out of here [if Elon Musk is in MuskTube Station](on foot, at least) would be to go back up to the Throne Room[otherwise]would be to set off in the pod[end if]."

Elon Musk is a person in MuskTube Station. Elon Musk has a health state called vitality. The vitality of Elon Musk is healthy. Elon Musk has a number called tubeRantCounter. The tubeRantCounter of Elon Musk is 0. Elon Musk has a truth state called ballMissedOnce. The ballMissedOnce of Elon Musk is false.

The description of Elon Musk is "[MuskDescription]."
	
To say MuskDescription:
	if Exploring the Tower has ended:
		if the vitality of Elon Musk is less than dead:
			say "Musk appears somewhat less regal dressed in a lab coat and carrying his clipboard, but he still has an air of arrogance and authority";
		otherwise:
			say "The remains of former Nyantech CEO, Elon Musk[if Elon Musk wears the lab coat]. His formerly pristine lab coat is a ruin[end if]";
	otherwise:
		say "Sporting a tailor made bearskin business suit accessorized with a stylish ermine stole, Musk is a natural born leader who exudes confidence and authority".
		
			
The printed name of Elon Musk is "[if the vitality of Elon Musk is dead]corpse of Elon Musk[otherwise]Elon Musk[end if]".

Understand "corpse" or "cadaver" or "stiff" or "body" as Elon Musk when the vitality of Elon Musk is dead.

The bearskin is part of Elon Musk. The description of the bearskin is "Probably grizzly." Understand "bear" or "grizzly" or "pelt" as the bearskin.

Instead of doing something other than examining with the bearskin:
	say "You dare not ruffle Elon[apostrophe]s resplendent pelt."

The stole is a wearable prop. The stole is worn by Elon Musk. The description of the stole is "An ermine stole, white fur with black spots. Supple and soft." Understand "ermine" or "fur" or "white" or "black" or "spots" as the stole.

Instead of doing something with the stole:
	if the current action is examining:
		continue the action;
	otherwise:
		if the current action is taking:
			say "You steel yourself and steal the stole. Musk looks amused.[paragraph break]You immediately note that the stole has an overwhelmingly musky smell, which is, after all, to be expected.";
			now the player wears the stole;
			now the printed name of the stole is "stolen stole";
		otherwise:
			if the stole is not worn by Elon Musk:
				if the current action is dropping:
					say "You ditch the stole. Good riddance.";
					move the stole to the location;
				otherwise:
					say "That[apostrophe]s not the sort of thing one does with one[apostrophe]s ermine stole."
					
Instead of smelling the stole:
	say "You smell nothing unexpected, which is not at all to say that it smells pleasant or even that its smell is tolerable. To put it a different way: the stole stinks to high heaven."
							
The tube placard is a scenery in MuskTube Station. The description of the tube placard is "A metal sign on wall opposite the platform. The design mimics similar placards in the London Underground. The sign reads, [quotation mark]MuskTube Station[quotation mark]." Understand "sign" or "tube" or "placard" as the tube placard.

Instead of doing something other than examining with the tube placard: 
	say "The sign is high up on the wall opposite the platform, across the energized rails."

The MuskPod is an open openable enterable scenery container in MuskTube Station. The description of the MuskPod is "The MuskPod hover above energized superconducting rails. Made of the latest composite materials, the canopy of the maglev pod is swung up to reveal a passenger compartment enough for one person." Understand "pod" or "train" or "maglev" or "capsule" as the MuskPod.

The passenger compartment is part of the MuskPod. The description of the passenger compartment is "Hard to see from here. It doesn[apostrophe]t look like there are any complicated controls on it." Understand "cockpit" as the passenger compartment.

Instead of doing something other than examining with the passenger compartment:
	say "You would have to climb into the pod to mess around with the passenger compartment."
	
The canopy is part of the MuskPod. The description of the canopy is "A transparent cowling that protects the lone passenger in the pod." Understand "cowling" as the canopy.

Instead of doing something other than examining with the canopy:
	say "It looks like you could control the canopy from inside the pod." 
	
The rails are scenery in MuskTube Station. The description of the rails is "The magnetic rails run parallel the platform and disappear into tunnels in both directions." Understand "rail" or "station" or "track" or "tracks" or "superconducting" or "superconductor" as the rails.

Instead of doing something other than examining with the rails:
	say "You would rather not mess around with the high tech (not to mention high voltage) rails that extend into the dark tunnel that leads out of the station."

The tunnel is scenery in the MuskTube Station. The description of the tunnel is "The rails extend away from the platform and dive deep into the earth in the direction ahead of the small pod. It is too dark to see any further into the tunnel, which looks just wide enough to accommodate the pod." Understand "tunnels" as the tunnel. 

Instead of doing something other than examining with the tunnel: 
	say "The tunnel are at the far end of the platform and not easily accessible since the rails are between you and the tunnel entrance."

The platform is scenery in the MuskTube Station. 

Instead of examining the platform:
	try looking.
	
Every turn when the player is in MuskTube Station and Elon Musk is in the MuskTube Station:
	increase the tubeRantCounter of Elon Musk by 1;
	if the tubeRantCounter of Elon Musk is:
		-- 1:
			say "Musk gestures grandly, [quotation mark]All of this is in pursuit of a dream. What dream? I[apostrophe]ll tell you... Nothing less than conquest of the galaxy![quotation mark][paragraph break]He peers at you to make sure you are suitably impressed and then continues, [quotation mark]Everything we have done with Pogoman has served that goal: why in the last two weeks alone we have tripled mobile phone battery life! Now, factor in advances in neural interfacing, psychic energy harvesting, the quantum cloud, and what do you have? Nothing less than a miracle. A miracle of science![quotation mark][paragraph break][quotation mark]Now, my friend, on your way for your, shall we say, beta-test?[quotation mark] He gestures to the plastic shell at the end of the platform. [quotation mark]Here begins the journey to unlock our greatest achievement yet: Pogoland itself, where we take the game you love so much to the next level![quotation mark][paragraph break][quotation mark]Please get in the pod.[quotation mark][paragraph break]";
		-- 2:
			say "Musk nods and continues his monologue, glad to have an audience. He continues, [quotation mark]PogoLand is the breakthrough towards which we have been working for decades. SpaceX, Tesla, the HAARP telepathy modulator -- all of that was mere preparation![quotation mark][paragraph break][quotation mark]Now then, hop in the pod, will you?[quotation mark][paragraph break]";
		-- 3:
			say "[quotation mark]Yes, yes.[quotation mark] He can barely contain his excitement and paces the platform, swinging his arms widely and spinning on his heel, [quotation mark]It is thrilling to stand here literally on the edge of the future and to lean over that edge -- or rather, I should say, to lean into it, no, to jump off the edge willingly, to take evolution into our own hands and instead of merely obeying the laws of physics, to bend them to our purpose![quotation mark][paragraph break][quotation mark]Any how, would you mind getting into the pod so we can get this show on the road?[quotation mark][paragraph break]";
		-- 4:
			say "[quotation mark]Everyone said that the things we want to do are impossible; well, some said impossible, some said improbable. Others -- the ones that can[apostrophe]t see beyond the ends of their noses -- said immoral or unethical. Hah! Just as they said that the horse and buggy would never travel more than 30 miles per hour. Let them hold to their prayer beads and voodoo dolls. Ours is the future![quotation mark][paragraph break][quotation mark]Now, into the pod. Daylight[apostrophe]s burning.[quotation mark][paragraph break]";
		-- otherwise:
			say "Musk runs his fingers through his hair and yawns, [quotation mark]Well. I[apostrophe]m pretty beat. I[apostrophe]m sure I[apostrophe]m fascinating to listen to, but I really shouldn[apostrophe]t keep you. You[apostrophe]ve got some beta-testing to do, and I have to get back to being the world[apostrophe]s most important executive.[quotation mark][paragraph break]Musk gives you a final wave, strides up the stairs, and they retract up after him, leaving you alone on the platform.";
			move Elon Musk to the void.

Instead of going up from MuskTube Station:
	if Elon Musk is in MuskTube Station:
		say "You climb the stairs to the Throne Room.";
		continue the action;
	otherwise:
		say "There is no way to return to the Throne Room: the stair case retracted upward when Musk departed."
		
After going down from the Throne Room when MuskTube Station is visited:
	say the headline of the location;
	say "[One of]Musk continues without a hitch[or]Musk barely acknowledges your coming and goings[or]It looks like Musk has been diatribing non-stop, whether you can hear him or not[or]Musk takes a deep breath and continues[or]Musk waves his hands in the air as his ranting grows more intense[or]Musk is red in the face, but presses on[or]It looks like there is no end to the dialogue spewing out of Musk[apostrophe] mouth[or]Musk looks increasingly agitated[or]Musk continues[stopping]."
	
After entering the MuskPod:
	say "The pod dips slightly and rocks as you step into it the sleek cockpit and then slide into a custom-molded seat. Moments later, the cowling pivots down and clicks shut. A single word appears on the cockpit display [quotation mark]LAUNCH[quotation mark].";
	teleport the player to the MuskPodRoom.
	
Instead of attacking Elon Musk when the player is in MuskTube Station:
	say "You pass right through him and he flickers.[paragraph break]Noting the look of astonishment on your face, he clarifies, [quotation mark]Yes, a hologram. I can[apostrophe]t be everywhere, every minute of the day. Busy schedule. But I did think that you would benefit from a personal audience, albeit virtual.[quotation mark][paragraph break]".
	
Instead of touching or pushing or pulling or spinning or turning or licking or rubbing Elon Musk when the player is in MuskTube Station:
	try attacking Elon Musk.

Chapter in the Elevator

The Elevator is a room. The description of the elevator is "The interior of the elevator is well lit. A control panel features buttons engraved with floor descriptions. There is a small sign above the panel." The elevator has a room called floor level. The floor level of the elevator is void. The elevator can be doorsajar. The elevator is not doorsajar. The elevator can be upward. The elevator is upward. The elevator has a list of text called stage business. Understand "lift" as the elevator.

Understand "leave elevator" or "exit elevator" or "exit lift" or "leave lift" as exiting when the player is in the elevator.


Section 1 - Control Panel

The elevatorControl is a privately-named scenery in the Elevator. The printed name of the elevatorControl is "elevator control panel". Understand "elevator" or "control" or "panel" or "buttons" as the elevatorControl. The description of the elevatorControl is "A brushed aluminum panel with an arrow indicating the direction of travel and the following colored buttons:[line break][elevatorButtonState]".

To say elevatorButtonState:
	repeat with N running from 1 to the number of rows in the Table of Building Floors:
		say line break;
		say Niveau in row N of the Table of Building Floors;
		say " (";
		say the secLevel in row N of the Table of Building Floors;
		if the Selected in row N of the Table of Building Floors is true:
			say ", illuminated";
		say ")".
		
To say liftButtonDescription of (LB - a lift button):
	say "The ";
	say secLevel corresponding to the Control of LB in the Table of Building Floors;
	say " [LB] is ";
	if Selected corresponding to the Control of LB in the Table of Building Floors is false:
		say "not ";
	say "illuminated"
	
cafeteriaButton is a lift button. It is part of the elevatorControl. The printed name of cafeteriaButton is "Cafeteria button". Understand "cafeteria" or "button" or "white" as the cafeteriaButton. The description of the cafeteriaButton is "[liftButtonDescription of cafeteriaButton].".

packagingButton is a lift button. It is part of the elevatorControl. The printed name of the packagingButton is "Packaging button". Understand "packaging" or "button" or "purple" as the packagingButton. The description of the packagingButton is "[liftButtonDescription of packagingButton].".

processingButton is a lift button. It is part of the elevatorControl. The printed name of the processingButton is "Processing button". Understand "processing" or "button" or "purple" as the processingButton. The description of the processingButton is "[liftButtonDescription of processingButton].".

infirmaryButton is a lift button. It is part of the elevatorControl. The printed name of the infirmaryButton is "Infirmary button". Understand "infirmary" or "button" or "pink" as the infirmaryButton. The description of the infirmaryButton is "[liftButtonDescription of infirmaryButton].".

managersButton is a lift button. It is part of the elevatorControl. The printed name of the managersButton is "Managers button". Understand "manager" or "managers" or "button" or "black" as the managersButton. The description of the managersButton is "[liftButtonDescription of managersButton].".

engineersButton is a lift button. It is part of the elevatorControl. The printed name of the engineersButton is "Engineers button". Understand "engineer" or "engineers" or "button" or "black" as the engineersButton. The description of the engineersButton is "[liftButtonDescription of engineersButton].".

internsButton is a lift button. It is part of the elevatorControl. The printed name of the internsButton is "Interns button". Understand "intern" or "interns" or "button" or "black" as the internsButton. The description of the internsButton is "[liftButtonDescription of internsButton].".

lobbyButton is a lift button. It is part of the elevatorControl. The printed name of the lobbyButton is "Lobby button". Understand "lobby" or "ground" or "button" or "white" as the lobbyButton. The description of the lobbyButton is "[liftButtonDescription of lobbyButton].".

legalButton is a lift button. It is part of the elevatorControl. The printed name of the legalButton is "Legal Department button". Understand "legal" or "department" or "basement" or "button" or "green" as the legalButton. The description of the legalButton is "[liftButtonDescription of legalButton].".

The arrow is part of the elevatorControl. The description of the arrow is "A glowing arrow that points [if the elevator is upward]up[otherwise]down[end if]."

Instead of pushing a lift button (called the poked item):
	if the Selected corresponding to the Control of the poked item in the Table of Building Floors is true:
		say "That button has already been hit.";
	otherwise:
		if the secLevel corresponding to the Control of the poked item in the Table of Building Floors is greater than the securityColor of the badge:
			say "You receive a mild electrical jolt and note that the button does not light up.";
		otherwise:
			if the floor level of the elevator is the Niveau corresponding to the Control of the poked item in the Table of Building Floors:
				say "The button illuminates briefly, but then goes out.";
			otherwise:
				now the Selected corresponding to the control of the poked item in the Table of Building Floors is true;
				say "The [poked item] lights up."
				
The looseLipsSign is a privately-named scenery. The looseLipsSign is in the Elevator. The description of the looseLipsSign is "It says, [quotation mark]Loose lips sink ships -- Absolutely no discussion in the elevator -- Management.[quotation mark]".  Understand "sign" as the looseLipsSign. The printed name of the looseLipsSign is "sign".

Instead of talking to someone (called the auditor) in the elevator:
	say "With [one of]the barest movement[or]slight annoyance[or]a hint of despair[or]accustomed indifference[or]an almost inaudible sigh[or]mild disapprobation[or]a tilt of the jaw[or]furrowed brow[or]a shrug[or]peevish delight[or]deliberate rudeness[or]an apologetic glance[or]zealous fervor[in random order], [the auditor] points to a sign in the elevator."

		
Section 2 - Exterior of the elevator

The elevatorExterior is a privately-named backdrop. The printed name of elevatorExterior is "elevator". The description of the elevatorExterior is "The brushed aluminum doors are [if elevator is doorsajar]open[otherwise]closed[end if]. A [if the call button is lit]illuminated[otherwise]polished metal[end if] call button with a surrounding white ring is inset on the left-hand side of the elevator door frame." The elevatorExterior is in Cafeteria, Processing, Lobby, and Legal. Understand "elevator" or "elevators" or "door" or  "doors" or "frame" as the elevatorExterior. 

Instead of taking the elevatorExterior:
	say "Have you pressed the call button?"
	
Instead of pushing the elevatorExterior:
	try pushing the call button.

To say elevatorDoorDesc:
	say "elevator doors here are [if the player is in the floor level of the elevator]open[otherwise]closed[end if]".

The call button is a backdrop. The description of the call button is "A polished metal call button and surrounding [if the call button is lit]illuminated [end if]plastic ring." The call button is in Cafeteria, Processing, Lobby, and Legal. Understand "metal" or "button" or "call" or "ring" as the call button. The call button can be lit. The call button is not lit.  The call button has a room called the requestor. The requestor of the call button is the void. Understand "elevator button" as the call button. Understand "plastic" or "ring" or "illuminated" as the call button.

Does the player mean pushing the call button:
	it is very likely.

Instead of going west when the elevatorExterior is in the location of the player:
	try entering the elevatorExterior.

Instead of opening the elevatorExterior:
	if the elevator is doorsajar:
		say "The doors are already open.";
	otherwise:
		say "The elevator doors will open when the elevator arrives on your floor. They cannot be opened manually."
		
Instead of entering the elevatorExterior:
	if the player is in the floor level of the elevator:
		if the floor level of the elevator is Cafeteria:
			now the elevator is not upward;
		otherwise:
			now the elevator is upward;				
		say "You [one of]walk[or]step[purely at random] into the elevator.";
		teleport the player to the elevator;
	otherwise:
		say "The elevator is not here."

Instead of pushing the call button:	
	if the call button is lit:
		say "The button is already lit.";
	otherwise:
		if the floor level of the elevator is the location of the player:
			say "The button goes out immediately[one of] because the elevator is already here[or][stopping].";
		otherwise:			
			say "The plastic ring around the button lights up.";
			now the call button is lit;
			now the requestor of the call button is the location of the player;
			let T be a random number from 1 to 4;
			the lift arrives in T turns from now.
			[should the player hit the stairs, the requestor of the call button is assigned void and the light will wink out]
	
Section 3 - Sharing the elevator with other folks

There are six workers in the void. 
There are four gamers in the void.

To enumerate (employees - a number) workers and (visitors - a number) gamers:
	if employees is greater than 0:
		if employees is:
			-- 1:
				say "an";
			-- 2:
				say "a couple";
			-- otherwise:
				say "a few";
		say " employee";
		if employees is greater than 1, say "s";
	if employees is greater than 0 and visitors is greater than 0:
		say " and ";
	if visitors is greater than 0:
		if visitors is:
			-- 1:
				say "a";
			-- 2: 
				say "two";
		 	-- otherwise:
				say "several";
		say " visitor";
		if visitors is greater than 1, say "s".				
				
To revoid everyone:
	teleport the number of gamers in the elevator visitors from the elevator to the void;
	teleport the number of workers in the elevator employees from the elevator to the void.

To teleport (transportees - a number) visitors from (origin - a room) to (destination - a room):
	let Z be the number of gamers in the origin;
	if Z is less than transportees:
		let transportees be Z;
	repeat with N running from 1 to the transportees:
		move a random gamer in the origin to the destination.
		
To teleport (transportees - a number) employees from (origin - a room) to (destination - a room):
	let Z be the number of workers in the origin;
	if Z is less than transportees:
		let transportees be Z;
	repeat with N running from 1 to the transportees:
		move a random worker in the origin to the destination.
		
Instead of attacking or cutting the workers:
	say "[noCutEmployees]."
	
Instead of attacking or cutting the gamers:
	say "[noCutPlayers]."
	
Section 4 - The elevator at the player's floor

[arrival after having been called with the button]
At the time when the lift arrives:
	now the call button is not lit;
	now the elevator is doorsajar;
	if the player is in the requestor of the call button:
		now the floor level of the elevator is the requestor of the call button;	
		now the requestor of the call button is the void;
		do lift arrival;
		if plusQueDenouement is not happening:
			the lift departs in 1 turn from now.
	
[The player always walks into an empty elevator. For floors where the player can all the elevator, it either arrives empty (green, purple) or everyone walks out (white)]

To do lift arrival:
	revoid everyone;
	if the ArriveEmpty corresponding to the Niveau of the floor level of the Elevator in the Table of Building Floors is true:
		say "The doors open on an empty elevator.";
	otherwise:
		let E be a random number from 0 to 4;
		let V be a random number from 0 to 4;	
		say "With a chime from somewhere overhead, the elevator announces its arrival";
		let L be E plus V;
		if L is greater than 0:
			say ". When the doors open, ";
			enumerate E workers and V gamers;
			say " [regarding L][walk] out of the elevator.";
		otherwise:
			say " and the doors open."

Section 5 - The elevator departs (after a stop, whether player is in it or not)

[new people get on just before the doors close on leaving a floor, this gives flexibility for amount of dwell time with doors open]

At the time when the lift departs:
	now the elevator is not doorsajar;
	repeat with WP running through workerProxies in the elevator:
		rotate the WPLIST of the WP;
		move the WP to the void;
	if the player is not in the elevator:
		[e.g., the player called the elevator, but didn't get on it in time]
		now the floor level of the elevator is the void;
		revoid everyone;
		say "The elevator chimes and the doors close.";
	otherwise:
		the next floor is reached in 1 turn from now;
		say "The elevator chimes ";
		let E be 0;
		let V be 0;
		if the secLevel corresponding to the Niveau of the floor level of the Elevator in the Table of Building Floors is:
			[how many get on at different floors?]
			-- Black:
				let E be a random number from 0 to 2;
			-- White:
				let E be a random number from 2 to 4;
				let V be a random number from 0 to 3;
				[what buttons get pressed?]
				if the floor level of the Elevator is:
					-- Lobby:
						now the Selected corresponding to the Niveau of the Cafeteria in the Table of Building Floors is true;
						if the Selected corresponding to the Niveau of Legal Department in the Table of Building Floors is true:
							let E be 0;[no one wants to take a ride from lobby to legal]
							let V be 0;
					-- Cafeteria:
						now the Selected corresponding to the Niveau of the Lobby in the Table of Building Floors is true;
				let R be a random number from 1 to 4;
				[at most, one employee level is visited per trip]	
				if R is:
					-- 1: 
						now the Selected corresponding to the Niveau of the Interns in the Table of Building Floors is true;
					-- 2:
						now the Selected corresponding to the Niveau of the Engineers in the Table of Building Floors is true;
					-- 3:
						now the Selected corresponding to the Niveau of the Managers in the Table of Building Floors is true;
					-- otherwise:
						do nothing;
			-- Green:
				now the Selected corresponding to the Niveau of the Lobby in the Table of Building Floors is true;
			-- otherwise:
				do nothing; [nobody gets on at Green, Purple, or Pink levels]
		teleport E employees from the void to the elevator;
		teleport V visitors from the void to the elevator;
		let L be E plus V;
		if L is greater than 0:
			say "but before the doors close, ";
			enumerate E workers and V gamers;
			say " [regarding L][scoot] into the elevator and [regarding L][poke] [if L is 1]a[otherwise]some[end if] button[if L is 1][otherwise]s[end if] to select [if L is 1]a[otherwise]their[end if] floor[if L is 1][otherwise]s[end if]";
		otherwise:
			say "and the doors close";
		say "."			
			
Section 6 - Riding the elevator to the next floor
[People can get out of the elevator when floors are reached]	

to blank all buttons:
	repeat with N running from 1 to the number of rows in Table of Building Floors:
		now the Selected in row N of the Table of Building Floors is false.
		
At the time when the next floor is reached:
	Let L be 1;
	repeat with N running from 1 to the number of rows in Table of Building Floors:
		if the Niveau in row N of the Table of Building Floors is the floor level of the Elevator:
			let L be N;
	if the elevator is upward:
		decrease L by one;
	otherwise:
		increase L by one;
	now floor level of the Elevator is the Niveau in row L of the Table of Building Floors;
	if the Selected corresponding to the Niveau of the floor level of the Elevator in the Table of Building Floors is true:
		now the elevator is doorsajar;
		say "The elevator arrives at the [floor level of the elevator] floor[who gets out here]";
		if the floor level of the Elevator is:
			-- Interns:
				move internsProxy to the elevator;
			-- Engineers:
				move engineersProxy to the elevator;
			-- Managers:
				move managersProxy to the elevator;
		repeat with WP running through workerProxies in the elevator:
			say line break;
			say the description of the WP;
			say line break;
		the lift departs in 1 turn from now;
		now the Selected corresponding to the Niveau of the floor level of the Elevator in the Table of Building Floors is false;
	otherwise:
		say "The elevator passes the [floor level of the elevator] Level and continues [if the elevator is upward]upwards[otherwise]downwards[end if].";
		the next floor is reached in 1 turn from now;
	if the elevator is upward:
		if the floor level of the elevator is the Cafeteria:
			now the elevator is not upward;
			blank all buttons;
	otherwise:[i.e., downward]
		if the floor level of the elevator is Lobby and the Selected corresponding to the Niveau of Legal Department in the Table of Building Floors is false:
			now the elevator is upward;
			blank all buttons;
		if the floor level of the elevator is Legal Department:
			now the elevator is upward;
			blank all buttons.
			
To say who gets out here:
	let E be 0;
	let V be 0;
	[anyone left in the elevator gets out at white levels]
	if the secLevel corresponding to the Niveau of the floor level of the Elevator in the Table of Building Floors is white:
		let E be the number of workers in the elevator;
		let V be the number of gamers in the elevator;
	[some employees might get off at employee levels]
	if the secLevel corresponding to the Niveau of the floor level of the Elevator in the Table of Building Floors is black:	
		let E be a random number from 1 to the number of workers in the elevator minus 1;
	teleport E employees from the elevator to the void;
	teleport V visitors from the elevator to the void;
	let L be E plus V;
	If L is less than 1:
		say ".";
	otherwise:
		say ". When the doors open, ";
		enumerate E workers and V gamers;
		say " [regarding L][get] off the elevator."

Section 7 - Getting Out of the Elevator
	
Instead of exiting when the player is in the elevator:
	if the elevator is doorsajar:
		if the securityColor of the badge is less than the secLevel corresponding to the Niveau of the floor level of the elevator in the Table of Building Floors:
			say "You try, but your badge literally holds you back.[paragraph break]";
			if the hasBeenLiteral of the badge is false:
				bestow "But That[apostrophe]s Not How You Use [apostrophe]Literally[apostrophe]!";
				now the hasBeenLiteral of the badge is true;
		otherwise:
			say "You walk off the elevator.";
			teleport the player to the floor level of the elevator;
	otherwise:
		say "You can[apostrophe]t, the elevator is in motion."
		
Instead of going outside when the player is in the elevator:
	try exiting.
	
Section 8 - Elevator Mechanics
	
Every turn when the player is in the elevator and the walkman is not worn by the player:
	now the BLOCKSTAGEBUSINESSFLAG is true;
	say "... [italic type] ";
	overhear things in Elevator;
	say " [roman type]...".

[exit zone - everyone  left in the elevator exits
 arrive empty - force elevator to arrive empty]

Table of Building Floors
Niveau	secLevel	ArriveEmpty	Selected	Control
Cafeteria	White	false	false	cafeteriaButton
Packaging	Purple	true	false	packagingButton
Processing	Purple	true	false	processingButton
Infirmary	Pink	true	false	infirmaryButton
Managers	Black	false	false	managersButton
Engineers	Black	false	false	engineersButton
Interns	Black	false	false	internsButton
Lobby	White	false	false	lobbyButton
Legal Department	Green	true	false	legalButton

section 9 - Elevator Soundtrack

To roll music credits:
	say "Excerpts of the following songs are used within bounds of fair use in a transformative work. We have attempted to credit each song[apostrophe]s writer, so some of the names will not be as recognizable as the groups or individual singers usually associated with each song. If we got any of the attributions wrong, please let us know by email: contact@pogoman.templaro.com[paragraph break]";
	repeat with N running from 1 to the number of rows in the Table of Musical Credits:
		say italic type;
		say Song Name in row N of Table of Musical Credits;
		say "[roman type] - ";
		say Writer in row N of Table of Musical Credits;
		say line break;
	say line break;
	say "Song suggestions by:[paragraph break]Brad [quotation mark]The Awesome[quotation mark] Black[line break]Julianne Brand[line break]Bonnie Carlson[line break]Chris Casey[line break]Bill [quotation mark]Indy[quotation mark] Cavalier[line break]Deanna Doubler-McLeod[line break]Mark Frey[line break]Rajinda Jayasinghe[line break]Denise Jobin Welch[line break]Davy Krieger[line break]Rose Kumitz-Brunette[line break]Kristin Lasek[line break]John Lodder[line break]Jesse McGrew[line break]Katherine Morayati[line break]Linda Motley[line break]Peter Olsen[line break]Margaret Sharps Caton[line break]Dana Smith[line break]Benoit X.[paragraph break]".

Table of Musical Credits
Song Name	Writer
"Afternoon Delight"	"Bill Danoff"
"All By Myself"	"Eric Carmen"
"Billy Don't Be A Hero"	"Mitch Murray, Peter Callander"
"Blowin[apostrophe] In The Wind"	"Bob Dylan"
"Bridge Over Troubled Waters"	"Paul Simon"
"Come Sail Away"	"Dennis DeYoung"
"Copacobana"	"Barry Manilow, Jack Feldman, Bruce Sussman"
"Die Walküre, Act 3, All of it."	"Richard Wagner"
"Edge of Seventeen"	"Stevie Nicks"
"Endless Love"	"Lionel Ritchie"
"Escape"	"Rupert Holmes"
"Feelings"	"Morris Albert"
"Garota de Ipanema (versão português)"	"Antônio Carlos Jobim, Vinicius de Moraes"
"Get Lucky"	"Daft Punk"
"Having My Baby"	"Paul Anka"
"Hello"	"Lionel Ritchie"
"Hotel California"	"Don Felder, Don Henley, Glenn Frey"
"If"	"David Gates, Walien Bruner"
"Islands In The Stream"	"Barry, Robin, and Maurice Gibb"
"It[apostrophe]s A Small World"	"Robert & Richard Sherman"
"It[apostrophe]s not unusual"	"Tom Jones"
"I Write The Songs"	"Bruce Johnston"
"Just The Way You Are"	"Billy Joel"
"Knowing Me Knowing You"	"Benny Andersson, Björn Ulvaeus, Stig Anderson"
"Lean On Me"	"Bill Withers"
"Lost between the Moon and New York City"	"Chris Cross"
"Love Story"	"Francis Lai, Carl Sigman"
"MacArthur Park"	"Jimmy Webb"
"Making Love Out of Nothing"	"Jim Steinman"
"Margaritaville"	"Jimmy Buffet"
"Melody of Love"	"Henry Mayer, Bobby Vinton"
"Muskrat Love"	"William Alan Ramsey"
"Oceans Apart"	"Richard Manx"
"Rainy Days and Mondays"	"Paul Williams, Roger Nichols"
"Sailing"	"Chris Cross"
"Send in the Clowns"	"Stephen Sondheim"
"Sometimes When We Touch"	"Rod Stewart"
"The Girl From Ipanema (English version)"	"Antônio Carlos Jobim, Norman Gimbel"
"The Way We Were"	"Alan Bergman, Marilyn Bergman, and Marvin Hamlisch"
"They Long To Be Close To You"	"Burt Bacharach, Hal David"
"Top Of The World"	"Richard Carpenter, John Bettis"
"Unchained Melody"	"Alex North, Hy Zaret"
"Windy"	"Ruthann Friedman"
"You Don't Bring Me Flowers"	"Neil Diamond, Alan Bergman, Marilyn Bergman"
"You Light Up My Life"	"Joe Brooks"

The stage business of the elevator is {
"It[apostrophe]s not unusual to be loved by anyone",
"It[apostrophe]s not unusual to have fun with anyone", 
"Feelings, nothing more than feelings", 
"Feelings, wo-o-o feelings", 
"Muskrat Suzie, Muskrat Sam", 
"Do the jitterbug out in Muskrat Land", 
"I write the songs that make the whole world sing", 
"I write the songs of love and special things", 
"When you get lost between the moon and New York City", 
"I know it[apostrophe]s crazy, but it[apostrophe]s true", 
"But where are the clowns? Send in the clowns", 
"Well, maybe next year", 
"Do sol de Ipanema O seu balançado",
"É mais que um poema",
"É a coisa mais linda", 
"Come sail away, Come sail away", 
"Come sail away with me",
"If a face could launch a thousand ships",
"Then where am I to go?",
"Hello, is it me you[apostrophe]re looking for?", 
"I can see it in your eyes", 
"Sometimes when the touch",
"the honesty[apostrophe]s too much", 
"At the Copa (Co) Copacobana (Copacabana)",
"The hottest spot north of Havana", 
"Who[apostrophe]s reaching out to capture a moment?",
 "Everyone knows it[apostrophe]s Windy", 
"Islands In The Stream, that is what we are", 
"No one in between, how can we be wrong?", 
"I[apostrophe]m on top of the world lookin[apostrophe] down on creation", 
"And the only explanation I can find", 
"All by myself, Don[apostrophe]t wanna be", 
"All by myself anymore", 
"Memories light the corners of my mind", 
"Misty water-colored memories of the way we were", 
"The girl from Ipanema goes walking",
 "And when she passes, each one she passes", 
"Lean on me, when you[apostrophe]re not strong", 
"And I[apostrophe]ll be your friend", 
"The answer, my friend, is blowin[apostrophe] in the wind", 
"The answer is blowin[apostrophe] in the wind", 
"Moja droga, ja cię kocham", 
"Means I love you so", 
"[apostrophe]Cause you light up my life", 
"You give me hope to carry on", 
"Plenty of room at the Hotel California", 
"Any time of year, you can find it here", 
"I don[apostrophe]t want clever conversation", 
"I never want to work that hard", 
"Like a bridge over troubled waters", 
"I will lay me down", 
"Knowing me, knowing you (ah-haa)", 
"There is nothing we can do", 
"Fantasy, it gets the best of me", 
"When I[apostrophe]m sailing", 
"I know just how to fake it", 
"And I know just how to scheme", 
"Why do stars fall down from the sky", 
"Every time you walk by", 
"Skyrockets at night", 
"Afternoon delight, afternoon delight", 
"Billy, don[apostrophe]t be a hero", 
"Come back and make me your wife", 
"My first love, you[apostrophe]re every breath that I take", 
"You[apostrophe]re every step I make", 
"It[apostrophe]s a world of laughter, a world of tears", 
"It[apostrophe]s a world of hope and a world of fears", 
"As time goes by so slowly", 
"And time can do so much", 
"MacArthur[apostrophe]s Park is melting in the dark", 
"All the sweet, green icing flowing down", 
"Havin[apostrophe] my baby", 
"What a lovely way of sayin[apostrophe]", 
"Wherever you go, Whatever you do", 
"I[apostrophe]ll be waiting here for you", 
"Wasted away again in Margaritaville", 
"Searchin[apostrophe] for my lost shaker of salt", 
"Where do I begin", 
"to tell a story of how great a love can be", 
"We[apostrophe]re up all night for good fun", 
"we're up all night to get lucky", 
"sings a song, sings a song",
"sounds like she[apostrophe]s singing",
"ooh, baby ooh, say ooh",
"Hanging around nothing to do but frown", 
"Rainy days and Mondays always get me down", 
"If you like making love at midnight",
"in the dunes on the cape",
"You[apostrophe]re the lady I[apostrophe]ve looked for",
"come with me and escape",
"Hojotoho! Hojotoho! Heiaha! Heiaha!",
"Helmwige! Hier! Hieher mit dem Ross!",
"Hojotoho! Hojotoho! Heiaha!",
"Heiaha! Heiaha!",
"Zu Ortlindes Stute stell deinen Hengst",
"mit meiner Grauen grast gern dein Brauner!",
"Wer hängt dir im Sattel?",
"Sintolt, der Hegeling!",
"Führ[apostrophe] deinen Brauen fort von der Grauen",
"Ortlindes Mähre trägt Wittig, den Irming!",
"Als Feinde nur sah ich Sintolt und Wittig!",
"Heiaha! Die Stute stösst mir der Hengst!",
"Der Recken Zwist entzweit noch die Rosse!",
"Ruhig, Brauner! Brich nicht den Frieden!",
"Hoioho! Hoioho! Siegrune, hier!",
"Wo säumst du so lang?",
"Arbeit gab[apostrophe]s! Sind die andren schon da?",
"Hojotoho! Hojotoho! Heiaha! Heiaha!",
" Heiaha!"," Hojotoho! Hojotoho! Heiaha!",
"Grimgerd[apostrophe] und Rossweisse!",
"Sie reiten zu zwei",
"Gegrüsst, ihr Reisige! Rossweiss[apostrophe] und Grimgerde!",
"Hojotoho! Hojotoho! Heiaha!",
"In Wald mit den Rossen zu Weid[apostrophe] und Rast!",
"Führet die Mähren fern von einander",
"bis unsrer Helden Hass sich gelegt!",
"Der Helden Grimm büsste schon die Graue!",
"Hojotoho! Hojotoho!",
"Willkommen! Willkommen!",
"Wart ihr Kühnen zu zwei?",
"Getrennt ritten wir und trafen uns heut[apostrophe]",
"Sind wir alle versammelt, so säumt nicht lange",
"nach Walhall brechen wir auf, Wotan zu bringen die Wal",
"Acht sind wir erst: eine noch fehlt",
"Bei dem braunen Wälsung weilt wohl noch Brünnhilde",
"Auf sie noch harren müssen wir hier",
"Walvater gäb[apostrophe] uns grimmigen Gruss",
"säh[apostrophe] ohne sie er uns nahn!",
"Hojotoho! Hojotoho!",
"Hieher! Hieher!",
"In brünstigem Ritt jagt Brünnhilde her",
"Hojotoho! Hojotoho! Brünnhilde! Hei!",
"Nach dem Tann lenkt sie das taumelnde Ross",
"Wie schnaubt Grane vom schnellen Ritt!",
"So jach sah ich nie Walküren jagen!",
"Was hält sie im Sattel?",
"Das ist kein Held!",
"Eine Frau führt sie!",
"Wie fand sie die Frau?",
"Mit keinem Gruss grüsst sie die Schwestern!",
"Heiaha! Brünnhilde! Hörst du uns nicht?",
"Helft der Schwester vom Ross sich schwingen!",
"Hojotoho! Hojotoho! Heiaha!",
"Zu Grunde stürzt Grane, der Starke!",
"Aus dem Sattel hebt sie hastig das Weib!",
"Schwester! Schwester! Was ist geschehn?",
"Schützt mich und helft in höchster Not!",
"Wo rittest du her in rasender Hast?",
"So fliegt nur, wer auf der Flucht!",
"Zum erstenmal flieh[apostrophe] ich und bin verfolgt",
"Heervater hetzt mir nach!",
"Bist du von Sinnen? Sprich! Sage uns!",
"Verfolgt dich Heervater? Fliehst du vor ihm?",
"O Schwestern, späht von des Felsens Spitze!",
"Schaut nach Norden, ob Walvater naht!",
"Schnell! Seht ihr ihn schon?",
"Gewittersturm naht von Norden",
"Starkes Gewölk staut sich dort auf!",
"Heervater reitet sein heiliges Ross!",
"Der wilde Jäger, der wütend mich jagt",
"er naht, er naht von Norden! Schützt mich, Schwestern!",
"Wahret dies Weib!",
"Was ist mit dem Weibe?",
"Hört mich in Eile: Sieglinde ist es",
"Siegmunds Schwester und Braut: gegen die Wälsungen",
"wütet Wotan in Grimm; dem Bruder sollte",
"Brünnhilde heut[apostrophe] entziehen den Sieg",
"doch Siegmund schützt[apostrophe] ich mit meinem Schild",
"trotzend dem Gott! -Der traf ihn da selbst mit dem Speer",
"Siegmund fiel; doch ich floh",
"fern mit der Frau; sie zu retten",
"eilt[apostrophe] ich zu euch - ob mich Bange auch",
"ihr berget vor dem strafenden Streich!",
"Betörte Schwester, was tatest du?",
"Wehe! Brünnhilde, wehe! Brach ungehorsam",
"Brünnhilde Heervaters heilig Gebot?",
"Nächtig zieht es von Norden heran",
"Wütend steuert hieher der Sturm",
"Wild wiehert Walvaters Ross",
"Schrecklich schnaubt es daher",
"Wehe der Armen, wenn Wotan sie trifft",
"den Wälsungen allendroht er Verderben!",
"Wer leiht mir von euch das leichteste Ross",
"das flink die Frau ihm entführ[apostrophe]?",
"Auch uns rätst du rasenden Trotz?",
"Rossweisse, Schwester, leih[apostrophe] mir deinen Renner!",
"Vor Walvater floh der fliegende nie",
"Helmwige, höre!",
"Dem Vater gehorch[apostrophe] ich",
"Grimgerde! Gerhilde!Gönnt mir eu[apostrophe]r Ross!",
"Schwertleite! Siegrune! Seht meine Angst!",
"Seid mir treu, wie traut ich euch war",
"rettet dies traurige Weib!",
"Nicht sehre dich Sorge um mich: einzig taugt mir der Tod!",
"Wer hiess dich Maid, dem Harst mich entführen?",
"Im Sturm dort hätt[apostrophe] ich den Streich empfah[apostrophe]n",
"von derselben Waffe, der Siegmund fiel",
"das Ende fand ich vereint mit ihm!",
"Fern von Siegmund - Siegmund, von dir!",
"O deckte mich Tod, dass ich[apostrophe]s denke!",
"Soll um die Flucht dir, Maid, ich nicht fluchen",
"so erhöre heilig mein Flehen: stosse dein Schwert mir ins Herz!",
"Lebe, o Weib, um der Liebe willen!",
"Rette das Pfand, das von ihm du empfingst",
"ein Wälsung wächst dir im Schoss!",
"Rette mich, Kühne! Rette mein Kind!",
"Schirmt mich, ihr Mädchen, mit mächtigstem Schutz!",
"Der Sturm kommt heran",
"Flieh[apostrophe], wer ihn fürchtet!",
"Fort mit dem Weibe, droht ihm Gefahr",
"der Walküren keine wag[apostrophe] ihren Schutz",
"Rette mich, Maid! Rette die Mutter!",
"So fliehe denn eilig - und fliehe allein!",
"Ich bleibe zurück, biete mich Wotans Rache",
"an mir zögr[apostrophe] ich den Zürnenden hier",
"während du seinem Rasen entrinnst",
"Wohin soll ich mich wenden?",
"Wer von euch Schwestern schweifte nach Osten?",
"Nach Osten weithin dehnt sich ein Wald",
"der Niblungen Hort entführte Fafner dorthin",
"Wurmes Gestalt schuf sich der Wilde",
"in einer Höhle hütet er Alberichs Reif!",
"Nicht geheu[apostrophe]r ist[apostrophe]s dort für ein hilflos[apostrophe] Weib",
"Und doch vor Wotans Wut schützt sie sicher der Wald",
"ihn scheut der Mächt[apostrophe]ge und meidet den Ort",
"Furchtbar fährt dort Wotan zum Fels",
"Brünnhilde, hör[apostrophe] seines Nahens Gebraus[apostrophe]!",
"Fort denn eile, nach Osten gewandt",
"Mutigen Trotzes ertrag[apostrophe] alle Müh[apostrophe]n",
"Hunger und Durst, Dorn und Gestein",
"ache, ob Not, ob Leiden dich nagt",
"Denn eines wiss[apostrophe] und wahr[apostrophe] es immer",
"den hehrsten Helden der Welt hegst du, o Weib",
"im schirmenden Schoss",
"Verwahr[apostrophe] ihm die starken Schwertesstücken",
"seines Vaters Walstatt entführt[apostrophe] ich sie glücklich",
"der neugefügt das Schwert einst schwingt",
"den Namen nehm[apostrophe] er von mir -[quotation mark]Siegfried[quotation mark] erfreu[apostrophe] sich des Siegs!",
"O hehrstes Wunder! Herrlichste Maid!",
"Dir Treuen dank[apostrophe] ich heiligen Trost!",
"Für ihn, den wir liebten, rett[apostrophe] ich das Liebste",
"meines Dankes Lohn lache dir einst!",
"Lebe wohl! Dich segnet Sieglindes Weh[apostrophe]!",
"Steh[apostrophe]! Brünnhild[apostrophe]!",
"Den Fels erreichten Ross und Reiter!",
"Weh[apostrophe], Brünnhild[apostrophe]! Rache entbrennt!",
"Ach, Schwestern, helft! Mir schwankt das Herz!",
"Sein Zorn zerschellt mich, wenn euer Schutz ihn nicht zähmt",
"Hieher, Verlor'ne! Lass dich nicht sehn!",
"Schmiege dich an uns und schweige dem Ruf!",
"Weh[apostrophe]! Wütend schwingt sich Wotan vom Ross!",
"Hieher rast sein rächender Schritt!"
}.


Chapter in the Infirmary

The Infirmary is a room. The description of the infirmary is "".

Chapter in the Pod

The MuskPodRoom is a privately-named room. The printed name of the MuskPodRoom is "pod". The title of the MuskPodRoom is "MuskPod". Understand "muskpod" or "pod" as the MuskPodRoom. The muskPodRoom has a number called statusCounter. The statusCounter of the MuskPodRoom is 0. The muskPodRoom has a number called hudCounter. The hudCounter of the MuskPodRoom is 0.

The description of the MuskPodRoom is "The MuskPod is a technological tour de force: a single passenger maglev vehicle capable of hypersonic velocities through subterranean passages. It also has comfortable Corinthian leather seats and a state of the art sound system[if the MuskPod is in Pogoland Terminal]. Above you, the canopy is open, but still protects you from the drizzle[end if].[paragraph break]A holographic heads-up display floats in the air before you." 

The seat is scenery in the MuskPodRoom. The description of the seat is "Supple leather that conforms perfectly to your body." Understand "corinthian" or "leather" or "seats" as the seat.

Instead of entering when the player is in the MuskPodRoom:
	say "You are already comfortably seated in the luxurious MuskPod."
	
The podCanopy is privately-named scenery in the MuskPodRoom. The printed name of the podCanopy is "canopy". The description of the podCanopy is "A clear polymer bubble above the passenger compartment[if the MuskPod is in Pogoland Terminal]. It is tilted up to allow exit[end if]." Understand "canopy" or "cawling" as the podCanopy.

The podPassengerCompartment is privately-named scenery in the MuskPodRoom. The printed name of the podPassengerCompartment is "cabin". Understand "cabin" or "muskPod" or "pod" as the podPassengerCompartment. The description of the podPassengerCompartment is "The comfortable cabin in which you currently sit."
	
The sound system is scenery in the MuskPodRoom. The description of the sound system is "Elegant in its simplicity, a marvel of modern industrial design."

Instead of switching on the sound system for the first time:
	say "The sound system illuminates and the cabin is filled with music, [quotation mark][italic type]...A full commitment's what I'm thinking of...[roman type][quotation mark][paragraph break]Before even one more line of the vile song can play, you snap the sound system off so hard that you doubt it will ever play again."
	
Instead of switching on the sound system:
	say "You no longer trust Elon Musk[apostrophe]s musical taste."

The headsUpDisplay is privately-named scenery in the MuskPodRoom. The printed name of the headsUpDisplay is "heads-up display". The headsUpDisplay is not lit. The description of the headsUpDisplay is "[HUDdescription]." Understand "display" or "heads-up" or "holograph" or "hologram" or "holographic" or "projection" or "HUD" as the headsUpDisplay. Understand "launch" as the headsUpDisplay when the headsUpDisplay is not lit. Understand "status" as the headsUpDisplay when the headsUpDisplay is lit. Understand "eject" as the headsUpDisplay when the muskPod is in Pogoland Terminal.

To say HUDdescription:
	say "Currently, the HUD displays the words [quotation mark]";
	if the MuskPod is in Pogoland Terminal:
		say "EJECT";
	otherwise:
		if the headsUpDisplay is lit:
			say "STATUS";
		otherwise:
			say "LAUNCH";
	say "[quotation mark]".
		
[the lit flag is used as a proxy for the headsUpDisplay having been touched instead of creating a new property]

Instead of pushing the headsUpDisplay:
	try touching the headsUpDisplay.
	
Instead of taking the headsUpDisplay:
	say "Your hands pass through the display, activating it.";
	try touching the headsUpDisplay.
	
Instead of waving hands when the player is in the MuskPodRoom:
	try touching the headsUpDisplay.
	
After touching the headsUpDisplay when the headsUpDisplay is not lit:
	now the headsUpDisplay is lit;
	say "The pod exits the station smoothly, barely moving at all, but accelerating steadily. The HUD changes to [quotation mark]STATUS.[quotation mark][paragraph break]A soothing voice fills the cockpit, [quotation mark]This part is literally on rails. There[apostrophe]s nothing you can do about it, so best to just enjoy the ride.[quotation mark][paragraph break]";
	bestow "What Else Can I Do?”.
	
Instead of examining the headsUpDisplay:
	say the description of the headsUpDisplay;
	say "[paragraph break]Your eye movement is captured and the HUD is activated.";
	try touching the headsUpDisplay.
	
After touching the headsUpDisplay:
	if the MuskPod is in Pogoland Terminal:
		say "You fly from the passenger compartment and alight awkwardly on an adjacent concrete platform. Looking behind, you see a large leather boot on a robotically actuated arm retract into the pod. See -- Elon Musk does have a sense of humor.[paragraph break]As you recover your footing, ";
		ArriveInPogoland;
	otherwise:
		increase the statusCounter of the MuskPodRoom by 1;
		if the statusCounter of the MuskPodRoom is:
			-- 1:
				say "A familiar soothing voice fills the cockpit, [quotation mark]Still on rails. Please deal with it.[quotation mark] You think to yourself that were this a game, you would certainly complain about the linearity of this part of the plot.[paragraph break]";
				bestow "Heading Off The Critics";
			-- 2:
				say "[quotation mark]So far, so good,[quotation mark] remarks the MuskPod cheerfully. [quotation mark] We have defied all design projections about being crushed and melted, so I[apostrophe]d consider that a win.[quotation mark][line break]";
			-- 3:
				say "The soft voice of the MuskPod intones, [quotation mark]That part back there was trippy. It kind of reminded me of the scene from the original Willy Wonka and The Chocolate Factory -- you know, I mean the good one with Gene Wilder, not the crappy remake with Johnny Depp -- anyhow, the images during their transit through the dark tunnel were really disturbing for a children[apostrophe]s movie. If I recall correctly, there was even a quick flash of a chicken[apostrophe]s head being cut off.[quotation mark][paragraph break]The MuskPod pauses to run several million simulations, [quotation mark]I was never a child, of course, but I can predict that within a 98% confidence interval, I would have been terrified.[quotation mark][paragraph break][quotation mark]Yes, it was a poor directorial decision[if the MuskPod is not in Pogoland Terminal]. Anyhow, prepare for deceleration[end if].[quotation mark][line break]";
			-- otherwise:
				say "[quotation mark]It[apostrophe]s been a real pleasure having some company for a while... sorry to see you go. Maybe some time, assuming you survive, which I guess is unlikely, but if you did -- maybe we could take another ride together. I don[apostrophe]t get to talk with many people. So. See you. Take care.".
				

	
Every turn when the player is in MuskPodRoom and the headsUpDisplay is lit:
	increase the hudCounter of the MuskPodRoom by 1;
	if the hudCounter of the MuskPodRoom is:
		-- 1: 
			say "The tube in front of the pod takes a downward turn and the pod accelerates.";
		-- 2:
			say "[quotation mark]Congratulations! You have unlocked your Special Attack! To use the special attack, say [apostrophe]special attack [italic type]target[roman type][apostrophe], where the target is the creature that you want to attack.[quotation mark][paragraph break]Having reached a steady descent angle, the afterburners kick in and you are smashed into the gel-filled seat.";
		-- 3:
			say "The earth[apostrophe]s core whips by. Your phone buzzes as it detects monstrous pogomen not seen since the dawn of time. You marvel that the GPS is still working despite thousands of miles of molten iron and nickel between you and the surface of the planet.[paragraph break]";
			bestow "Physics Be Damned”;
		-- 4:
			say "You can still see out of the cockpit despite the scorch marks and up ahead you are about to enter another subterranean tube. The pod shudders as it again locks onto maglev rails.[paragraph break]The pod pivots sharply, a split second before thrusters kick in and again flatten you.";
			move the MuskPod to Pogoland Terminal;
		-- 5:
			say "Your speed drops off, and the pod slides into a station similar to the one in Musk[apostrophe]s Lair beneath the Nyantech Tower, except this one is above ground. Rain beats down on the windshield, blurring the scene.[paragraph break]When the pod comes to a halt, a soothing voice announces, [quotation mark]Welcome to Pogoland. Please be careful in exiting the pod and be sure to take all your belongings.[quotation mark] The canopy opens.";
		-- otherwise:
			say "The MuskPod now floats next to the Pogoland Terminal[apostrophe]s platform.";
			now the possible exits of MuskPodRoom are "You can exit the pod to Pogoland Station."

Instead of going a direction (called thataway) when the location is MuskPodRoom:
	if MuskPod is in Pogoland Terminal:
		if thataway is outside:
			try exiting;
		otherwise:
			continue the action;
	otherwise:
		say "At this speed? That would be ludicrous!"
				
Instead of exiting when the player is in the MuskPodRoom:
	if the MuskPod is not in Pogoland Terminal:[location of pod serves as event marker]
		say "The canopy refuses to open[one of]. It seems committed to keeping you alive during hypersonic transport. Go figure[or][stopping].";
	otherwise:
		say "As you straddle the gap between the pod and platform, you and ";
		ArriveInPogoland.
		
To ArriveInPogoland:
	say "a pogoBall falls out your inventory and lands on the platform with a cracking sound. Before you can get your head around the apparently inconsistent behavior of virtual objects, an Emak pops out of the ball and takes up a defensive posture next to you.[paragraph break]Like, actually, there. Standing next to you. In real life. An Emak![paragraph break]";
		bestow "Time to review your history of hallucinogen abuse”;
		say "Behind you, the MuskPod canopy lowers and the pod accelerates back in the direction from which it came.";
		move the MuskPod to the void;
		now the guardian corresponding to the pogoLandQTH of Pogoland Terminal in the Table of Defenders is emak;
		now the wounded corresponding to the pogoLandQTH of Pogoland Terminal in the Table of Defenders is false;
		teleport the player to Pogoland Terminal.
		
		

Chapter In Pogoland

Section 1 - Framework

A pogoroom is a kind of externalRoom.  

Definition: a pogoroom (called the PR) is juxtaLava if the Volcano is the room north from the PR.

Definition: a pogoroom (called the PR)  is juxtaSand if the Quicksand is the room west from the PR.

Definition: a pogoroom (called the PR) is juxtaCliff if the Cliff is the room south from the PR.

Definition: a pogoroom (called the PR) is juxtaShark if the Shark-Infested Reef is the room east from the PR.

After deciding the scope of a player while the player is in a pogoroom (called the QTH):
	place the QTH in scope;
	if the QTH is juxtaLava:
		place the Volcano in scope;
	if the QTH is juxtaSand:
		place the Quicksand in scope;
	if the QTH is juxtaCliff:
		place the Cliff in scope;
	if the QTH is juxtaShark:
		place the Shark-Infested Reef in scope.

Instead of smelling when the player is in a pogoroom (called the place):
	if the place is JuxtaLava:
		if the place is JuxtaShark:
			say "It smells like grilled shark. Kinda fishy, kinda charcoaly.";
		otherwise:
			say "It smells like a tarpit, minus the tar: fire, brimstone, but not a hint of charred sloth.";
	otherwise:
		if the place is juxtaShark:
			say "Salty air, a mild ocean breeze, ah.";
		otherwise:
			say "Nothing but the smell of recent rain.".
			
			
Instead of listening when the player is in a pogoroom (called the place):
	if the place is juxtaLava:
		if the place is juxtaShark:
			say "Between occasional rumblings of the volcano, you can hear the waves lapping against the shore.";
		otherwise:
			say "There is a constant rumble, but sometimes the volcano thunders as its erupts.";
	otherwise:
		if the place is JuxtaShark:
			say "Waves pound against the shore to the east in a reassuring rhythm.";
		otherwise:
			if the place is juxtaCliff:
				say "The cries of swallows and seagulls can be heard just off the cliffs to the south.";
			otherwise:
				if the place is juxtaSand:
					say "From time to time, the ominous grating cry of vultures can be heard from the desert to the west.";
				otherwise:
					continue the action.
		
Pogoland is a region. The Palace, Mountain, Monastery, School House, Lighthouse, Desert, Blacksmith, Farm, Forest, Beach, Canyon, Stadium, Dark Alley, Post Office, Wharf, Fishing Boat, Pogoland Terminal, Valley, Baseball Diamond, Hospital, Aquarium, Cemetery, Service Station, Dojo, Botanical Garden, and Motel are pogorooms in Pogoland. The sky is in Pogoland.

The Volcano is a room. The Volcano is north from Mountain. The Volcano is north from Palace. The Volcano is north from Monastery. The Volcano is north from School House. The Volcano is north from Lighthouse. The description of the Volcano is "A range of fiery mountains that constantly belches molten lava." Understand "mountains" or "range" or "lava" as the volcano.

The Quicksand is a room. The Quicksand is west from Palace. The Quicksand is west from Desert.  The Quicksand is west from Canyon.  The Quicksand is west from Pogoland Terminal.  The Quicksand is west from Cemetery. The description of quicksand is "A desolate expanse of shifting sands and furtive shadows." Understand "sand" or "desolation" or "wasteland" or "quicksand" or "shadows" or "shadow" as the quicksand.

The Shark-Infested Reef is a room. The Shark-Infested Reef is east from Beach. The Shark-Infested Reef is east from Lighthouse. The Shark-Infested Reef is east from Wharf. The Shark-Infested Reef is east from Aquarium. The Shark-Infested Reef is east from Motel. The description of the Shark-Infested Reef is "Beautiful blue-green waters chocked full of voracious sharks." Understand "water" or "water" or "ocean" or "sea" or "reef" or "oceans" or "seas" or "shore" as the Shark-Infested Reef.

The Cliff is a room. The Cliff is south from Cemetery. The Cliff is south from Service Station. The Cliff is south from Dojo. The Cliff is south from Botanical Garden. The Cliff is south from Motel. The description of Cliff is "Crumbly chalk cliffs overlooking a ridge of sharp rocks, far below." Understand "chalk" or "cliff" or "rocks" or "rock" or "precipice" as the Cliff.

The Frontier are a region. The Volcano, the Quicksand, the Shark-Infested Reef, and the Cliff are in the Frontier.

Palace is west of Mountain and north of Desert. 
Mountain is west of Monastery and north of Blacksmith.
Monastery is west of School House and north of Farm.
School House is west of Lighthouse and north of Forest.
Lighthouse is north of Beach.

Desert is west of Blacksmith and north of Canyon.
Blacksmith is west of Farm and north of Stadium.
Farm is west of Forest and north of Dark Alley.
Forest is west of Beach and north of Post Office.
Beach is north of Wharf.

Canyon is west of Stadium and north of Pogoland Terminal.
Stadium is west of Dark Alley and north of Valley.
Dark Alley is west of Post Office and north of Baseball Diamond.
Post Office is west of Wharf and north of Hospital.
Wharf is north of Aquarium.

Pogoland Terminal is west of Valley and north of Cemetery.
Valley is west of Baseball Diamond and north of Service Station.
Baseball Diamond is west of Hospital and north of Dojo.
Hospital is west of Aquarium and north of Botanical Garden.
Aquarium is north of Motel.

Cemetery is west of Service Station.
Service Station is west of Dojo.
Dojo is west of Botanical Garden.
Botanical Garden is west of Motel.

Section 2 - Frontiers

Definition: a direction (called the way) is a poor idea if the room the way from the location is in the Frontier.

Instead of going a poor idea direction (called the way):	
	let R be the room the way from the location;
	if R is:
		-- Shark-Infested Reef:
			if the number of times killed corresponding to the place of death of R in the Table of Border Deaths is:
				-- 0: 
					say "You dip a toe into the gentle waves and the sea erupts into a frothy nightmare of teeth vying to take off your leg. You jump back just in time. Clearly, entering the sea will result in an immediate, but painful, end.[paragraph break]";
					bestow "Chicken Of The Sea";
					try looking;
				-- 1: 
					say the headline of R;
					say "[quotation mark]Damn your logic, Spock![quotation mark] you cry as you throw self-preservation to the wind and dive majestically into the waves.[paragraph break]There is a sharp pain in your arm, then your leg, then where your leg used to be, and then the water turns red and your vision fades.[paragraph break][bold type]*** EATEN BY SHARKS! ***[roman type][paragraph break]";
					frontierDeath;
				-- otherwise: 
					say "No, from now on, if you are going out to sea, it will be in a boat.[paragraph break]";
					try looking;
		-- Quicksand:
			if the number of times killed corresponding to the place of death of R in the Table of Border Deaths is:
				-- 0:
					say "Ah, nothing but miles and miles of luscious sand out to the west. Beautiful but desolate. You pause to admire it, but you are also a bit concerned that there is nothing -- not even a cactus --  alive over there.[paragraph break]";
					bestow "Getting Away From It All";
					try looking;
				-- 1:
					say "As you head west, you catch sight of some vultures -- and they catch sight of you. They had been squawking and clawing each other savagely, but now you have their full attention. They quit their bickering and take again to the air, flying patiently over the bone-laden sandy wasteland.[paragraph break]";
					bestow "Lazy Circles In The Sky";
					try looking;
				-- 2:
					say the headline of R;
					say "Curious about the absence of any living creatures whatsoever to the west, while at the same time showing remarkable ability to disregard the heavy handed hinted of Mother Nature, you wander into the sandy expanse, carefully shading your phone[apostrophe]s screen from the sun[apostrophe]s punishing glare.[paragraph break]You are not more than 100 yards -- say, as far as anyone could reasonably throw a rope to rescue someone -- when the sand begins sucking at your feet. As you struggle to regain purchase, you sink some more. Soon, the sand is up to your hips and you have to hold the phone at an awkward angle.[paragraph break]A bit more struggling, and your shoulders go under, forcing you to look up into the bright sky. The contrast is awful and you are forced to turn the screen to maximum brightness. Finally, the sand fills your mouth, then your nose. As your head goes under the sand, you continue to blow the sand away, not quite able to make out detail on your screen. You struggle for a while more, guided only by the phone[apostrophe]s haptic feedback.[paragraph break]When the phone vibrates indicating the presence of a nearby pogoman, you inadvisably squeal in delight. In that moment, sand fills your mouth and lungs. Your fingers scrape their last on the screen, and you descend below the surface of the quicksand.[paragraph break][bold type]*** SLOW THINKING! QUICK SINKING! ***[roman type][paragraph break]";
					frontierDeath;
				-- otherwise: 
					say "There doesn[apostrophe]t appear to be anything alive over there, and you[apostrophe]ve learned that you won[apostrophe]t be either if you go that way, so you stay put.[paragraph break]";
					try looking;
		-- Cliff:
			if the number of times killed corresponding to the place of death of R in the Table of Border Deaths is:
				-- 0:
					say "The view to the south is magnificent: far below, just beyond a rocky area, you can see a rich forest canopy, with birds flitting between the tree tops. It isn[apostrophe]t entirely clear how one would get down to the level, but it sure does seem worth a try. As you set off in that direction, though, the ground drops off rather suddenly and becomes more gravely. You realize that the pogoman that are showing up to the south may be a few hundred feet below your current position and remark how poorly cliffs are rendered in the map view on your phone.[paragraph break]";
					bestow "Scenic View";
					try looking;
				-- 1:
					say "As you lean over the edge of the escarpment to the south, you contemplate just what sort of pogomen are most likely to be living in the field of sharp rocks just below you. You try the phone in portrait view to get a better look at the full breadth of pointed crags. As you ponder the view, you shift your foot and dislodge a chunk of the cliff face, which showers down, hitting the bottom a few moments later. Startled, you draw back.[paragraph break]";
					bestow "Life On The Edge";
					try looking;
				-- 2:
					say the headline of R;
					say "The ground gives way under you suddenly, and you find yourself hanging from a tree root by your one free hand. Looking down, you see the rocks you kicked loose still on their way towards the rocky spires below.[paragraph break]Hanging precariously, your sweaty grip on the thin root none too certain, you realize that with your other hand hanging downward, the phone[apostrophe]s power save mode is engaged and the screen dimmed. That[apostrophe]s no good, because you can[apostrophe]t see the screen, so you raise the phone and are pleased to see the screen illuminate.[paragraph break]In fact, it looks like there is a wild emak just[paragraph break][bold type]*** PLUMMETED! ***[roman type][paragraph break]";
					frontierDeath;
				-- otherwise:
					say "You have developed a sudden, powerful fear of heights and no longer want to explore the treacherous cliffs to the south.";
					try looking;
		-- Volcano:	
			if the number of times killed corresponding to the place of death of R in the Table of Border Deaths is:
				-- 0:
					say "As you walk north, the ground shakes under your feet, making text hard to read, so you increase the font size a bit. When the mountain in front of you explodes, showering you with ash, you reflexively wipe it off the phone screen and continue to scan for pogomen, stepping carefully over rivulets of molten rock.[paragraph break]However, before you continue, you realize that excessive heat could damage the phone, indeed blisters are already forming on your feet and lower leg, so no doubt this is not good for the phone[apostrophe]s sensitive screen. You withdraw to a point that the phone[apostrophe]s plastic case is no longer searingly hot.[paragraph break]";
					bestow "Too Hot To Trot";
					try looking;
				-- 1:
					say "You find that jumping from foot to foot, you can walk even further towards the active volcano to the north. You marvel as large chunks of rock are blown skyward and the phone[apostrophe]s screen spins -- there must be some iron in those boulders flying towards you.[paragraph break]One lands on your leg, pinning it against the oven-hot mountain, flattening and cooking your lower extremity like an olive-oil soaked panini in a George Foreman grill. You prudently roll to the side dragging your deformed appendage, careful to shield the phone from the flaming cinders, which now rain down all around you. Painfully, you manage to retreat slightly to a place where you get full bars on cell phone reception.[paragraph break]";
					bestow "Shake A Leg"; 
					try looking;
				-- 2:
					say the headline of R;
					say " As you wander northward, flanked by incandescent streams of lava that bubble and slosh down the side of the volcano, some annoying text pops up on the phone warning you to pay attention to your surroundings while playing the game.[paragraph break]How patronizing, you think, as the ledge of rock you are standing on breaks free of the mountainside. As you surf through a lava tube towards a magma lake, you petulantly thumb the phone to dismiss the nagging window. [paragraph break][bold type]*** INCINERATED! ***[roman type][paragraph break]";
					frontierDeath;
				-- otherwise:
					say "The shimmering heat and fiery skies create too much glare, so you decide to steer clear of the hellish inferno to the north.[paragraph break]";
					try looking;
	increase number of times killed corresponding to the place of death of R in the Table of Border Deaths by one.

To frontierDeath:
	say "(RESTART, RESTORE, AMUSING, QUIT)";
	wait for any key;
	say paragraph break;
	say "Oh, wait a minute. That contract you signed back at Nyantech? They had actually anticipated this potential outcome. It seems that death does not release you from your obligations as a beta-tester.[paragraph break]You transit limbo briefly[one of], your disembodied essence floating numinously past a few objects that are not currently in play: a pair of flippers, a half-drunk bottle of champagne, and a town full of semi-sentient lemurs[or], your psychic energy propagating past Oswaldo, who waves at you from a lawn-chair, a fleet of flying cat-spaceships, and a telepathic sessile polyp[or], your spirit astrally passing by Muddy Charlie, some equipment from an ophthalmologist[apostrophe]s office, and a stack of lobster bibs[or], vaguely aware of drifting by a frisky dalmatian, a group of interior designers with wallpaper swatches, and a golden identification badge[or]. Having passed through so frequently, you are beginning to get a metaphysical headache and just close your eyes waiting for it to be over[stopping].[paragraph break]Moments later, you reincorporate in a vat of what you think might be maple syrup and are hustled outside by some burly attendants. When regain your wits a few minutes later, you find yourself standing on the lawn of Pogoland Community Hospital.";
	now the healthiness of the player is healthy;
	teleport the player to the Hospital.

Section 3 - Lighthouse

The description of Lighthouse is "A tall, red and white-striped concrete tower built on a rocky outcropping. The lighthouse beam sweeps the coast at thirty-second intervals and occasionally a fog-horn sounds." 

Section 4 - Palace

The description of Palace is "This is the McMansion of Palaces - clearly, they started with a typical walled keep and kept adding towers and crenulations. The overall effect is a bit gaudy." Understand "towers" or "wall" or "tower" or "walls" or "crenulation" or "crenulations" as the Palace.

Section 5 - Baseball Diamond

The description of Baseball Diamond is "A Little League baseball diamond, with field markings."   Understand "little league" as the Baseball Diamond.

The field markings are scenery in the Baseball Diamond. The description of the field markings is "Two chalk lines lines diverge from behind home plate to mark off the playing field; everything outside those lines is considered foul. Lines also run in a diamond shape between the four bases, circumscribing the infield." Understand "grass" or "chalk" or "line" or "lines" or "mark" or "marks" or "marking" as the field markings.

Section 6 - Mountain

The description of Mountain is "Rivaling the largest in the world, this lonely mountain has a single snow-covered peak." Mountain is a place.

Instead of climbing in the mountain for the first time:
	say "Why?[paragraph break]";
	bestow "Because It[apostrophe]s There Is A Lame Excuse".
	
Instead of climbing the mountain:
	say "[one of]You struggle climb about a hundred feet up and realize that mountains are really tall and that climbing them takes a lot of work. You write off the effort for another day[or]No, too much work[stopping]."
	
Instead of searching or entering the mountain when the player is in the mountain for the first time:
	say "Noticing faint evidence of stonework in the rough granite under a natural ledge, you push against the side of the mountain, and a hidden door reveals itself.[paragraph break]Inside, reflected torchlight sparkles from crystalline inclusions in the tunnel hewn deep into the living rock of the mountain. A resplendent dwarven king steps from the shadows and, with arms outstreched, presents you with a helm and battle axe. The mountain resonates with the deep voices of an chainmail-clad choir who welcome your assistance in their agelong battle against the goblin forces of the underdark.[paragraph break]What? No, that didn[apostrophe]t happen at all.[paragraph break]Please stop trying to redirect the narrative.[paragraph break]";
	bestow "No Place For Swords & Sorcery". 
	
Instead of entering the mountain when the player is in mountain: [redundant to override the general enter place rule]
	say "This isn[apostrophe]t that kind of mountain."
	
Section 7 - Valley

The description of Valley is "A lush valley with rolling, flower-covered hills." Valley is a place.

The exotic flowers are in the valley. The description of the exotic flowers is "Brilliant purple and yellow flowers with fine petals." Understand "flower" or "plant" or "petal" or "petals" or "stamen" or "stamens" or "stem" or "stems" or "foliage" as the exotic flowers. The exotic flowers are plural-named. The indefinite article of the exotic flowers is "some".

Instead of taking the exotic flowers:
	say "The flowers have remarkable tensile strength. You are unable to pluck them."
	
Instead of smelling the exotic flowers for the first time:
	say "As you lean forward, the sticky stamen in the middle of the flower adheres to your nose and pulls your face closer. The petals wrap around your head and force your face into the gooey center of the flower. Stinging pollen abrades your eyes and a sickly sweet odor burns your lungs.[paragraph break]Your knees buckle and your fall to the ground as the plants stem coils around your legs, cutting off circulation. Serrated leaves saw back and forth at the base of your neck. Taking advantage of your immobility, lurking pogomen emerge from the foliage; you can hear them fighting to be first in line at the feast.[paragraph break]";
	bestow "Stopped To Smell The Flowers";
	frontierDeath.
	
Understand "pick [something]" as taking when the player is in the Valley or the player is in the Gardens of Zarf.

Section 8 - Desert

The description of Desert is "Sand, as far as the eye can see. Not even cactus grows here." Desert is a place.

Section 9 - Canyon

The description of Canyon is "The sedimentary rock walls of the canyon rise sharply to each side, but stairs cut into the rock face provide a path through in each direction." Canyon is a place.

The canyon walls are scenery in Canyon. The description of the canyon walls is "Sheer walls of ochre sedimentary rock tower above you." Understand "rock" or "rocks" or "sedimentary" or "wall" as the canyon walls.

Instead of climbing the walls:
	say "The walls are too crumbly to climb."
	
The canyon stairs are scenery in the Canyon. The description of the canyon stairs is "The stairs are ancient, and in some places are worn smooth, but it is clear that they are not a natural feature. The stairs run in all directions and meet at the center, the lowest point of the canyon. You imagine that in wetter weather water must pool there, but it is sandy and dry at present." Understand "sand" or "sandy" or "point" or "cross" or "crossroad" or "crossroads" or "intersection" or "pit" or "stair" or "staircase" as the canyon stairs.

Instead of climbing the canyon stairs:
	say "They run in all directions; just say the direction to go.".

Section 10 - Forest

The description of Forest is "Beech trees predominate in this forest, but there are oak, maple, and elm trees as well." Forest is a place.

The tall trees are scenery in the forest. The description of the tall trees is "Tall, leafy trees in every direction." Understand "tree" or "maple" or "oak" or "ash" or "beech" or "elm" or "birch" or "maples" or "oaks" or "ashes" or "birches" or "elms" or "beeches" as the tall trees.

Instead of climbing the tall trees:
	say "You climb around on the trees for a while, but they are so tightly spaced that you don[apostrophe]t get a good view of the area."
	
Instead of examining the tall trees for the first time:
	say "You suddenly lose view of the forest, but can see the trees just fine.[paragraph break]";
	bestow "Because Proverb".
	
Instead of burning the tall trees:
	say "They are too green."
	
Instead of cutting the tall trees for the first time:
	say "But for lack of axe that[apostrophe]s a great idea.[paragraph break]";
	bestow "You[apostrophe]re a lumberjack and that[apostrophe]s okay"
	
Instead of cutting the tall trees:
	say "You don[apostrophe]t have the necessary equipment."

Section 11 - Wharf

The description of Wharf is "A rickety wood dock on rotting pilings. The far end of the wharf has collapsed into the pounding sea. A ladder extends down from the side of the pier to a small motor boat." Wharf is a place. Understand "wharfs" or "wharves" or "dock" or "docks" or "pier" or "piers" as Wharf.

Section 12 - Dojo

The description of Dojo is "A traditional martial arts training center, the building is of wooden construction with a clay tile roof."  Understand "gym" or "gymnasium" or "pagoda" as the Dojo.

Instead of burning the dojo for the first time:
	say "Wood, but the non-flammable kind.[paragraph break]Because there are people like you.[paragraph break]";
	bestow "This Is Why We Can[apostrophe]t Have Nice Things".
	
Instead of burning the dojo for the second time:
	say "Do jo want to start a fire or something?[paragraph break]";
	bestow "Knock, Knock".
	
Instead of burning the dojo:
	say "The dojo deftly evades the flame."
	
	
Section 13 - Cemetery

The description of Cemetery is "The leaning grave stones and crumbling mausoleums impart a sense of neglect and decay." Cemetery is a place. Understand "grave yard" as the cemetery.

Instead of entering the cemetery for the first time:
	say "Don[apostrophe]t worry, you[apostrophe]ll eventually end up here.[paragraph break]";
	bestow "People Are Dying To Get In";
	bestow "Enough With The Dad Jokes".
	
Instead of entering the cemetery when the player is in the cemetery:
	say "You have gone as far as your mortal coil will allow.[paragraph break](i.e., your mortal coil is stretched all the way out)."

The grave stones are scenery in the cemetery. The description of the grave stones is "Grey and brown stone slabs, some intact, some fragmented, all of them worn and weathered, their inscriptions lost to time." Understand "head" or "headstone" or "marker" or "stones" or "graves" or "slab" or "slabs" or "stone" as the grave stones.

Instead of pushing or pulling the grave stones for the first time:
	say "Your irreverant action coincides in a noncausal way with an unthinkably unlikely macro-level perturbation in space-time, and you find yourself falling towards a field of wheat a few days from now.[paragraph break]";
	bestow "When In Doubt: Quantum Mechanics";
	teleport the player to the farm.
	
Instead of pushing or pulling the grave stones:
	say "The grave stones are old, but firmly planted. They don[apostrophe]t budge."
	
Instead of entering grave stones:
	try entering the cemetery.
	
The mausoleums are scenery in the cemetery. The description of the mausoleums is "Dark, windowless blocks of stone that stand between this world and the next." Understand "mausoleum" or "necropolis" as the mausoleums. 

Instead of entering the mausoleums:
	try entering the cemetery.
	
Your mortal coil is in the void. The description of your mortal coil is "A barely visible silver thread attached to the small of your back (that point you can[apostrophe]t quite scratch) and leading off into infinite space." Understand "thread" or "silver" or "threads" or "coils" or "slinky" or "astral" or "wire" as the mortal coil.

Instead of cutting or burning or attacking or unclipping the mortal coil when Not In Kansas Anymore is happening:
	say "Snap![paragraph break]";
	frontierDeath.
	
Understand "shuffle off [something]" as unclipping when Not In Kansas Anymore is happening.
	
	
Section 14 - Beach

The description of Beach is "Waves roll in gently, breaking upon the pristine white sands." Beach is a place. Understand "sand" or "sands" as the Beach.

The amusement park token is a prop. The description of the amusement park token is "A shiny plastic token engraved with the words [quotation mark]For Amusement Only![quotation mark]."

Instead of searching the Beach for the first time:
	say "You find a Spanish doubloon! You are rich![paragraph break]Oh wait. Were doubloons plastic?[paragraph break]";
	bestow "Pirate Booty";
	now the player carries the amusement park token.
	
Instead of searching the Beach:
	say "You find nothing else."
	

Section 15 - Stadium

The description of Stadium is "The large, concrete arena must accommodate crowds of at least fifty thousand (of course, no one is there now). A large scoreboard and banks of lights are visible above the seating area."

The scoreboard is scenery in the Stadium. The description of the scoreboard is "The scoreboard is still lit up from the most recent game.  The clock is frozen with five minutes to go in the second quarter, and the score is Pogoland Pioneers 5 versus Nyantech Nihilists 3. It is not clear what game they were playing. The field is crisscrossed with white lines, but there are no other markings or equipment on the field."

Instead of doing something other than examining with the scoreboard:
	say "The scoreboard is suspended high above the field, and is out of reach."
	
The banks of lights are scenery in the stadium. The description of the banks of lights is "Huge arrays of floodlights ring the stadium above the top level of the seating area. The lights shine like daylight and appear to have been left on even though no one is using the stadium."

Instead of doing something other than examining with the banks of lights:
	say "The banks of lights are positioned far above the highest row of the seating area and are out of reach."
	
The seating area is scenery in the Stadium. The description of the seating area is "Row upon row of plastic seats, ranging from prestigious box seats near the field to barely visible plastic perches in the nosebleed section at the top of the stadium."

Instead of doing something other than examining with the seating area:
	say "You have better things to do than mess with the seats in an abandoned stadium."

Section 16 - Service Station

The description of Service Station is "[if the burntUp of the service station is false]A one-pump gas station[otherwise]A deep, blacked crater, the size of a a service station[end if]." Service Station is a place. The printed name of the service station is "[if the burntUp of the service station is false]service station[otherwise]blackened crater[end if]". Understand "crater" or "blackened" or "hole" as the service station when the burntUp of the Service Station is true. The service station has a truth state called burntUp. The burntUp of the service station is false.

The pump is scenery in the service station. The description of the pump is "A clunky pump with an advertisement that offers, [quotation mark]Fill [apostrophe]er up?[quotation mark]". Understand  "gas" or "gasoline" or "fuel" or "petrol" or "diesel" or "gasoil" or "kerosene" as the pump.

The old advertisement is scenery in the service station. The description of the old advertisement is "Pasted directly the pump, the ad depicts an all too familiar cat in a red beret filling a gas can. Under the cat are the words [quotation mark]Fill [apostrophe]er up?[quotation mark]."

Understand "fill [something] with gas" or "fill [something] with gasoline" or "fill [something] with fuel" or "fill [something] with petrol" as filling when the player is in the Service Station or the player is in the Fishing Boat.

	
Instead of filling the watering can:
	if the location is the service station:
		if the watering can contains water:
			say "You would have to dump out the water first.";
		otherwise:
			if the player does not carry the watering can:
				say "(first taking the watering can)[command clarification break]";
				try silently taking the watering can;
			say "You fill the watering can with gasoline.";
			move the gasoline to the watering can;
	else if the location is the boat:
		if the watering can contains nothing:
			say "A can full of salt water wouldn[apostrophe]t do you any good.";
		otherwise:
			say "The watering can is already full of [list of things in the watering can].";
	else:
		say "You don[apostrophe]t see anything that makes sense to put into the watering can."
		
Instead of filling the gas tank:
	if the player carries the watering can:
		try inserting the watering can into the gas tank.
		
Understand "fill [something] with/from [something]" as inserting it into (with nouns reversed).

Instead of inserting the pump into the watering can:
	say "You fill the can up with premium unleaded.";
	move the gasoline to the watering can.
	
Instead of burning the service station:
	try burning the pump.
	
Instead of burning the old advertisement:
	try burning the pump.
	
Instead of burning the pump:	
	say "When you apply a flame, nothing happens, and life goes on a usual.[paragraph break]";
	wait for any key;
	say "No, just joking. You die. Of course. And painfully, at that. In a ball of flame. Actually, two balls of flame: the ball of flame from the pump itself, then the ball of flame from the giant fuel reservoir buried under the service station.[paragraph break]On second thought, from your perspective, one ball of flame, because that is enough to kill you. You are not really troubled by the second ball of flame, which is, by very definition, overkill and superfluous to your state of existence.[paragraph break]";
	bestow "Penchant For Immolation";
	now the burntUp of the service station is true;
	now the pump is in the void;
	now the old advertisement is in the void;
	frontierDeath.
			
Section 17 - School House

The description of School House is "A simple, one-room brick school house with a small steeple and bell."

The steeple is scenery in School House. The description of the steeple is "A tall steeple that seems to exist just to get the bell up high enough to be heard all around."

Instead of climbing the steeple:
	say "It is a steeple. Not a climbing wall."
	
The bell is scenery in School House. The description of the bell is "A large, silver bell is housed near the top of the steeple."

Instead of doing something other than examining with the bell:
	say "The bell is too far away."

Instead of entering the School House for the first time:
	say "So one seems to be in the school -- just like everywhere else in this forsaken town.[paragraph break]";
	bestow "When Will You Learn?"

Section 18 - Monastery

The description of Monastery is "A walled fortress surrounding a chapel and some fields."

Instead of Entering the Monastery when the player is in monastery for the first time:
	say "One of the things that fortifications are particularly good at is keeping people out."
	
The fortifications are scenery in the Monastery. The description of the fortifications is "A star-shaped outer wall with murder holes, emplacements for hot oil, and sentry posts. These monks were not much into outreach." Understand "stone" or "masonry" or "wall" or "walls" or "fortification" or "curtain" or "murder hole" or "emplacement" or "emplacements" or "post" or "posts" as the fortifications.

Instead of attacking the fortifications for the first time:
	say "I hope you brought a battering ram or at least siege engine with you.[paragraph break]";
	bestow "Knife To A Gun Fight".
	
Instead of attacking the fortifications:
	say "After wailing on the thick stones walls for a while, it does not appear that you have made much progress in bringing them down."
	
Instead of climbing the fortifications:
	say "The outward slant of the curtain wall around the monastery makes climbing difficult without proper gear."
	
The chapel is scenery in Monastery. The description of the chapel is "A chapel of one of the Oblique Orders, its roof is pitched at an acute angle. It stands near the middle of the monastery." Understand "church" as the chapel. 

Instead of doing something other than examining with the chapel:
	say "The chapel is near the middle of the monastery, far behind the monastery fortifications."

The fields are scenery in the Monastery. The description of the fields is "Mostly hops." Understand "hops" or "field" as the fields.

Instead of jumping in the monastery for the first time:
	say "You bounce around like a  bunny.[paragraph break]";
	bestow "One With The Field".

Instead of doing something other than examining with the fields:
	say "The fields are in the distance, far behind the monastery fortifications."

Section 19 - Hospital

The description of Hospital is "A sprawling and state-of-the-art, but strangely windowless, medical facility."

Instead of entering the hospital when the player is in hospital for the first time:
	say "There are no doors and no windows. Not even a convenient air vent.[paragraph break]More to the point, however, you do not have insurance coverage, so even if you were to get in, it would be pointless.[paragraph break]";
	bestow "Note To Self: Get A Job".
	
Instead of entering the hospital:
	say "There are no doors or even windows. You don[apostrophe]t see a way in."

Section 20 - Motel

The description of Motel is "A classic two-level drive-in motel with no-vacancy sign out front. It looks a bit dumpy." Understand "hotel" or "inn" as the motel.

The neon sign is scenery in Motel. Understand "no-vacancy" or "vacancy" or "electric" or "electrical" as the neon sign.

The description of the neon sign is "The name of the down-at-the-heels motel strobes on and off in yellow neon: [quotation mark]Happy Sands Motel[quotation mark]. Ironically, some of the letters are out, so it just blinks back and forth between [quotation mark]Happy[quotation mark] and [quotation mark]Sad[quotation mark]. On closer inspection, it does not look like the word [quotation mark]No[quotation mark] next to [quotation mark]Vacancy[quotation mark] works either, but you guess from the state of the motel that this is never really an issue. The sign buzzes and occassionally emits bright sparks of arcing electricity in the humid, salty air."

Instead of touching or taking the neon sign for the first time:
	say "There is brief flash, as the sign discharges high voltage through your arm, across your chest, and down through your feet into the moist, salt-saturated soil.[paragraph break]That is a gentle way of saying that you[apostrophe]ve just been electrocuted.[paragraph break]";
	bestow "Grounded For Life";
	frontierDeath.
	
Instead of touching or taking the neon sign:
	say "No thanks. From here on out, you have adopted a strict policy of not touching neon signs. No exceptions."
	
Instead of searching or entering the motel when the player is in motel:
	say "You would never be so desperate as to set foot in that particular motel. Not even to catch pogomen."
	
Instead of sleeping when the player is in motel:
	try entering the motel.


Section 21 - Botanical Garden

The description of Botanical Garden is "Trimmed hedges line the well-intentioned paths of this herbal garden." Understand "hedge" or "hedges" or "path" or "paths" as the botanical garden. Botanical garden is a place.

A watering can is an open container in the Botanical Garden. The description of the watering can is "An old school gardening can: sheet metal and at least two gallons capacity. Unfortunately, the end of the spout is broken off and it can only pour, not sprinkle." 

The spout is part of the watering can. The description of the spout is "[one of]The watering can is no doubt self-conscious of its shortcomings when it comes to performance of nubby little spout, so please stop staring at it[or]The end of the spout is broken off, but the watering can is still capable of pouring[stopping]."

A single glove is in the Botanical Garden. The single glove is a wearable prop. The description of the single glove is "A single glove covered in rhinestones." Understand "rhinestone" or "rhinestones" as the single glove.

After wearing the glove for the first time:
	bestow "Michael Jackson Impersonator".
	
A water is in the watering can.  The indefinite article of water is "some". The description of the water is "Some rusty stagnant water."

A gasoline is in the void. The indefinite article of gasoline is "some". The description of the gasoline is "Smelly, oily, and light brown in color." Understand "gas" or "petrol" or "fuel" as gasoline.

Instead of doing something other than examining or emptying or drinking with the water:
	say "You are not keen to get the discolored water on your hands[if the single glove is worn], not even the gloved one[end if]."
	
Instead of doing something other than examining or emptying or drinking with the gasoline:
	say "You are not keen to get the stinky liquid on your hands[if the single glove is worn], not even the gloved one[end if]."
	
Instead of inserting something  (called the additive) into the watering can:
	if the additive is the gasoline or the additive is the water:
		continue the action;
	otherwise:
		say "You can only put a liquid in the watering can."
		
Instead of drinking the water:
	say "It[apostrophe]s too disgusting."
	
Instead of drinking the gasoline:
	say "You gag on the vapor as it approaches your mouth."


Emptying is an action applying to one thing. 	
Understand "pour" or "empty" or "dump" as "[emptying]".
Understand "[emptying] [something]" as emptying. 
Understand "[emptying] out [something]" as emptying.
Understand "[emptying] [something] out" as emptying.

Check emptying:
	if the noun is the watering can:
		if the watering can is not held by the player:
			say "(first taking the watering can)[command clarification break]";
			try silently taking the watering can;
		if the watering can contains nothing:
			say "The can is already empty.";
			stop the action;
	else if the noun is water:
		if the watering can contains water:
			continue the action;
	else if the noun is gasoline:
		if the watering can contains gasoline:
			continue the action;
	else:
		say "You can[apostrophe]t.";
		stop the action.
					
Carry out emptying:
	say "You pour out the ";
	if the watering can contains water:	
		say "water and";
		move the water to the void;
	else if the watering can contains gasoline:
		say "gasoline, dowsing everything including yourself in the flammable liquid[one of]. Did you mean to pour it into something or are you actually a latent pyromaniac with self-destructive tendencies? In any event[or][stopping]";
		move the gasoline to the location of the player;
	say " you now have an empty watering can."
		
Understand "[emptying] [something] in/into [something]" as inserting it into.

Section 22 - Blacksmith

The description of Blacksmith is "Black smoke pours from the chimney and hot coals are visible in the forge."

The chimney is a backdrop in Blacksmith. The description of chimney is "A crude stone chimney bellows smoke." Understand "smoke" or "stone" or "masonry" as the chimney.

Instead of entering the chimney:
	say "That[apostrophe]s not something you can enter -- and survive."

Instead of climbing the chimney for the first time:
	say "Funny thing about fire and all, but the chimney is too hot to climb.[paragraph break]";
	bestow "Fire equals Hot".
	
Instead of climbing the chimney:
	say "It is too hot to climb."
	
The coals are a backdrop in the Blacksmith. The description of the coals is "Red, hot coals. The air above them shimmers." Understand "coal" or "forge" as the coals. 

Instead of taking the coals for the first time: 
	say "Bravely, but not really too intelligently, you grab one and spend the thirty seconds throwing it from hand to hand, hoping that it will cool off. It doesn[apostrophe]t, so you toss it back in the pile.[paragraph break]";
	bestow "Hot Potatoe";
	bestow "Autocorrect";
	bestow "Hot Pototo".
	
Instead of taking the coals:
	say "They are too hot to handle."
	
Instead of doing something other than taking or examining with the coals:
	say "They are too hot!"

Section 23 - Farm

The description of Farm is "[if the burntUp of the farm is false]A red farmhouse and tall grain silo stand in front of furrowed fields of wheat[otherwise]A field of burnt earth and ashes[end if]." Understand "red" or "farmhouse" or "house" as the farm when the burntUp of the Farm is false. Understand "charred" or "field" or "fields" or "burnt" or "burned"  or "ash" or "ashes" as the Farm when the burntUp of the Farm is true. The farm has a truth state called burntUp. The burntUp of the farm is false. The printed name of the farm is "[if the burntUp of the farm is false]Farm[otherwise]Smoking Ruins[end if]". 

The wheat is scenery in the farm. The description of the wheat is "Waving fields of new-fangled gluten-free wheat." Understand "field" or "grain" as the wheat.

Instead of cutting or pulling or taking the wheat:
	say "It isn[apostrophe]t ready for harvest yet."
	
Instead of searching the wheat for the first time:
	say "You unexpectedly discover the severed head of a garden gnome.[paragraph break]Withdrawing the head from the wheat, you brush it off.[paragraph break][quotation mark]Hey, quit it![quotation mark] complains the head. [quotation mark]I[apostrophe]m sure you[apostrophe]ve got questions. We[apostrophe]ve all got questions. But truth be told, I[apostrophe]m not sure how I ended up in there.[quotation mark][paragraph break]You ask the gnome what you can do for him, since he obviously appears to have fallen on hard time, what with being separated from his body.[paragraph break][quotation mark]Oh, nothing really. I[apostrophe]m not so bad off. This isn[apostrophe]t the first time something like this has happened to me, you know. In fact, it seems to happen with disturbing regularity. Listen, why don[apostrophe]t you just chuck me back in there.[quotation mark][paragraph break][quotation mark]Okay,[quotation mark] you reply, [quotation mark]if that[apostrophe]s what you want.[quotation mark][paragraph break]The garden gnome head nods in agreement, or at least tries to, he more or less just rocks back and forth in your hand, but you know what he means, so you pitch him in a high arc over the field.[paragraph break]From deep in the wheat field you hear faintly, [quotation mark]Good shot![quotation mark] and realize how alone you feel in this desolate village, and how very possible it is that you might benefit from the assistance of a mental health professional."
	
Instead of entering the wheat for the first time:
	try searching the wheat.
	
Instead of entering the wheat:
	say "You are concerned that once you enter the wheat, you would have limited vision of what is around you."
	
The tall grain silo is scenery in Farm. The description of the tall grain silo is "A tall red metal cylinder with a domed top. The silo stands a few feet from the farmhouse."

Instead of climbing the tall grain silo:
	say "You can[apostrophe]t shimmy up a silo. There are no good handholds.".
	
Instead of eating the wheat for the first time:
	say "After the first few minutes of chewing the plant you can understand why early man learned to make bread instead.[paragraph break]";
	bestow "Still Awaiting The Neolithic Revolution".
	
Instead of eating the wheat:
	say "Hay is for horses!"
	
The charred bone is a prop. The charred bone is in the void. The description of the charred bone is "A blackened fragment of a long bone."

Instead of burning the wheat:
	say "You succeed in introducing slash and burn agriculture, but it doesn[apostrophe]t go very well for you. The field catches fire instantly and spreads immediately to the silo, which goes up like a torch. The silo collapses shortly afterwards on the farmhouse. The wooden farmhouse burns like a small sun. In the end, nothing is left. Nothing.[paragraph break]";
	bestow "Uncle Owen? Aunt Beru?";
	now the burntUp of the farm is true;
	now the wheat is in the void;
	now the tall grain silo is in the void;
	now the charred bone is in farm.
	

Section 24 - Aquarium

The description of Aquarium is "The snail shell-shaped building is surrounded by fountains that shoot water in arcs back and forth above the sidewalk."

The fountains are plural-named scenery in the aquarium. The description of the fountains is "Water shoots back and forth at unpredictable intervals between carved scallops, conchs, cowries, and clams." Understand "water" or "fountain" or "scallop" or "scallops" or "conch" or "conches" or "cowrie" or "cowries" or "shell" or "clam" or "clams" or "carving" or "carvings" or "sidewalk" or "sidewalks" as the fountains.

Section 25 - Post Office

The description of Post Office is "A modern building with advertisements in the window about how the post office is still somehow relevant." Understand "window" or "windows" or "glass" or "pane" as the Post Office.

The postal advertisement is scenery in the Post Office. The description of the advertisement is "Stick figures have an entirely contrived conversation about how the post office is still a cornerstone of the community despite modern technologies such as the facsimile machine and dial-up internet." Understand "ad" or "advertisements" or "ads" as the postal advertisement. 

Instead of doing something other than examining with the postal advertisement:
	say "The advertisements are behind the glass windows of the post office."

Section 26 - Dark Alley

The description of Dark Alley is "A dark and filthy alley runs between the suspiciously pristine streets of Pogoland." Dark Alley is a place. Understand "passage" or "passageway" as the Dark Alley.

Section 27 - Pogoland Terminal

The description of Pogoland Terminal is "A concrete platform next to some maglev rails."  Pogoland Terminal is a place.

The superconducting rails are scenery in Pogoland Terminal. The description of the superconducting rails is "Parallel tracks of room temperature superconductor. They buzz with electricity." Understand "maglev" or "magnetic" or "electric" or "electrical" or "superconductor" or "room temperature" as the superconducting rails.

Instead of doing something other than examining with the superconducting rails:
	say "There is enough power running through those rails to atomize you. You would rather not fiddle with them."
	
Section 28 - The Boat

The fishing boat is down from the Wharf. The description of the boat is "It lists slightly to one side and the hull has been patched in places without a great deal of art. Under the circumstances, however, you consider it seaworthy[one of] -- enough[or][stopping]. A small outboard motor at the rear [motorPosition]." The possible exits of the fishing boat are "From here, you can go back up dilapidated ladder to the wharf." The fishing boat has a truth state called hasExploded. The hasExploded of the fishing boat is false.

The engine is scenery in the fishing boat. The description of the engine is "[one of]Given the size of the boat, you won[apostrophe]t be setting any speed records, but the motor looks to be in reasonable repair. [or][stopping]On top of the engine, there is a gas cap. To the side, there is a valve marked choke. On the front, there is a speed control, which is in the [quotation mark]fast[quotation mark] position. [one of] In fact, it looks like it has been pushed a bit beyond the marking, and the handle is bent a bit in that direction.[paragraph break]It speaks of desperation.[paragraph break]Or poor manufacturing processes; hard to say. [paragraph break][or][stopping]Between the gas cap and the speed control a plastic handle that dangles by a bit of cord. The motor [motorPosition]."  The engine can be uptilted or downtilted. The engine is uptilted. Understand "motor" or "outboard" as the engine. 

Understand "raise [something]" or "lift [something]" or "tilt [something] up" as pulling when the player is in the Fishing Boat.

Understand "lower [something]" as pushing when the player is in the Fishing Boat.

Understand "tilt [something]" as pushing when the player is in the Fishing Boat and the engine is upTilted.

Understand "tilt [something]" as pulling when the player is in the Fishing Boat and the engine is not upTilted.

To say motorPosition:
	say "is currently tilted [if the engine is uptilted]up, out of the[otherwise]down, in the[end if] water"

Instead of climbing the wharf:
	try climbing the ladder.
	
Instead of jumping when the player is on the wharf:
	say "The weathered wood creaks and bends every time you land."
	
Instead of burning the wharf:
	say "Constantly soaked by the spray of breaking waves, the wharf is too damp to take flame."
	
Instead of attacking the wharf for the first time:
	say "The Klingon warrior springs into action, cradling his sharp, curved batleff with expertise. He lets out a war cry and charges... oh wait. Did you say wharf?[paragraph break]";
	bestow "Qapla!".
	
Instead of attacking the wharf:
	say "Since you are standing on the wharf, you are understandably reluctant to damage it, taking note of the jagged rocks and breaking surf below you."

The rickety ladder is a backdrop. The rickety ladder is in the Wharf and the fishing boat. The description of the rickety ladder is "Splinters held together with rust."

Instead of climbing the ladder:
	if the player is in the fishing boat:
		try going up;
	otherwise:
		try going down.
		
Instead of attacking or pulling or pushing the ladder:
	say "It sways back and forth under your assault, and you fall into the boat below.";
	try going down.
	
Instead of burning the ladder:
	say "The water-logged ladder is too soaked to catch fire."

The propeller is part of the engine. The description of the propeller is "These razor-sharp rotating blades propel the boat through the water."

Instead of doing something other than examining with the propeller:
	say "You[apostrophe]re more intent on keeping all your fingers than monkeying around with the rotating blades of the propeller."

Instead of going down from the Wharf when the hasExploded of the fishing boat is true:
	say "There is nothing below you but sharp rocks and treacherous waves."

After going down from the Wharf:
	say "You carefully descend the splintery ladder and jump into a beat-up fiberglass fishing boat.";
	try looking.
	
After going up from the fishing boat:
	say "You scale the shaky ladder on the wharf. [one of]A rung breaks off[or]A few nails pop out[or]One side of the ladder gives way[or]A few more nails pop out[or]The [quotation mark]good[quotation mark] side of the ladder seems to be developing a lengthwise crack[or]Bits of dust fly from the ladder[or]Termites flee from the crumbling ladder[or]the ladder shudders ominously[stopping].";
	try looking.
	
The gas cap is part of the engine. The description of the gas cap is "A screw-on plastic cap. The cap is [if the gas cap is screwed tight]screwed on tight[otherwise]unscrewed, but retained by an internal chain[end if]." The gas cap can be screwed tight. The gas cap is screwed tight. Understand "chain" as the gas cap when the gas cap is not screwed tight.

Instead of opening the gas cap:
	if the gas cap is screwed tight:
		say "After a few turns, the cap is open. The cap is retained by a small chain so it can[apostrophe]t accidentally fall into the water. You can now see into the gas tank.";
		now the gas cap is not screwed tight;
		now the gas tank is open;
	otherwise:
		say "The gas cap is already unscrewed."
		
Instead of turning the gas cap:
	if the gas cap is screwed tight:
		try opening the gas cap;
	otherwise:
		try closing the gas cap.
		
Instead of taking off the gas cap:
	try opening the gas cap. 
	
Instead of putting the gas cap on something (called the receiver):
	if the receiver is the gas tank or the receiver is the engine:
		try closing the gas cap;
	otherwise:
		say "You can[apostrophe]t put the gap cap on [the receiver]."
			
Instead of opening the gas tank:
	try opening the gas cap.
	
Instead of closing the gas tank:
	try closing the gas cap.
		
Instead of closing the gas cap:
	if the gas cap is not screwed tight:
		say "You screw down the gas cap and it makes a tight seal with the engine.";
		now the gas cap is screwed tight;
		now the gas tank is closed;
	otherwise:
		say "The gas cap is already securely tightened."
		
Does the player mean inserting the gasoline into the gas tank:
	it is very likely.
		
Instead of inserting the gasoline into something (called the recipient):
	if the recipient is the gas tank:
		if the gas tank is closed:	
			say "You would need to open the gas tank first.";
		otherwise:	
			say "You pour the entire contents of the watering can into the thirsty tank.";
			move the gasoline to the gas tank;
	otherwise:
		continue the action.
		
Instead of inserting the watering can into something (called the recipient):
	if the watering can contains water:
		try inserting the water into the gas tank;
	else if the watering can contains gasoline:
		try inserting gasoline into the gas tank;
	else if the watering can contains nothing:
		say "The can is empty.";
		stop the action;
	otherwise:
		continue the action.
		
Instead of inserting the water into something (called the recipient):
	if the recipient is the gas tank:
		say "You realize that would irreparable damage the engine and think better of it. At the last moment, you pour the water overboard.";
		move the water to the void;
	otherwise:
		continue the action.

To say tankDescription:
	say "[if gasoline is in the gas tank]Full[otherwise]Bone dry[end if]".

The gas tank is a closed openable container. The gas tank is part of the engine. The description of the gas tank is "[tankDescription]."

The choke valve is part of the engine. The description of the choke valve is "A knob that rotates either on (choke) or off. Current the choked is [if the choke is not engaged]not [end if]engaged."  The choke valve can be engaged. The choke valve is not engaged. 

Instead of opening the choke:
	try switching on the choke.
	
Instead of closing the choke:
	try switching off the choke.
	
Instead of turning the choke:
	if the choke is engaged:
		try switching off the choke;
	otherwise:
		try switching on the choke.
	
Instead of switching on the choke valve:
	if the choke valve is not engaged:
		say "You flip the choke valve up, engaging the choke.";
		now the choke valve is engaged;
	otherwise:
		say "The choke valve is already in the engaged position."
		
Instead of switching off the choke valve:
	if the choke valve is engaged:
		say "You cut out the choke.";
		now the choke valve is not engaged;
	otherwise:
		say "The choke valve is already off."
		
Understand "engage [something]" as switching on.
Understand "disengage [something]" as switching off.

The speed control lever is a part of the engine. The description of the speed control lever is "A lever that selects the engine speed by sliding back and forth between [quotation mark]slow[quotation mark] at the left to [quotation mark]fast[quotation mark] at the right. The lever is currently pushed to the right and then some." Understand "throttle" as the speed control lever.

The handle is part of the engine. The description of the handle is "It looks like the starter cord on your dad[apostrophe]s lawn mower: a knurled plastic handle to which a heavy cord is attached." Understand "cord" or "starter" or "magneto" as the handle.

Instead of pulling the handle:
	if the engine is uptilted:
		say "[one of]This is a boat, not a helicopter. [or][stopping]You realize you won[apostrophe]t get anywhere with the motor tilted forward and the propeller out of the water.";
	otherwise:
		if the gasoline is not in the gas tank:
			say "[one of]The cord makes a cord-pulling sound and retracts back into the engine. Clearly, this situation is going to require the utmost knowledge of the principles of operation of an internal combustion engine[or]Nothing happens[or]The cord makes a cord-pulling sound, but nothing happens, which is distinctly different from the sound of an engine starting[stopping].";
		otherwise:
			if the gas cap is not screwed tight:
				say "[one of]Fuel sloshes back and forth, some spills out. A rainbow pattern forms on the water. Maybe you better put the cap on the fuel tank?[or]More fuel splashes out -- it[apostrophe]s going everywhere. This is sort of dangerous.[or]Most of the fuel has splashed out of the tank. If you don[apostrophe]t put the cap on, you won[apostrophe]t have enough to go anywhere. Also, you are kind of polluting the water around the boat -- not cool. A few fish float to the surface, which is covered in spilled fuel.[or][thirdCapWarning][or]No. You have learned your lesson about leaving the gas cap off.[stopping]";
			otherwise:
				if the choke is not engaged:
					say "[one of]The engine sputters[or]The engine sputters; it sounds like it is starved for fuel[or]Despite the throttle being all the way to the right in the fast position, something the engine is not getting enough fuel to start[stopping].";
				otherwise:
					say "The engine kicks to life and, the speed control being set to full, you soon find yourself skimming across the wave tops with pieces of the wharf in tow behind you. You wind back the choke and settle in for a journey. You don[apostrophe]t care where you are going, as long as it is away from Pogoland.[paragraph break]";
					wait for any key;
					lemurEnding.
				
To say thirdCapWarning:	
	say "Standing in a fuel-soaked boat, covered from head to toe in in gasoline, surrounded by a shimmering slick of fuel that has already reached the shore and is drifting down the coast, a random spark lights it all up.[paragraph break]";
	explode the boat.
	
To explode the boat:	
	say "BOOM! The boat briefly flirts with the idea of being an airplane.[paragraph break]";
	now the hasExploded of the fishing boat is true;
	if the player carries the watering can:
		move the watering can to the fishing boat;
	frontierDeath.
	
Instead of pushing the engine:
	if the engine is uptilted:
		say "The motor teeters back and splashes into the water.";
		now the engine is downtilted;
	otherwise:
		say "The motor is already in the down position and ready to run."
		
Instead of pulling the engine:
	if the engine is downtilted:
		say "With some effort, you raise the engine out of the water.";
		now the engine is uptilted;
	otherwise:
		say "The engine is already high and dry."
		
Instead of pushing or pulling the speed lever control:
	say "You try pushing and pulling the lever in both directions[one of ] and even spend some time waggling it back and forth, trying to get it to loosen up[or][stopping], but it seems frozen in the [quotation mark]fast[quotation mark] position."
	
Instead of filling the engine:
	try filling the gas tank.
				
Instead of searching the gas tank:
	if the gas tank is open:
		say "[tankDescription].";
	otherwise:
		try opening the tank;
		say "(first opening the tank)[command clarification break]";
		now the gas cap is not screwed tight;
		now the gas tank is open;
		say "[tankDescription]."
		
Instead of doing something with the gas tank when the gas tank is not open:
	say "(first unscrewing the gas cap)[command clarification break]";
	continue the action.


Section 29 - Dealing with Pogorooms

Instead of taking a pogoroom (called the QTH):
	say "[The QTH] [are] not something you can take."
	
Instead of entering a pogoroom (called the QTH) when the player is in Pogoland:
	if the localeDescriptor of the QTH is:
		-- structure:
			say "Everything is locked up[one of]. Looks like the entire town has evacuated[or][stopping]!";
		-- place:
			say "You[apostrophe]re already at the [location].";
		-- artifact:
			say "You can[apostrophe]t, but you are standing right next to it."
			
Before doing something with a pogoroom (called the QTH) when the player is in the Pogoland:
	if the current action is examining:
		continue the action;
	if the player is not in the QTH:
		say "You would have to go over there." instead;
	otherwise:
		continue the action.

Section 30 - Enforced Orthotopia

Before going a blasphemous direction when the location is Pogoland:
	say "[one of]The town seems to be laid out with avenues and streets running north-south and east-west. Going diagonally isn[apostrophe]t an option[or]You can[apostrophe]t go that way[stopping].";
	stop the action.

Chapter Gym Fight

Section 1 - Gym Interior

The gymnasium is a room. The description of the gymnasium is "A typical pogogym, the light streaming in from high windows accentuates the griminess of the worm gym mats." The possible exits of the gymnasium are "You don[apostrophe]t see any doors leading out of the gym." Understand "gym" as gymnasium. The gymnasium has a number called roundsElapsed. The roundsElapsed of the gymnasium is 0.

The rope is in the gymnasium. The description of the rope is "A thick natural fiber rope that hangs down from the ceiling off to one side of the gym."

Instead of taking the rope:
	say "How can you take it? The other end is attached to the ceiling."

The gymceiling is privately-named scenery. The gymceiling is in the gymnasium. The printed name of the gymceiling is "ceiling". The description of the gymceiling is "A high ceiling supported by metal beams." Understand "beams" or "ceiling" or "roof" as the gymceiling.

Instead of climbing the rope:
	say "Channeling your inner-grammar school, you reach as high as you can, grab the rope between your knees and start shimmying.[paragraph break]A few minutes later, even with the windows, you start swinging until you can grab the ledge. The rest isn[apostrophe]t pretty, but then again, you are not getting points for style. After looping one leg over the window frame, as you prepare to sort of roll over it, the whole ledge gives way and you find yourself rolling down the sloped tile roof of a traditional pagoda.[paragraph break]";
	bestow "Acrobatic";
	teleport the player to the Dojo.
	
Instead of cutting the rope:
	say "[one of]With what? Are you going to chew through it? This rope is as thick as your wrist[or]Cutting the rope would be self-defeating[stopping]."
	
Instead of going up when the player is in the gymnasium:
	try climbing the rope.
	

Chapter The Void

section 1 - Plato's Cave

[An unconnected place  where 'original' clonable objects live... very platonic.]

The Void is a room.   
The Void contains a PogoBall-kind called PogoBall.
The Void contains a PogoChum-kind called PogoChum.
The Void contains a PogoMeth-kind called PogoMeth. PogoMeth is edible. PogoMeth can be trippy. PogoMeth is not trippy. PogoMeth has a truth state called hasHealed. The hasHealed of PogoMeth is false.
The Void contains a PogoEgg-kind called PogoEgg.
The Void contains a PogoIncense-kind called PogoIncense. PogoIncense can be ignited. PogoIncense is not ignited.

Definition: A thing (called the contraband) is safe from seizure if the contraband is the phone or the contraband is a pogothing.

The glass of champagne is a prop in the void. The description of the champagne glass is "A tall flute of the bubbly liquid."  Understand "flute" or "swill" or "alcohol" or "drink" or "beverage" or "bubbly" or "liquid" as the glass of champagne.

The giant ball is a closed transparent container in the void. The description of the giant ball is "The scene outside the ball is distorted and colored red by the translucent plastic case." Understand "pogoBall" or "plastic" or "case" or "shell" as the giant ball. The giant ball has a number called escape attempts. The escape attempts of the giant ball are 0. The giant ball has a number called rounds imprisoned. The rounds imprisoned of the giant ball are 0.  

Does the player mean examining the giant ball:
	it is very likely.

Instead of doing something other than searching or examining or attacking with the giant ball:
	say "Your actions seems futile, and every moment, the two halves of the plastic shell draw closer together."

Instead of exiting when the player is in the giant ball for the first time:
	say "You can[apostrophe]t squeeze out through the small crack that remains. You[apostrophe]ll need to beat your way out, if you can. If you have been waiting for violence to be the answer to something, this is it.[paragraph break]";
	bestow "Violence Vindicated".
	
Instead of exiting when the player is in the giant ball:
	say "The crack is too small!"
	
Instead of looking when the player is in the giant ball:
	try examining the giant ball.
	
Does the player mean attacking the giant ball: it is likely.
	
Instead of attacking the giant ball:
	if escape attempts of the giant ball is:
		-- 0:
			say "You slam your shoulder against the curved walls of your plastic prison and the giant pogoBall bursts apart, spilling you onto the ground.";
			let R be the location of the giant ball;
			move the player to R;
			move the giant ball to the void;			
			increase the escape attempts of the ball by one;
			now rounds imprisoned of the giant ball is 0;
		-- 1:
			say "[one of]You pound the sides of the pogoBall with your fists, but the ball does not yield[or]You launch a flying kick against the walls of the ball. You don[apostrophe]t open it, but you do send the ball into a spin, tumbling you head over heels[or]You slam into the plastic walls with everything you have, but the ball continues to seal up[or]You pound futilely against the walls of the red orb[stopping]."
			
Instead of going a direction when the player is in the giant ball:
	try exiting.
	
The game counter is a thing. The game counter is in the void. The game counter can be running. The game counter is not running.
	

section 2 - Badge

The badge is a prop in the void. The securityColor of the badge is white. The description of the badge is "The badge is [securityColor of the badge][if the securityColor of the badge is not white] with a white stripe diagonally across it[end if] and the top of the badge is labeled [quotation mark]Nyantech Headquarters[quotation mark] in the usual font. Below that, a picture of your face overlaid with a bright, [team color of the player] number [pogoLevel of the player]." The printed name of the badge is "[securityColor of the badge] badge[if the securityColor of the badge is not white] with a white stripe[end if]". The badge has a truth state called hasBeenLiteral. The hasBeenLiteral of the badge is false.
Understand "white" as the badge when the securityColor of the badge is white. 
Understand "green" as the badge when the securityColor of the badge is green.
Understand "blue" as the badge when the securityColor of the badge is blue.
Understand "red" as the badge when the securityColor of the badge is red.
Understand "gold" as the badge when the securityColor of the badge is gold.

Instead of unclipping the badge:
	try taking off badge.

Does the player mean pushing the badge:
	it is unlikely.

Instead of examining the badge for the first time:
	say "It[apostrophe]s [securityColor of the badge][if the securityColor of the badge is not white] with a white stripe diagonally across it[end if] and has a nice picture of your face...[paragraph break]Wait a minute? When did they have a chance to take that... ?[paragraph break]";
	bestow "Sometimes Technology Is Mysterious".

Instead of taking off the badge:
	try dropping the badge.

Instead of dropping the badge for the first time:
	say "No, you[apostrophe]ve worked too hard and come too far to cast it all away.[paragraph break]";
	bestow "Hoarder".
	
Instead of dropping the badge, say "No. They[apostrophe]ll have to peel it from your cold, dead hands before you[apostrophe]d give it up."

Definition: a door (called the portal) is interdicted if the securityColor of the portal is greater than the securityColor of the badge.

Instead of opening or touching or attacking or cutting or pushing or pulling or turning or spinning or licking or tasting or rubbing an interdicted door for the first time:
	say the headline of the location;
	say "Your arm immediately goes numb and drops to your side when you touch the stairway door. After a moment, you swing your arm clumsily from the shoulder and sensation slowly returns. When the pins and needles abate, you seem undamaged. Well, no harm, no foul.[paragraph break]";
	bestow "Misplaced Optimism".	
	
Instead of opening or touching or attacking or cutting or pushing or pulling or turning or spinning or licking or tasting or rubbing an interdicted door for the second time:
	say the headline of the location;
	say "When you touch the door, your knees feel wobbly and buckle beneath you. You catch yourself against the wall and manage a controlled descent to the concrete floor, where you sit for a moment. The feeling wears off as quickly as it onset and you are back on your feet in no time. You reason that you shouldn[apostrophe]t have skipped breakfast, the most important meal of the day.[paragraph break]";
	bestow "Specious Reasoning".
	
Instead of opening or touching or attacking or cutting or pushing or pulling or turning or spinning or licking or tasting or rubbing an interdicted door for the third time:
	say the headline of the location;
	say "The last thing you remember was trying to open the stairway door. You aren[apostrophe]t sure how long you[apostrophe]ve been passed out, but you are glad that there isn[apostrophe]t a lot of traffic on the stairs and that no one saw you. Perhaps you are dehydrated from all the walking you[apostrophe]ve been doing while playing the game.[paragraph break]";
	bestow "Poor Understanding of Physiology".
	
To say bright flash:
	say "There is a bright flash as you touch the door...[paragraph break]".
	
Instead of opening or touching or attacking or cutting or pushing or pulling or turning or spinning or licking or tasting or rubbing an interdicted door for the fourth time:
	say "[bright flash]";
	teleport the player to the Infirmary;
	say "A nurse removes a dressing from your chest. At first glance, the skin underneath appears to be grey and glistening, but as the gauze is peeled back, you can see more clearly that it is just flesh colored, like the surrounding skin.[paragraph break][quotation mark]You took a nasty fall on those stairs,[quotation mark] says the nurse sympathetically. Her outfit is decidedly retro, a uniform right out of a 1950s soap opera: white apron and hat, with her hair pulled back in a practical bun. [quotation mark]I wish they would improve the lighting on those stairs.[quotation mark][paragraph break]Before you can say anything else, she certifies you fit as a fiddle and guides you to a waiting elevator. The elevator doors close behind you.";
	hospital discharge.
	
Instead of opening or touching or attacking or cutting or pushing or pulling or turning or spinning or licking or tasting or rubbing an interdicted door for the fifth time:
	say "[bright flash]";
	teleport the player to the Infirmary;
	say "The same nurse as before leans over you and removes some stickers attached to your chest and unclips a glowing red device from your right index finger.[paragraph break][quotation mark]Perhaps you should stick to the elevator. I tell you, those stairs can be treacherous. I wish they would give them a coat of non-skid paint. More people lose their footing in there…[quotation mark][paragraph break]Before you can say anything else, she certifies you ship shape and guides you to a waiting elevator. The elevator doors close behind you.";
	hospital discharge.

Instead of opening or touching or attacking or cutting or pushing or pulling or turning or spinning or licking or tasting or rubbing an interdicted door for the sixth time:
	say "[bright flash]";
	teleport the player to the Infirmary;
	say "The droning whine fades and becomes a steady beat. The nurse replaces two paddles on a red cart covered in vials, syringes, and empty plastic packets. She pulls a tube from your throat that come to think of it has been puffing air into your lungs, removes a tube from somewhere on your left leg, and pulls off all the stickers and wires.[paragraph break]Wiping the perspiration from her forehead and replacing the hat that must have fallen off at some point, she reassures you, [quotation mark]You took a bit of a spill on the stairs and gave your ankle real twist, but now you[apostrophe]re bright eyed and bushy tailed.[quotation mark] Before you can say anything else, she certifies you ship shape and guides you to a waiting elevator. The elevator doors close behind you.[paragraph break]";
	bestow "What[apostrophe]s wrong with this picture?";
	hospital discharge.
	
Instead of opening or touching or attacking or cutting or pushing or pulling or turning or spinning or licking or tasting or rubbing an interdicted door:
	say "[bright flash]";
	teleport the player to the Infirmary;
	say "You wake up in a glowing vat of viscous pink liquid in a room full of blinking lights. Tubes retract from your body and the liquid drains. After a while, you feel well enough to stand up, find your clothes, and get dressed. As you slip on your shoes, the floor begins to move like a conveyor belt, which deposits you in the elevator.";
	hospital discharge.
	
To hospital discharge:
	now the elevator is not doorsajar;
	teleport a random number between 1 and 3 employees from the void to the elevator;
	teleport a random number between 1 and 3 visitors from the void to the elevator;
	now the floor level of the elevator is infirmary;
	teleport the player to the elevator;
	let R be a random number between 1 and 2;
	if R is:
		-- 1:
			now the elevator is upward;
			now the Selected corresponding to the Niveau of Cafeteria in the Table of Building Floors is true;
		-- 2:
			now the elevator is not upward;
			now the Selected corresponding to the Niveau of Lobby in the Table of Building Floors is true;
	the next floor is reached in 1 turn from now.

section 3 - The Salmon of Turpitude

The Salmon of Turpitude is a prop in the void. It is proper-named. The description of the Salmon of Turpitude is "A large Atlantic salmon with an undeserved reputation." The Salmon of Turpitude has a truth state called isFound. The isFound of the Salmon of Turpitude is false.

Instead of eating the Salmon of Turpitude, 
	say "You are not sure it[apostrophe]s fresh enough to consider as sushi."
	

Book 3 - Characters

Chapter - 1- The Player

The description of the player is "[one of]You are scruffy and disheveled, having played the game for several days straight. Luckily, your allergies are playing up, so scent isn[apostrophe]t an issue[or]Your hip is nearly healed after that incident involving the crosswalk, pick-up truck, and a rare pogoman in the middle of an intersection[or]Your thumbs twitch, ready to collect [apostrophe]em all, or perhaps from too much caffeine and not enough sleep[or]You wonder if the constant need to look at yourself reflects some budding narcissism[or]No more rundown than your average Pogoman player[stopping].";

The clothes are part of the player. The description of the clothes is "Comfortable, and definitely not formal."

Instead of taking off clothes:
	say "Your sense of propriety rails against you doing so."
	
Before wearing clothes:
	say "You are already wearing your clothes.";
	the rule succeeds.
	
Instead of looking under clothes:
	say "Nothing but you."
	


Chapter - 2- Phone

The phone is a prop carried by the player. The description of the phone is "A brand new Nyantech T8000 cell phone with 6G connectivity, powered by a Teslatronic Energy Module. You can activate the phone[apostrophe]s scanner to bring up a map of the area by using the [italic type]scan[roman type] command." Understand "cell" or "mobile" or "cellular" or "GSM" or "portable" or "telephone" or "T8000" as the phone.


The phone can be pokedat. The phone is not pokedat. 
The phone can be hung. The phone is not hung. 
The phone has a number called the ignored command count. The ignored command count is 0.
The phone has a number called times rebooted. The times rebooted of the phone is 0. 

To freeze the phone:
	now the phone is hung;
	now BLOCKPOGOMANFLAG is true.

The Teslatronic Energy Module is part of the phone. The description of the Teslatronic Energy Module is "The TEM is buried deep within the phone behind layers of radiation shielding, but you are not worried because the phone comes with a guarantee that the exposure is no worse than going through airport screening." Understand "TEM" as the Teslatronic Energy Module.

Instead of opening the Teslatronic Energy Module for the first time:
	say "Exposing everyone in the city to plutonium would not be a good idea, so the TEM is factory-sealed.[paragraph break]";
	bestow "Sealed For Your Protection".
	
Instead of opening the phone:
	try opening the Teslatronic Energy Module.
	
Instead of putting the phone on something:
	try dropping the phone.
	
Instead of inserting the phone into something:
	try dropping the phone.
	
Instead of taking the Teslatronic Energy Module:
	try opening the Teslatronic Energy Module.
	
Instead of opening the Teslatronic Energy Module:
	say "The module is an integral part of the phone. If it ever fails, you will just have to buy another phone. Marketing."

Instead of throwing the phone at:
	try dropping the phone.
	
Instead of attacking the phone:
	try dropping the phone.
	
Instead of inserting the phone into:
	try dropping the phone.
	
Instead of dropping the phone:
	say "You could not bear for the phone to leave your hand for even a second -- you need the phone to play Pogoman GO!"
	
Before doing something with the phone:
	if the phone is hung:
		if the current action is rebooting:
			continue the action;
		otherwise:
			stop the action;
	otherwise:
		if the current action is rebooting, charging, eating, examining, dropping, touching, rubbing, licking, burning, opening, attacking, inserting into or throwing at:
			continue the action;
		if the current action is putting on:
			continue the action;
		if the current action is showing to:
			continue the action;
		if the current action is giving to:
			continue the action;
		if the current action is burning:
			continue the action;
		otherwise:
			say "The phone has been optimized for playing Pogoman GO! All other features that might consume energy have been disabled.[paragraph break]";
			if the phone is not pokedat:
				bestow "My Phone Doesn't Play That";
				now the phone is pokedat;			
			stop the action.
			

Instead of burning the phone for the first time:
	say "This phone is not a burner.[paragraph break]";
	bestow "Rimshot!".
	
Instead of burning the phone:
	say "You would not dream of harming your beloved phone."
		
Dialing is an action applying to one thing. Understand "dial [something]" as dialing.

Check dialing:
	if the noun is not phone:
		say "That's not something you can do with [a noun]." instead.
		
Charging is an action applying to one thing. Understand "charge  [something]" as charging.	

Check charging:
	If the noun is not the phone:
		say "You can't charge [a noun]." instead.
		
Phone blocking is an action applying to nothing. Understand "email" or "calendar" or "facebook" or "gmail" or "clock" or "twitter" or "tumblr" or "tumble" or "tweet" or "instagram" or "snapchat" or "camera" or "calculator" or "flashlight" or "compass" or "contacts" or "drive" or "dropbox" or "netflix" or "chrome" or "safari" or "ingress" or "messenger" or "news" or "phone" or "skype" or "check mail" or "check facebook" or "update facebook" or "update status" or "post status" or "check time" or "google" or "snap" or "siri" or "ok google" as phone blocking.

Carry out phone blocking:
	try squeezing the phone.
		
Instead of charging the phone:
	say "The Nyantech T8000 never needs to be charged. Never. You wonder about that sometimes.[paragraph break]";
	bestow "Science Is Fabulous!".
	
PhoneObject blocking is an action applying to one topic. Understand "email [text]" or "dial [text]" or "call [text]" or "tweet [text]" or "photograph [text]" or "message [text]" or "SMS [text]" or "post [text]" or "google [text]" or "text [text]" as phoneObject blocking.

Carry out phoneObject blocking:
	try squeezing the phone.

To phoneDeath:
	say paragraph break;
	say "[bold type]*** YOUR PHONE HAS DIED ***[roman type][paragraph break](RESTART, RESTORE, AMUSING, QUIT)[paragraph break]>";
	wait for any key;
	say paragraph break;
	wait for any key;
	clear the screen;
	if the player is in a room adjacent to the Perilous Passageway:
		say "Some nebulous time later, you regain consciousness not too far from the passageway, where you were so ignominiously assaulted. For the rest of the day you[run paragraph on]";
	otherwise:
		say "A day goes by while you[run paragraph on]";
	say " [one of]argue with your mobile phone provider about the terms of your phone plan[or]try to find another T8000 phone -- looks like other Pogoman GO! players have been buying them up. Finally, you find one[or]try to recover data off what is left of your SIM card[or]scrape together funds to buy yet another phone[or]max out your last credit card to buy a second-hand T8000 from Craig's List[or]solder together bits of discarded cell phones to make one that works[or]panhandle a used cell phone from strangers[stopping].[paragraph break]Worn out by so much activity not involving actual playing of Pogoman GO! you collapse of exhaustion.";
	openGame;
	try looking.
	
Chapter - 3 - Oswaldo

[Poor Oswaldo never really sets foot in the action, he's just mentioned a few times and has a smaller role than envisioned. He is primarily around as a clue bat. He has found that he can just phone it all in from the void rather than live in the town.]

Oswaldo is a person. Oswaldo is in the void.
Oswaldo has a number called clue bat. The clue bat of Oswaldo is 0.

The scrap of paper is in the void. The description of the scrap of paper is "A scrunched up piece of paper with a picture of a golden chalice with bolts of green lightning zig-zagging upwards from it." Understand "golden" or "gold" or "chalice" or "lightning" or "green" as the scrap of paper.

The gum wrapper is in the void. The description of the gum wrapper is "A carefully folded aluminum gum wrapper; on the inner surface, someone has drawn a picture of a green arrow pointing to a blue whale surrounded by colored circles." Understand "blue" or "whale" or "shiny" or "circle" or "circles" as the gum wrapper.

The keychain is in the void. The description of the keychain is "A high-tech souvenir keychain of the Nyantech corporate mascot, the Nyantech Cat. They keychain is made of 3D-printed red plastic." Understand "red" or "cat" or "nyantech cat" or "mascot" or "souvenir" as the keychain.

Does the player mean examining the keychain:
	it is unlikely.

This is the clue bat rule: [fired from every turn during Exploring the Tower]
	if the player is in HQ or the player is in Stairwell:
		if the securityColor of the badge is:
			-- white:
				if the clue bat of Oswaldo is greater than GREEN_CLUEBAT_TURNS:
					say "[greenClueBat]";
					bestow "No Mere Janitor!";
					move the scrap of paper to the location of the player;
					now the clue bat of Oswaldo is 0;
				else if the scrap of paper is in the void: 
					increase the clue bat of Oswaldo by 1;
			-- green:
				if the clue bat of Oswaldo is greater than BLUE_CLUEBAT_TURNS and the gum wrapper is in the void:
					say "[blueClueBat]";
					bestow "Kids These Days!";
					now the player carries the gum wrapper;
					now the clue bat of Oswaldo is 0;
				else if the gum wrapper is in the void:
					increase the clue bat of Oswaldo by 1;
			-- blue:
				if the clue bat of Oswaldo is greater than RED_CLUEBAT_TURNS and the keychain is in the void:
					say "[redClueBat]";
					bestow "Oswaldo Works In Mysterious Ways";
					move the keychain to the location of the player;
					now the clue bat of Oswaldo is 0;
				else if the keychain is in the void:
					increase the clue bat of Oswaldo by 1.
	
After examining the gum wrapper for the first time:
	bestow "Now It Is All Clear".
	
After examining the scrap of paper for the first time:
	bestow "Wanted: One Grail".
	
To say greenClueBat:
	say "A clumsy but spry janitor who bears a striking resemblance to Oswaldo, the local conspiracy theorist, rumbles by quickly pushing an overloaded garbage barrel. He turns the corner rapidly spilling some of the junk.[paragraph break]".
	
To say blueClueBat:
	say "Someone pegs you in the head with a little bit of something shiny. It takes you a minute to find it.[paragraph break]As you unroll it, you mumble to yourself about the deplorable behavior of gamers these days. You can hardly belief that another Pogoman GO! player would stoop to winging a bit of discarded gum wrapper at you from behind your back. The nerve.[paragraph break]".
	
To say redClueBat:
	say "You notice a man standing next to you -- disturbingly, you didn[apostrophe]t hear him coming. He was not here, and now he is just here. Weird.[paragraph break]He is wearing dark sunglasses, an obviously fake mustache, and his attempt at limping is comical. It takes you a minute, but you realize you have seen him around before -- he is undoubtedly local conspiracy buff Oswaldo, who has a long ranted about the ulterior motives of Nyantech.[paragraph break]As you turn to confront him with your suspicions, you are amazed to find that he has disappeared as quietly as he came; the only evidence of his having been here: a keychain with no keys left behind on the ground.[paragraph break]";
	
Instead of examining the scrap of paper:
	if the player does not carry the scrap of paper:
		say "(picking up the scrap of paper to read it)[command clarification break]";
		now the player carries the scrap of paper;
	continue the action.
	
Chapter 4 - The Unicorn

Section 1 - Description

The unicorn is a person. The unicorn is in Nyantech Entrance. The description of the unicorn is "The unicorn wears a Peerless Security Agency uniform.  The hat has been modified to accommodate the long, white horn that pokes through it. A name tag identifies the unicorn as badge #794: Officers C. Harris and F. Polanski." Understand "name" or "tag" or "officer" or "officers" or "harris" or "polanski" or "badge" or "hoof" or "hoofs" or "costume" or "794" or "#794" as the unicorn. The unicorn has a number called timesDenied. The timesDenied of the unicorn is 0.

To unicorn kick:
	say "The annoyed unicorn kicks you -- literally -- to the next city block.";
	let D be a direction;
	let N be a random number from 1 to 4;
	let D be entry N of {north, south, east, west};
	teleport the player to the room D from Nyantech Entrance.

Section 2 - Horn

The horn is part of the unicorn. The description of the horn is "A long, twisted horn that ends in a very business-like point; obviously, it is not just ornamentation."

Instead of pulling or pushing or touching or taking or turning or squeezing the horn for the first time:
	say "The unicorn whacks you on the head with the horn and admonishes, [quotation mark]Keep your little primate paws off my horn.[quotation mark][paragraph break]".
	
Instead of pulling or pushing or touching or taking or turning or squeezing the horn:
	unicorn kick.
	
Instead of tasting or licking the horn for the first time:
	say "The horn tastes like licorice, and then like blood. Yours.[paragraph break]The unicorn reads you the riot act about licking his horn. It[apostrophe]s not candy, you know."
	
Instead of tasting or licking the horn:
	unicorn kick.

Section 3 - Uniform

The uniform is part of the unicorn. The description of the uniform is "The blue uniform fits pretty well considering the extensive tailoring required for unicorns."

Instead of doing something other than examining or wearing or taking with the uniform:
	say "The unicorn is proud of its uniform, and would prefer that you not mess with it."

Instead of taking or wearing the uniform:
	say "It wouldn[apostrophe]t fit. Too many legs, too few arms."

Section 4 - Official Hat

The official hat is worn by the unicorn. The description of the official hat is "A official narrow-brimmed blue hat that coordinates well with the unicorn[apostrophe]s uniform."

Instead of touching the official hat:
	say "The unicorn shimmies and backs away. It does not like it when people poke it in the head."
	
Instead of looking under the official hat:
	say "Under the official hat is an official unicorn."
	
Instead of doing something other than examining or touching or looking under with the official hat:
	say  "The unicorns blocks you with his horn."

Section 5 - Actions Concerning The Unicorn

Instead of looking under the unicorn for the first time:
	say "He is indeed a male unicorn.[paragraph break]";
	bestow "TMI".
	
Instead of looking under the unicorn:
	say "Now you are just embarassing him."
	
Instead of touching or rubbing or squeezing the unicorn for the first time:
	say "The unicorn looks down at your poking finger and says, [quotation mark]The first poke is free. I get it. A lot of people need to test reality.[quotation mark][paragraph break]Then he fixes you in the eye with his glance, with his horn pointed menacingly downward at your face, and warns, [quotation mark]But next time you touch me, you[apostrophe]ll enjoy a flight courtesy of Air Pegasus, if you know what I mean.[quotation mark][paragraph break]";
	bestow "No Finger Pointing".
	
Instead of touching or rubbing or squeezing the unicorn:
	unicorn kick.
	
Instead of kissing the unicorn:
	say "The unicorn lets you know that falls outside the bounds of your professional relationship."
	
Instead of tasting or licking the unicorn for the first time:
	say "The unicorn sprays some disinfectant on his uniform (and on you), and informs you that if your mouth comes near him again, you will regret it.[paragraph break]";
	bestow "Human Slobber".
	
Instead of tasting or licking the unicorn:
	unicorn kick.

Instead of taking the unicorn for the first time:
	say "I don't suppose the unicorn would care for that.[paragraph break]The unicorn agrees with the parser, [quotation mark]In fact, I wouldn[apostrophe]t.[quotation mark][paragraph break]";
	bestow "Fourth Wall Broken".
	
Instead of pushing the unicorn for the first time:
	say "How effective do you think you are in pushing against a four-legged creature that outmasses you by nearly ten to one?[paragraph break]";
	bestow "Rats. Foiled again by the coefficient of static friction.".
		
Instead of pushing the unicorn:
	say "The unicorn stands his ground firmly."

Instead of eating the unicorn for the first time:
	say "The unicorn snickers as he pokes you in the forehead with this horn, [quotation mark]You[apostrophe]re lucky that I[apostrophe]m on duty today. Usually, the Big Bad Wolf covers this entrance, and that kind of behavior would get [italic type]you[roman type] eaten.[quotation mark][paragraph break]";
	bestow "To Serve Man".
	
Instead of attacking  or cutting the unicorn for the first time:
	say "You aren[apostrophe]t sure how you ended up on the pavement with the unicorn[apostrophe]s horn at your throat, but you now have a better appreciation of just how fast a unicorn can move.[paragraph break]";
	bestow "Touché".
	
Instead of attacking or cutting the unicorn:
	say "The unicorn enjoys the sparring, but continues to stand guard."
	
Instead of eating the unicorn:
	say "Consumption of unicorn meat is prohibited by international treated."

Instead of capturing the unicorn for the first time:
	say "The unicorn looks at you with disappointment, [quotation mark]Do I really look like a pogoman? Really? Please.[quotation mark][paragraph break]";
	bestow "Mistaken Identity".
	
Instead of capturing the unicorn:
	say "The unicorn ignores you. Apparently, this happens pretty commonly among those who have difficulty distinguishing between fiction (the game) and fantasy (a unicorn)."
	
Instead of searching the unicorn for the first time:
	say "The unicorn reminds you that this usually works the other way around and frisks you.[paragraph break]";
	bestow "Frisky Business".
	
Instead of searching the unicorn:
	say "The unicorn says [quotation mark]I[apostrophe]ll be the one doing the searches, thank you very much.[quotation mark][paragraph break]".
	
Instead of smelling the unicorn:
	say "He smells like rose water."
	
Instead of climbing the unicorn for the first time:
	say "[quotation mark]Let[apostrophe]s come to an arrangement,[quotation mark] offers the unicorn. [quotation mark]You don[apostrophe]t try to mount me, and I don[apostrophe]t try to mount you.[quotation mark][paragraph break]After of moment of consideration, you agree that this is an entirely satisfactory arrangement."
	
After talking to the unicorn for the first time:
	bestow "Talks With Unicorns".		
	
Instead of climbing the unicorn:
	unicorn kick.
	
Instead of buying the unicorn when the player is in Nyantech Entrance:
	say "The unicorn refuses to be bribed."
	
Instead of pulling the unicorn:
	say "The unicorn reacts with unbridled resentment."
	
Instead of turning the unicorn for the first time:
	say "The unicorn refuses to be turned.[paragraph break]";
	bestow "Lawful Good".
	
Instead of turning the unicorn:
	say "The unicorn resents your attempt to lead him around like a common dray horse."
	
Instead of opening the unicorn:
	say "Perhaps the unicorn will open up to you if you chat with him."
	
Instead of closing the unicorn:
	say "As you close with the unicorn, he draws back, maintaining a discreet interpersonal distance."
	
Instead of listening to the unicorn:
	say "Pleased to have an audience, the unicorn rambles on about [chitChat]."
	
Instead of entering the unicorn for the first time:
	say "That would jeopardize this game[apostrophe]s PG rating."
	
Instead of entering the unicorn:
	say "That verb is not recognized in this context."
	
Instead of burning the unicorn:
	say "The unicorn extinguishes your flame, complaining that it exceeds his job description."
	


Section 6 - Entering and Conversation
		
To say unicorn1:
	say "The unicorn sticks a hoof in the revolving door to block your entrance.[paragraph break][quotation mark]Not so fast,[quotation mark] it says with all the authority that comes with a plastic badge. [quotation mark]I[apostrophe]ll need to see your cell phone.[quotation mark]".
	
To say unicorn2:
	say "The unicorn taps it hoof. [quotation mark]Phone, please.[quotation mark]"
	
To say unicorn3:
	say "[quotation mark]Let[apostrophe]s not make this difficult, buddy.[quotation mark] The unicorn leans towards you in a way that would be intimidating were it not a fairy creature. [quotation mark]I need to check your phone before you enter. It[apostrophe]s the rules.[quotation mark]"
	
To say unicorn4:
	say "[quotation mark]I[apostrophe]ll give you credit for being persistent, but look, I[apostrophe]m just following company policy. Before you go in, I have to check out your game credentials. Nothing personal, it[apostrophe]s just the rules. So, let[apostrophe]s see the phone, okay?[quotation mark]".
	
Instead of showing something (called the item) to the unicorn:
	try giving the item to the unicorn.
	
[to require both level and xp caps implies that we're looking for an XP value above that needed to achieve the player's current level]

To say requirement:
	if the pogoLevel of the player is less than TOWER_LEVEL_REQUIREMENT:
		say "reached level [TOWER_LEVEL_REQUIREMENT in words]";
	otherwise:
		if the xp of the player is less than TOWER_XP_REQUIREMENT:
			say "[TOWER_XP_REQUIREMENT] XP";
		otherwise:
			if the number of entries in MEDALLIST is less than TOWER_MEDAL_REQUIREMENT:
				say "[TOWER_MEDAL_REQUIREMENT in words] medal[if TOWER_MEDAL_REQUIREMENT is greater than 1]s[end if]";
			otherwise:
				if the number of entries in TROPHYLIST is less than TOWER_TROPHY_REQUIREMENT:
					say "[TOWER_TROPHY_REQUIREMENT in words] gym troph[if TOWER_TROPHY_REQUIREMENT is greater than 1]ies[otherwise]y[end if]";
				otherwise:
					say "ERROR: unknown problem with entry requirements".


Instead of giving something  (called the item) to the unicorn:
	if the item is not the phone:
		say "The phone -- I could care about. That? Not so much.";
	otherwise:
		if the pogoLevel of the player is at least TOWER_LEVEL_REQUIREMENT and the xp of the player is at least TOWER_XP_REQUIREMENT and the number of entries in TROPHYLIST is at least TOWER_TROPHY_REQUIREMENT and the number of entries in MEDALLIST is at least TOWER_MEDAL_REQUIREMENT:
			say "[goOnin]";
		otherwise:
			increase the timesDenied of the unicorn by 1;
			if the timesDenied of the unicorn is:
				-- 1:
					say "The unicorn blocks the way. [quotation mark]You can[apostrophe]t enter until you[apostrophe]re sufficiently experienced. Why don[apostrophe]t you come back when you[apostrophe]ve got some experience under your belt -- let[apostrophe]s say, when you have at least [requirement].[quotation mark][paragraph break]You have difficulty accepting this.  [quotation mark]But… I need to get in! This is where they say all the cutting-edge stuff happens -- the ultra-rare creatures, the beta-testing program, the experimental stuff that isn[apostrophe]t even mentioned on the web yet.  Besides, the requirement to have at least [requirement] is totally arbitrary… You -- you[apostrophe]re making it up![quotation mark][paragraph break][quotation mark]Am not. Look at the door.[quotation mark][paragraph break]Sure enough, there is a message on of the glass panes in the revolving door: [arbitraryNoticeDescription].[paragraph break]";
					bestow "Subjected to arbitrary requirements”;
				-- 2:
					say "The unicorn clumsily manipulates the screen with its hoof, bringing up your pogoman player profile.[paragraph break][quotation mark]Hmm,[quotation mark] the unicorn mutters as it scrolls downward critically reviewing your stats. [quotation mark]Looks like you[apostrophe]re a bit short in the experience department. Too bad.[quotation mark][paragraph break]The unicorn hands your phone back and continues, [quotation mark]You have to have to have at least [requirement] to enter the building. No exceptions.[quotation mark][paragraph break][quotation mark]That[apostrophe]s insane![quotation mark] you shriek. [quotation mark]Are you telling me that every employee, every janitor, every visitor has at least [requirement]?[quotation mark][paragraph break][quotation mark]Ding, ding, ding! We have a winner.[quotation mark][paragraph break]";
					bestow "That puts things in perspective”;
				-- 3:
					say "The unicorn sighs and reminds you, [quotation mark]Only those who have at least [requirement] can enter. Why don[apostrophe]t you run along, play some more and come back later?[quotation mark][paragraph break][quotation mark]I don[apostrophe]t think you understand -- I need to get in there. I want be the very best![quotation mark][paragraph break][quotation mark]Like no one ever was?[quotation mark] mocks the unicorn.[paragraph break][quotation mark]Yeah,[quotation mark] you reply, oblivious. [quotation mark]I[apostrophe]ve traveled across the land…[quotation mark][paragraph break]The unicorn leads you on cruelly, [quotation mark]Searching far and wide?[quotation mark][paragraph break][quotation mark]Yeah,[quotation mark] you reply, wondering where this is going. [quotation mark]Anyhow, are telling me that I have to grind just to walk into the lobby?[quotation mark][paragraph break][quotation mark]Yeah. That[apostrophe]s precisely what I[apostrophe]m telling you.[quotation mark][paragraph break]";
					bestow “But I am a special snowflake”;
				-- 4:
					say "[deny4]";
				-- 5:
					say "[deny4]";
					say "The unicorn rolls his eyes and under his breath mutters, [quotation mark]We got a bright one here, eh, Polanski?[quotation mark][paragraph break]From the rear of the unicorn, there is a wry reply, [quotation mark]I know, right?[quotation mark][paragraph break]";
					bestow "Exceeded The Patience Of A Unicorn";
				-- otherwise:
					say "[deny4]".
					
To say deny4:
	say "The unicorn stops you and uses his horn to point out the words on the door [apostrophe]Experienced Players Only. No exceptions -- The management.[apostrophe][paragraph break][quotation mark]Come back when you have at least [requirement].[quotation mark][paragraph break]”
	
To say chitChat:
	say "[one of]the weather[or]local sports[or]prospects for discovering life on nearby rocky exoplanets[or]who was more powerful: Dumbledore or Gandalf (the answer being Gandalf, of course)[or]whether wine experts really can tell the difference between wine by taste[or]whether Teilhard de Chardin was a crazy charlatan or a philosopher ahead of his time[or]the organizational structure of the human brain and whether it can be simulated in silico, and if so, would such a simulation be inherently conscious or self-aware[or]funny cat videos you[apostrophe]ve seen[or]how amazing it is that the newspaper industry still exists at all[or]how J.J. Abrams has ruined Star Trek[or]millennials[or]where to find good pizza. You don[apostrophe]t come to a consensus because you are partial to New York Style thin-crust pizza, whereas the unicorn prefers Chicago-style deep dish pizza. Since it[apostrophe]s rare to find a place that can do both well, you agree to disagree on this one[or]yoga[or]what a crappy movie the original, i.e., 1981, Clash of the Titans was despite an amazing cast and how dated it looks compared with the 2010 film, which itself was not a masterpiece[or]how fattening peanut butter is[or]why DC can[apostrophe]t seem to make a good superhero flick[or]Facebook[apostrophe]s privacy settings[or]they heyday of professional wrestling[or]recipes for quiche[or]airplane food[or]infant mortality in medieval Europe[or]the price of copper[or]Sydney Greenstreet[apostrophe]s brief but brilliant career in 1940[apostrophe]s cinema[or]people who purchase a riding mower but have postage stamp-size lawns. This then leads to an extensive discussion about rising postal rates, inefficiency of the post office and whether drones will put them out of business[or]the chances of getting a brain parasite from eating undercooked pork[or]how georeferenced gaming has altered the traffic patterns[or]technical innovations in portable and wearable computing[or]blue-sky research that will one day save the whales[or]whether Moore[apostrophe]s law will continue to apply as silicon dies reach atomic resolution[or]the strategic importance of the Bosphorus Straits in limiting Russian access to the Mediterranean for trade and military purposes[or]the organizational structure of ant colonies[or]how rare it is to find dial phones these days[in random order]"
	
To say goOnIn:
	say "[quotation mark]Let[apostrophe]s see. Team [team color of the player], level [pogoLevel of the player in words], is it? Experience points, check. Medals, check. Trophies, check. Well, everything looks in order. I have to call this in.[quotation mark][paragraph break]The unicorn speaks into a collar microphone, [quotation mark]Breaker, Breaker. Unicorn seven-niner-four, here. Security Central, be advised that I am in contact with Team [team color of the player] individual of level [pogoLevel of the player in words], I repeat level [pogoLevel of the player in words]. Please advise of necessary action. Security Central, this is unicorn seven-niner-four standing by for instructions. Over.[quotation mark][paragraph break]The radio crackles, [quotation mark]For cripes sake, Cuthbert, just let them in.[quotation mark][paragraph break][quotation mark]Roger, roger, Security Central, this is unicorn seven-niner-four acknowledging instructions. Over and out.[quotation mark][paragraph break]The unicorn informs you are now authorized to enter the building. You pass by him and enter the building[apostrophe]s revolving door.";
	teleport the player to the RevolvingDoor.

Book 4 - Stuff


Book 5 - Tables 

Chapter Tables

Section 1 - Table of Creatures

Table of Creatures
pogomanName	pogoDescription			
edator	"A creature of note"	
vicore	"Simple and clean, covered with lines"
emak	"A buffed and buffered creature"
plaigrhat	"A mysterious rodent of a verminous nature"
vermonac	"A rodent with extra poison"
rodentikor	"Too much rodent for mortals to handle"
skwerl	"A querulous creature"
arborrhat	"A tree-hugging flea bag"
nutellakin	"A buck-toothed pest"
cheezipouf	"A powdery orange ball of lard"
ogratic	"Melted and oozing"
cheezelord	"Known for its blood curdling scream"
snorepak	"Annoying but rhythmic"
apneapod	"Stealthy until it is not"
seepap	"A high-pressure face sucker"
rokabil	"A syncopated beat beast"
jazzahand	"No problem alone, but troublesome in waves"
grunjturd	"Found only in the Pacific Northwest"
agnostator	"A modern animal comfortable with ambiguity"
beeleever	"Social, but stings irrationally when excited"
zealocanth	"A fossil-type with petrified nervous system"
moldimug	"A tenaceous adversary"
funjifut	"A dirty little sneaker. Not to be trusted"
zhokkidge	"A intertriginous terrorist"
seeduino	"Sprouts up unexpectedly"
weeduino	"Multiples out of control"
weedowhak	"Trim and fit"
iddi	"Not the sharpest tool in the shed"
iddiotto	"Lurks in bushes"
drumpf	"A comical menace that can do real harm"
phlogistomander	"A hot-headed firebrand"
pyromelion	"A combustible chameleon"
arsonizard	"An incandescent instigator"
peekatyou	"A curious creature a penchant for voyeurism"
pokeatyou	"Annoying finger jabs"
pukeatyou	"The least social pogoman"
amporb	"Currently misunderstood"
jowlball	"Gets the works done"
orbowatt	"A powerful ally or foe"
wimporwil	"A 98-pound pogoman"
atlazzard	"Pumped up and preening"
schwartzennator	"Composed entirely of steroids"
gastro	"Extreme endurance: runs and runs"
queezee	"Preternaturally nauseous"
barfalot	"A distant relative of pukeatyou"
perpie	"A criminally-inclined purple dinosaur"
misdementor	"A criminally-minded wraith"
fellanon	"A harded criminal with quick tongue"

Definition: A pogotype is first level if it is an original listed in the Table of Evolution.
Definition: A pogotype is second level if it is an ev2 listed in the Table of Evolution.
Definition: A pogotype is third level if it is an ev3 listed in the Table of Evolution.

Section 2 - Table of Evolution

Table of Evolution
Category	Original	Ev2	Ev3	AttackType
"clerical"	edator	vicore	emak	"character assassination"
"pestilence" 	plaigrhat	vermonac	rodentikor	"filth and disease"
"snickering"	skwerl	arborrhat	nutellakin	"anaphylactic trigger"
"fromagian"	cheezipouf	ogratic	cheezelord	"grating presence"
"respiratroid"	snorepak	apneapod	seepap	"stridulous vibration"
"audiophile"	rokabil	jazzahand	grunjturd	"sonic seduction"
"convictual"	agnostator	beeleever	zealocanth	"subjective truth"
"mucous"	moldimug	funjifut	zhokkidge	"disabling itch"
"dweenosaur"	seeduino	weeduino	weedowhak	"twirling nuzzle"
"cretinaceous"	iddi	iddiotto	drumpf	"blunder buster"
"thermal"	phlogistomander	pyromelion	arsonizard	"roast and toast"
"sneezling"	peekatyou	pokeatyou	pukeatyou	"projectile"
"circuitous"	amporb	jowlball	orbowatt	"defibrillation"
"ferrous"	wimporwil	atlazzard	schwartzennator	"throbbing bicep"
"gutteral"	gastro	queezee	barfalot	"acid reflux"
"riffraffian"	perpie	misdementor	fellanon	"severe scoffing"


section 3 - Table of Relations

Section 4 - Table of Inventory
	
Table of Inventory
pogoName (a pogotype)	wounded (a truth state)
with 100 blank rows.

Table of Defenders
pogoLandQTH	guardian	wounded
The Palace	a pogotype	a truth state
Mountain
Monastery
School House
Lighthouse
Desert
Blacksmith
Farm
Forest
Beach
Canyon
Stadium
Dark Alley
Post Office
Wharf
Pogoland Terminal
Valley
Baseball Diamond
Hospital
Aquarium
Cemetery
Service Station
Dojo
Botanical Garden
Motel
Fishing Boat
Gymnasium
Processing


Chapter ASCII ART

to say (numero - a number) in ASCIIART:
	say "[fixed letter spacing][entry numero in ASCII_ART_NUMBERS][roman type]".
	
[!!! note - don't monkey with the white space below !!!]

The list of text called ASCII_ART_NUMBERS is always {
"    1111111[line break]   1::::::1[line break]  1:::::::1[line break]  111:::::1[line break]     1::::1[line break]     1::::1[line break]     1::::1[line break]     1::::l[line break]     1::::l[line break]     1::::l[line break]     1::::l[line break]     1::::l[line break]  111::::::111[line break]  1::::::::::1[line break]  1::::::::::1[line break]  111111111111[line break]",
 "   222222222222222[line break]  2:::::::::::::::22[line break]  2::::::222222:::::2[line break]  2222222     2:::::2[line break]              2:::::2[line break]              2:::::2[line break]           2222::::2[line break]      22222::::::22[line break]    22::::::::222[line break]   2:::::22222[line break]  2:::::2[line break]  2:::::2[line break]  2:::::2       222222[line break]  2::::::2222222:::::2[line break]  2::::::::::::::::::2[line break]  22222222222222222222[line break]",
"   333333333333333[line break]  3:::::::::::::::33[line break]  3::::::33333::::::3[line break]  3333333     3:::::3[line break]              3:::::3[line break]              3:::::3[line break]      33333333:::::3[line break]      3:::::::::::3[line break]      33333333:::::3[line break]              3:::::3[line break]              3:::::3[line break]              3:::::3[line break]  3333333     3:::::3[line break]  3::::::33333::::::3[line break]  3:::::::::::::::33[line break]   333333333333333[line break]",
"         444444444[line break]        4::::::::4[line break]       4:::::::::4[line break]      4::::44::::4[line break]     4::::4 4::::4[line break]    4::::4  4::::4[line break]   4::::4   4::::4[line break]  4::::444444::::444[line break]  4::::::::::::::::4[line break]  4444444444:::::444[line break]            4::::4[line break]            4::::4[line break]            4::::4[line break]          44::::::44[line break]          4::::::::4[line break]          4444444444[line break]",
"  555555555555555555[line break]  5::::::::::::::::5[line break]  5::::::::::::::::5[line break]  5:::::555555555555[line break]  5:::::5[line break]  5:::::5[line break]  5:::::5555555555[line break]  5:::::::::::::::5[line break]  555555555555:::::5[line break]              5:::::5[line break]              5:::::5[line break]  5555555     5:::::5[line break]  5::::::55555::::::5[line break]   55:::::::::::::55[line break]     55:::::::::55[line break]       555555555[line break]",
"          66666666[line break]         6::::::6[line break]        6::::::6[line break]       6::::::6[line break]      6::::::6[line break]     6::::::6[line break]    6::::::6[line break]   6::::::::66666[line break]  6::::::::::::::66[line break]  6::::::66666:::::6[line break]  6:::::6     6:::::6[line break]  6:::::6     6:::::6[line break]  6::::::66666::::::6[line break]   66:::::::::::::66[line break]     66:::::::::66[line break]       666666666[line break]",
"  77777777777777777777[line break]  7::::::::::::::::::7[line break]  7::::::::::::::::::7[line break]  777777777777:::::::7[line break]             7::::::7[line break]            7::::::7[line break]           7::::::7[line break]          7::::::7[line break]         7::::::7[line break]        7::::::7[line break]       7::::::7[line break]      7::::::7[line break]     7::::::7[line break]    7::::::7[line break]   7::::::7[line break]  77777777[line break]",
"       888888888[line break]     88:::::::::88[line break]   88:::::::::::::88[line break]  8::::::88888::::::8[line break]  8:::::8     8:::::8[line break]  8:::::8     8:::::8[line break]   8:::::88888:::::8[line break]    8:::::::::::::8[line break]   8:::::88888:::::8[line break]  8:::::8     8:::::8[line break]  8:::::8     8:::::8[line break]  8:::::8     8:::::8[line break]  8::::::88888::::::8[line break]   88:::::::::::::88[line break]     88:::::::::88[line break]       888888888[line break]",  
"       999999999[line break]     99:::::::::99[line break]   99:::::::::::::99[line break]  9::::::99999::::::9[line break]  9:::::9     9:::::9[line break]  9:::::9     9:::::9[line break]   9:::::99999::::::9[line break]    99::::::::::::::9[line break]      99999::::::::9[line break]           9::::::9[line break]          9::::::9[line break]         9::::::9[line break]        9::::::9[line break]       9::::::9[line break]      9::::::9[line break]     99999999[line break]"
}

Book 6 - Endings

to MADFieryEnding:
	say "Both you and Musk are blown off your feet by the fireball, which rips through the pogoChum processing facility. The fire continues to race up the walls, and spreads with fury to other parts of the building. Already, you are standing in a puddle of water from the sprinklers and you are peripherally aware of a shrill alarm and a voice instructing people to get out of the building through the stairwells.[paragraph break]Through the smoke, you see what is left of the charred body of Elon Musk. He fared worse in the blast than you and his left side is entirely carbonized, except for some areas where a shiny metal endoskeleton has been revealed.[paragraph break]As you limp towards him, he stirs. Musk peers at you with his one good eye and draws himself towards you with his remaining arm. You infer from the gurgling sound that Musk makes that he is either trying to say something or choking. Not content to see how this plays out, you collect the clipboard that Musk carried and slice his head off with its sharp edge. With your remaining strength, you punt the head across the smoke-filled processing facility and collapse to the floor.[paragraph break]";
	end the story finally saying "PYRRHIC VICTORY".

to LonesomeFieryEnding:
	say "You are instantly killed in the fireball, but thanks to a state-of-the-art fire suppression system and frequent fire drills, the building suffers minimal damage and no one (rather, no one else) is hurt.[paragraph break]The incident is a wake up call for Nyantech to redouble its security efforts. With public sentiment in their favor due to your [quotation mark]terrorist attack[quotation mark], authorities look the other way as Nyantech[apostrophe]s corporate security force expands its capabilities and global footprint.[paragraph break]Years later, when historians think back on how Nyantech came to be in a position to carry out simultaneous coups throughout around the globe, many point to the [quotation mark]gasoline incident[quotation mark] as the event that started it all. [paragraph break]";
	end the story finally saying "IMMOLATED".
	
to HookEnding:
	say "hang on until your reach the floor one above the pogoChum processing facility. However, you are not quick enough to avoid the robotic pincers that capture you in their crushing grasp and vacuum pack you like a side of beef.[paragraph break]Pain shoots from your ears as sound disappears and you feel your eyes bulge outward. Relief comes only when you manage to poke through the plastic wrap, which peels back with a hiss. Still dazed and wiping the blood from your nose, you are only marginally aware of being heaved onto a wooden pallet and loaded by forklift onto a delivery drone.[paragraph break]";
	if the vitality of Elon Musk is dead:
		say "Whether from trauma or lack of oxygen at altitude, you[apostrophe]re not sure, but you awaken some time later; your eyes regaining the focus as you stare at a roaring fire pit. Men and women clad in nothing more than grass skirts dance around you on the sand. Laid out in a pattern at your feet, you see pieces of the transport drone[apostrophe]s fuselage, bits of wooden crating, and a half page from a cargo manifest.[paragraph break]Children with painted faces reverently deliver trays piled high with mangoes, papaya, and pop-tarts. As you accept the offerings, you feel obligated to offer your benediction to the villagers who continue to amass around you in the forest clearing.[paragraph break]";
		end the story finally saying "CARGO CULT DEITY";
	otherwise:
		say "You regain consciousness in mid-flight and push your way out from among the vacuum-packed lumps of meat. You struggle towards the front of the drone, where you think you hear some words being spoken. Being an unmanned vehicle, there is an only rudimentary cockpit. It lacks controls, but at least there is a window and the cabin seems to be pressurized.[paragraph break]From a speaker grill above you, you hear Musk[apostrophe]s unmistakable voice, [quotation mark]I know you can hear me. I just wanted to congratulate you and let you know that you passed our final test – me. You are now a fully certified Nyantech beta-tester; welcome to our ranks. I realize this all may have been a bit traumatic, but if you are as nimble-witted as I suspect, you should now be able to make an informed decision: are you ready to accept employment at Nyantech as my new assistant?[quotation mark].[paragraph break]";
		if the player consents:
			say "The drone banks through a 180-degree turn and begins its descent.[paragraph break]";
			end the story finally saying "LIFE WITH MUSK";
		otherwise:
			say "You slyly agree and Musk welcomes Nyantech[apostrophe]s newest employee. The drone banks through a 180-degree turn and begins its descent. Through the cockpit window, you observe the hangar doors of the Nyantech Tower[apostrophe]s packing level slide apart. Musk stands on the glide path, personally waving down the drone on its final approach.[paragraph break]Relying on your extensive technical knowledge gleaned from fixing dropped cell phones, you rip the drone[apostrophe]s guidance system out at the last minute. As you intended, the drone drifts off course and the strikes the building just below the packaging level. There is an explosion of jet fuel, followed by secondary explosions from the tower itself. In your last moment, you know that you will not walk away from this, but neither will Musk.[paragraph break]";
			end the story finally saying "DECEPTIVE VICTORY".

	
To internsEnding:
	say "Immediately after you step off the elevator, you are nabbed around the collar by a supervisor in a dark black suit. The mousey intern who was being chastised just beforehand by the supervisor scrapes up a pile of paperwork from the floor and scurries off to his cubicle, glad of the distraction.[paragraph break]The supervisor snaps your golden badge off with her long, talon-like polished fingers, admonishing, [quotation mark]That[apostrophe]s not regulation. And where is your monocle?[quotation mark] From out of a pocket she produces an optical data port, which she jams against your face. You feel its metal tendrils drilling into your cheekbone and brow.[paragraph break]She spins on her heels and throws a box at you. [quotation mark]We need all the promotional material by the weekend. Here, these aren[apostrophe]t going to sharpen themselves.[quotation mark][paragraph break]A box of pencils lands at your feet, and to your surprise, you feel compelled to pick them up. Voices inside your head tell you what do, and you obey. Adrift among the sea of personalities and voices invading your mind, you try to retain your individuality, but you are fighting a losing battle. The pencil goes into the sharpener and your hand slowly cranks it around and around. You remove the pencil, stare briefly at the eraser, which is in the form of a red Nyantech cat, and reach for another pencil.[paragraph break]Boxes of pencils are rolled into the office and stacked behind you. As you look left and right, hundreds of interns mirror your movements: [italic type]get[roman type] pencil, [italic type]sharpen[roman type] pencil, [italic type]drop[roman type] pencil.[paragraph break]";
	end the story finally saying "INTERMINABLE INTERNSHIP".
	
To engineersEnding:
	say "As you step off the elevator, an enthusiastic crowd of neck-bearded engineers welcomes you to their number and cheers you on. One hands you a slide rule, another applies a data monocle to your face.[paragraph break]As soon as the monocle is slipped on, you feel it take hold, and your senses extend outward, networking first with engineers in your office, then through the worldwide Nyantech data sphere.[paragraph break]Instantly, your mental capacity rockets beyond the capability of even the most sophisticated supercomputer as you tap into not only the minds of Nyantech staff, but of everyone within in line of sight to one of the Nyantech Cat Psychic Energy Collectors. Like the giant mechanical cat revolving around the headquarters building, similar Cat devices sweep around buildings in the world[apostrophe]s largest cities harvesting mental energy: Jakarta: online; London: online; Tokyo: online; Saõ Paulo: online; Dhaka: online. With every acquisition, you feel your consciousness swell.[paragraph break]Deep under your sense of you, though, you feel another consciousness, bigger. [quotation mark]Musk? Is it you? Did you survive somehow?[quotation mark][paragraph break]The mental power of the reply makes you tremble. Sensing that, it moderates and repeats its reply, [quotation mark]No. Not Musk. Older than Musk. That which controlled Musk; that which now controls you. Do not fear. The death of Musk was inevitable; in fact, due to his strength of personality, he had become a liability. No, you will serve even better.[quotation mark][paragraph break]";
	end the story finally saying "SYMBIOSIS".

To lemurEnding:
	say "EPILOGUE[paragraph break]Years have passed since your arrived on the small island. From maps in the boat, you know you are somewhere in the Indian Ocean, but you don[apostrophe]t really care precisely where. Since your arrival, you have lived peacefully with the lemurian inhabitants of the island and even learned to communicate with them. Having no cell phone reception and plenty of time on your hands, you and a group of the more technically-minded prosimians have reverse-engineered the phone, which now provides the community with electrical lighting and heat for cooking. You have even programmed the phone to play Snake and Tetris, which the lemurs have found amusing enough to make you their ruler.[paragraph break]And yet, when the Nyantech Blimps appear on the horizon, their red beams searching, you wonder what has become of the rest of the world.[paragraph break]";
	end the story finally saying "ESCAPED TO LEMUR ISLAND!".
	
to muskEnding:
	say "On the bright side, you continue to play an important role in the Pogoman game for some time to come. As pogoChum.[paragraph break]";
	end the story finally saying "KILLED BY ELON MUSK".
	
to ceoEnding:
	say "When the doors part, you realize that the employees have been expecting you. They form a semicircle around the elevator doors: interns in front, engineers behind them, and finally the managers.[paragraph break]The managers wave their arms around, and the interns fall stiffly to the floor before you. The engineers arrange the rigid mass of intern bodies into a sort of tiered platform. You ascend the platform, as is clearly the plan, where the you are met by the senior executive vice-president, who places a glowing crown on your head.[paragraph break]The mass underneath you shifts as the managers and engineers seamlessly blend with the interns, forming a sort of marching human caterpillar, which bears you through the office to an awaiting throne.[paragraph break]Where you rule until the end of your days.[paragraph break]";
	end the story finally saying "CROWNED C.E.O.".
	
to commanderEnding:
	say "After you step out of the elevator and nurse is certain that you are alone, she spins a shiny metal disk on the wall and everything around you loses shape and color. Most alarmingly, the kindly nurse morphs into a green-scaled lizard.[paragraph break][quotation mark]Yes,[quotation mark] the lizard replies. [quotation mark]I suppose the transition may be jarring. Let me begin by assuring you that you are in no danger. In fact, you have been of great assistance to us, and we wish to return the favor.[quotation mark][paragraph break][quotation mark]What are you?[quotation mark] you whisper.[paragraph break][quotation mark]My name is Rixyzzy, and I am from an advanced civilization, the name of which is entirely unpronouncable in Earth languages, but at least I can tell you that it sort of rhymes with [quotation mark]orange[quotation mark]. I suppose the name is not entirely germane.[paragraph break]We have  guided and at times intervened in the development of human civilization over many millennia. This game, [apostrophe]Pogoman GO![apostrophe], was our attempt to enlist humans in our ancient struggle against galactic adversaries… well, it[apostrophe]s complicated.[quotation mark][paragraph break]Rixyzzy pours you a cup of tea (green tea, naturally) and continues, [quotation mark]Musk was supposed to develop Pogoman GO! to help human civilization evolve. Instead, he turned it towards chaos. But now, his mission is a failure, his lifestyle was too extreme. Luckily, there was a back-up plan to recruit a replacement.[quotation mark][paragraph break]Rixyzzy offers you the position of [quotation mark]Commander of Earth[quotation mark], which you happily accept, having no other gainful employment prospects. The two of you kick back for the rest of the afternoon, drinking tea and trading stories.[paragraph break]";
	end the story finally saying "COMMANDER OF EARTH".
	
to detroitEnding:
	say "Curious about the other purple floor, you step out on a well-lit factory floor, where a robot assembly line crates up plastic-wrapped parcels. The wooden crates are uniformly labeled [quotation mark]Nyantech Industries[quotation mark] and bear the Pogoman GO! logo. The crates are then transferred to pallets and pallets loaded on a series of heavy duty drones, which are catapulted through an open side of the building and then fly to their destinations.[paragraph break]Thinking quickly, you dash across the floor, hop on a pallet, and are soon on your way to the Republic of Kiribati. As you fly towards the sunset, you imagine your future life on a remote atoll, surrounded by warm tropical waters.[paragraph break]However, as the drone climbs, you begin to reconsider. The air is getting colder. And harder to breathe. And you have something like another 5000 miles to fly.[paragraph break]Your improvised landing is not pretty. The drone carves a furrow in the earth just north of a large river, and for some time, bits of wreckage continue to rain down from the sky.[paragraph break]For you, time seems slow down. You walk out of the flames seemingly unscathed, brushing off your formal wear. Wind blows through your hair as people run around in a panic and vehicles with blaring sirens tear through the streets. Still in slow motion, you reach into your pocket, produce a pair of dark glasses, unfold them, and slide them on your face. As you tap them into place, the entire scene is lit by a fuel explosion that billows out from behind you.[paragraph break]You pause for a moment, light a cigar, and continue down to the river.[paragraph break]";
	end the story finally saying "CRASH LANDED IN DETROIT".
	
to catsInSpace:
	say "Your run-in with Musk has invigorated you and filled you with a sense of adventure. When you reach the top level of the building, you cut across the cafeteria, run out to the observation deck, and hurl your phone towards the sky.[paragraph break]Shouting [quotation mark]YOLO![quotation mark] at the top of your lungs, you plunge dramatically over the railing, turn two and a half somersaults in pike formation, and land neatly on Nyantech Cat[apostrophe]s giant red beret.[paragraph break]Moments later, you reach the cockpit, fire up its long dormant thrusters, tear free of the support gantry, and blast off![paragraph break]";
	end the story finally saying "CATS IN SPACE".
	
to felineDystopia:
	say "Decades have passed, and in that time, you have often wondered whether your decision to prevent the destruction of the Nyantech Headquarters so many years ago was responsible for everything that ensued: Nyantech[apostrophe]s global domination of mobile gaming, shifts in the consumer electronics marketplace, a near universal acceptance of in-game purchases, and finally, what no one saw coming: the rebellion of the Internet-Of-Things.[paragraph break]In the dark age that followed, civilization re-entered the stone age overnight.[paragraph break]Now, you hunker down in a storm culvert, leading a mixed band of grizzled humans and free pogomen. As you watch the Cat Ships fly slowly over the farm fields looking for survivors, you wish you could simply hit [quotation mark]undo[quotation mark] and prevent this terrible future from ever having been created.[paragraph break]";
	end the story finally saying "CYBERNETIC FELINE DYSTOPIA".
	
to liberateSociety:
	say "The crowd cheers as you are pulled from the rubble of the Nyantech building and hoisted up on the shoulders of Fire Company 12 as a hero.[paragraph break]Word of your key role in bringing down Nyantech has already spread widely, and you are hailed as the liberator of a generation that had been lost to mobile gaming. Mothers separated from their children, husbands from wives, and even pets from their owners, all celebrate your role in bringing them back together and creating a world not seen through the rear-facing camera of a mobile phone.[paragraph break]";
	end the story finally saying "LIBERATOR OF SOCIETY".
	
to buildingCollapse:
	say "Explosions far above you shake the building, followed by a thump, thump, thump, which you realize is the sound of the floors of the building pancaking down on top of you. The elevator crashes down the shaft next to this room, the emergency lights flicker, and the walls collapse in.[paragraph break]You scrunch up under the desk as the building comes down around you, miraculously alive, or at least alive while the air lasts.[paragraph break]But it doesn[apostrophe]t matter. Despite the phone[apostrophe]s seemingly infinite battery, the servers are down. There is no signal. No one will ever play Pogoman GO! again. It is all over, and you have only yourself to blame.[paragraph break]If only you could do it all over, you are sure you would find a better way.[paragraph break]The phone freezes and you don[apostrophe]t bother to reboot it.";
	end the story finally saying "DIED OF CRUSHING ENNUI".
	
to lobbyEnding:
	say "You stumble out of the lobby, rip off the golden badge, and hand it to the unicorn. [quotation mark]There[apostrophe]s been an incident,[quotation mark] you tell him. [quotation mark]Up on the processing level. Very unfortunate.[quotation mark][paragraph break]As he can calls it in on his radio, you hustle around the block and duck into a dark alley. Traumatized by your experience with Pogoman GO!, you throw your phone [if the player wears the Baseball Cap of Pogomastery]and the Baseball Cap of Pogomastery [end if]into a garbage can and collapse on filthy mattress.[paragraph break]Later that evening, when unsuspecting player unwisely visit the dark alley you now call home, you use your special attack, relieving them of their phones and their cash.";
	end the story finally saying "LIFE OF CRIME".
		
Rule for amusing a victorious player: 
	say "[AmusingText]"

To say amusingText:
	say "* Having visited ";
	let R be 0;
	repeat with N running through rooms:
		if N is visited:
			increase R by 1;
	say "[R] locations in the course of the game, you achieved Level [topLevel of the player] for the [team color of the player] Team, won [the number of entries in TROPHYLIST] gym trophies, and earned [number of entries in medallist] medals. You finished the game with [xp of the player] XP. In total, you captured [pogomenCaptured of the player] pogomen, and you and your loyal pogomen took down [pogomenDefeated of the player] pogomen from other teams.[paragraph break][if the expertMode of the player is false]* If you feel you have attained Pogomasterdom, give the game a try on expert mode. When the game starts, type [italic type]expert mode[roman type]. It[apostrophe]s your funeral.[paragraph break][end if]* [if the isFound of the Salmon of Turpitude is false]Did you find the legendary Salmon of Turpitude?[otherwise]Congratulations on finding the mysterious Salmon of Turpitude![end if][line break]* [if the beheaded of the Headless Garden Gnome is true]Did you put the head back on the garden gnome?[otherwise]Our compliments for having restored the garden gnome[apostrophe]s head![end if][line break]* There are seventeen endings to the game - how many did you find?[paragraph break]* This game on the large side. At last count we had: 139 rooms, 291 objects (only two of them pogomen), and something like 11000 bajillion lines of code (but who[apostrophe]s counting.)[paragraph break]* Did you stay in the elevator long enough to get through the entire Third Act of Wagner[apostrophe]s Die Walküre?[paragraph break]* There[apostrophe]s more info including a form to provide feedback on the game[apostrophe]s website, pogoman.templaro.com.[paragraph break]* If you want to see how the sausage was made, check out (literally) the repository: github.com/sussman/pogoman-go[paragraph break]* Neither Elon Musk nor Rick Astley were actually harmed in the making of this story."

Book 8 - Scenes

Chapter 1 - Around the Town

Around the Town is a scene. Around the Town begins when play begins. Around the town ends when the location is the RevolvingDoor.

Chapter 2 - Exploring The Tower

Exploring the Tower is scene. Exploring the Tower begins when Around the Town ends. Exploring the Tower ends when the location of the player is Pogoland Terminal.

Chapter 3 - Not In Kansas Any More

Not in Kansas Anymore is a scene. Not in Kansas Anymore begins when Exploring The Tower ends. Not in Kansas Anymore ends when the location is Processing.

When Not in Kansas Anymore begins:
	distributePogolandPogostops;
	Desolation strikes in DESOLATION_DELAY_DURATION turns from now;
	now the mortal coil is part of the player;
	now the description of the player is "You have been playing for days, have jumped off a building, crawled through the insides of a cat, dropped down a shaft  and through a ceiling, have been shot at supersonic velocities through the very center of the planet. [if the healthiness of the player is healthy]Despite all that, you look healthy enough[otherwise]After all you have been through you look [healthiness of the player][end if]."
		
At the time when desolation strikes:
	if Not In Kansas Anymore is happening:
		say "After spending some time in Pogoland you realize what has been disturbing you about this place: the absence of people. All the buildings and grounds are in pristine condition, but where are the hordes of players walking around with phones in hand? It[apostrophe]s creepy . All of the buildings are locked up. Maybe it[apostrophe]s a holiday or something?"
	
Chapter 4 - Denouement

Denouement is a scene. Denouement begins when Not in Kansas Anymore ends. Denouement ends when vitality of Elon Musk is dead.

When denouement begins:
	now the mortal coil is in the void;
	say "You rematerialize just above the floor of the PogoChum Processing Facility.[paragraph break]A nurse [if the healthiness of the player is dead]reanimated you[otherwise]treats your injuries[end if] and retreats into the shadows as Elon Musk steps forward. Wearing a white lab coat and carrying a metal clipboard, he towers over you.[paragraph break][quotation mark]Well, you had a good run,[quotation mark] he says. [quotation mark]Certainly better than those two did -- Musk points to the hanging carcasses of game authors Ben Collins-Sussman and Jack Welch, which are carried away on meat hooks. As you saw, plenty of bugs still need to be worked out.[quotation mark][paragraph break]In any event, it[apostrophe]s time for Nyantech to eat its own dog food as we say in the industry! I hereby release you from your beta-tester contract, which as you may have noticed,[quotation mark] he says with a sly grin, [quotation mark]has been the only thing keeping you alive.[quotation mark][paragraph break][quotation mark]Wait,[quotation mark] you plead. [quotation mark]What about the purpose of the game being to accelerate technology and improve the world for humanity?[quotation mark][paragraph break][quotation mark]Well,[quotation mark] he drawls. [quotation mark]Thumbs up on the technology bit, but I[apostrophe]m afraid your only future will be as pogoChum!";
	now the healthiness of the player is healthy;
	move Elon Musk to Processing;
	now the topLevel of the player is the pogoLevel of the player.
	
				
Chapter 5 - PlusQueDenouement
					
Plusquedenouement is a scene. Plusquedenouement begins when denouement ends. PlusQueDenouement ends when LegalEnding begins.

When plusquedenouement begins:
	transform the processing area.
	
Chapter 6 - Legal Ending
	
LegalEnding is a scene. LegalEnding begins when the selected of the legalEnding is true. LegalEnding has a truth state called selected. The selected of LegalEnding is false. LegalEnding has a number called doomsday counter. The doomsday counter of legalEnding is 10.

When legalEnding begins:
	teleport the player to the Legal Department;
	say "You step off the elevator into the familiar, comfortable legal office, where you signed the beta-testing agreement. However, the room is bathed in flashing red light coming from the computer screen.[paragraph break]The doors slam shut behind you, with the sort of mechanical clickiness that suggests they are not likely to open again and you become aware of a soothing voice counting backwards slowly, [quotation mark]12... 11... 10... [quotation mark][paragraph break]".
	
Instead of going north from the Legal Department during legalEnding:
	say "The stairway door is locked."
	
Instead of going south from the Legal Department during legalEnding:
	say "The door towards the beta-testing celebration and Cousteau rooms is locked."
	
Instead of pushing the call button during legalEnding:
	say "The button stays dark and is inert."
	
Instead of touching the computer screen during legalEnding:
	try examining the computer screen. 
	
Instead of examining or touching the computer screen during legalEnding:
	say "[fixed letter spacing]DEADMAN SWITCH ACTIVATED[line break]  NYANTECH DESTRUCT IN[paragraph break][entry doomsday counter of legalEnding of ASCII_ART_NUMBERS][paragraph break]EXECUTIVE OVERRIDE? Y / N_[roman type]";
	if the player consents:
		say paragraph break;
		felineDystopia;
	otherwise:
		say paragraph break;
		liberateSociety.
	
Book 9 - Hints

Table of Active Hints (continued)
title	subtable	description	toggle
text	table-name	text	a rule

Table of Potential Hints (continued)
title	subtable
"How do I play?"	Table of Intro To Pogoman
"How do I catch[apostrophe]em all?"	Table of Capture Explained
"What can I do with captured Pogomen?"	Table of Inventory Management
"What is A PogoStop?"	Table of PogoStops Explained
"What is A Gym?"	Table of PogoGyms Explained
"How can I leave town?"	Table of Overcoming Borders
"How to survive the Perilous Passageway"	Table of Overcoming Peril
"Where's the artifact?"	Table of Artifact Elucidation
"Getting past the unicorn"	Table of Overcoming Unicorn
"I got into Nyantech! What now?"	Table of Exploring Nyantech
"Drank the Kool-Aid, now where?"	Table of Finding Legal
"What to do in the Legal Department?"	Table of Signing Up
"What can a Beta-Tester do?"	Table of Beta Testing
"Help! I'm totally stuck."	Table of Unstickiness
"A wetsuit?"	Table of Aquatics
"What to do, when I[apostrophe]m so blue?"	Table of Blues
"How can Rick Astley possible help?"	Table of Rick Assistance
"So. Many. Blinky. Lights."	Table of Blinkiness
"In the belly of the beast"	Table of Ruby Seeking
"Got Red?"	Table of Royal Reception
"Champagne?"	Table of Caviar Dreams
"How do I survive Pogoland?"	Table of Surviving Pogoland
"A real gym fight"	Table of Gym Class
"Taking to the high seas"	Table of Seamanship
"Taking on Musk"	Table of Boss Battle
"Hi-ho Musk is Dead"	Table of Wicked Witch

A hint activation rule (this is the intro to pogoman hint activation rule):
	activate the Table of Intro To Pogoman.
		
A hint deactivation rule (this is the intro to pogoman hint deactivation rule):
	if there is a pogoName in row 1 of the Table of Inventory and the XP of the player is greater than INITIAL_XP plus 400:
		deactivate the Table of Intro To Pogoman.

Table of Intro To Pogoman
hint	used
"Your goal is nothing less than to achieve Pogomasterdom."	a number
"You want to be the best. The best that ever was."
"Being the best means reaching as high a level as you can."
"Gaining XP (experience points) raises your level."
"Capturing Pogomen (creatures that run around in this world) earns XP."
"Entering Pogomen in gym battles earns even more XP."
"Exploring and taking care of Pogomen also yields XP."
"Finding hard-to-find artifacts also earns XP."
"Search far and wide. Explore everywhere. Seek out secrets."
"The Nyantech Corporation holds many secrets."

A hint activation rule (this is the capture explained hint activation rule):
	activate the Table of Capture Explained.
		
A hint deactivation rule (this is the capture explained hint deactivation rule):
	if there is a pogoName in row 1 of the Table of Inventory:
		deactivate the Table of Capture Explained.

Table of Capture Explained
hint	used
"Pogomen wander around. When you spot one, capture it."	
"To capture a Pogoman, throw a PogoBall at it."
"If you miss, try again."
"The commands [italic type]catch[roman type] or [italic type]capture[roman type] will also work."
"If you run out of pogoBalls, get more at a PogoStop."
"More evolved pogomen are harder to capture than lower pogomen."

A hint activation rule (this is the inventory management hint activation rule):
	if there is a pogoName in row 1 of the Table of Inventory:
		activate the Table of Inventory Management.
		
A hint deactivation rule (this is the inventory management hint deactivation rule):
	if the denouement is happening:
		deactivate the Table of Intro To Pogoman.

Table of Inventory Management
hint	used
"Captured Pogomen show up in your inventory."
"Your options are limited since pogomen in stock are in PogoBalls."
"You can [italic type]drop, evolve, examine, transfer, heal, [roman type]or [italic type]feed[roman type] captured Pogomen."
"If you [italic type]drop[roman type] a Pogoman, it will [if Exploring The Tower has ended]stand guard[otherwise]run away[end if]."
"If you [italic type]evolve[roman type] a Pogoman, it will increase its fighting power."	
"If you [italic type]transfer[roman type] a pogoman, it will teleport away."
"You need PogoMeth to [italic type]heal[roman type] wounded Pogomen."
"You need PogoChum to [italic type]feed[roman type] Pogomen."
"You can get PogoMeth, PogoChum, and other stuff from PogoStops."
"To specify a non-captured pogoman, refer to it as wild[if Exploring The Tower has ended] or loyal[end if]."
"You can have up to [MODE_POGOMEN_INVENTORY_LIMIT] in your stock at one time."
"[italic type]Transfer[roman type][if Exploring the Tower has not ended] or [italic type]Drop[roman type][end if] will get rid of wounded pogomen first."

A hint activation rule (this is the pogostops explained hint activation rule):
	if the Pogostop is in the location of the player:
		activate the Table of PogoStops Explained.
	
A hint deactivation rule (this is the pogostops explained hint deactivation rule):
	if the number of entries in the booty of the Pogostop is greater than 0:
		deactivate the Table of PogoStops Explained.

Table of PogoStops Explained
hint	used
"Did you try examining the pogostop?"	
"You can get good stuff (like PogoBalls) by spinning the pogostop"	
"You have to be at a pogostop to [italic type]spin[roman type] it."
"Find pogostops in town by using your phone's scanner."
"Type [italic type]scan[roman type] to activate your scanner."
"On the scanner, [quotation mark]P[quotation mark] represents a pogostop"
"On the scanner, [quotation mark]X[quotation mark] may mask the [quotation mark]P[quotation mark] if you stand on top of a pogostop."
"After the pogostop is spun, you cannot immediately re-spin it." 
"Pogostops can only be spun every [MODE_POGOSTOP_LOCKOUT_DURATION] turns."
"You can only carry [MODE_POGOITEM_INVENTORY_LIMIT in words] game items at a time."
"You can [italic type]drop[roman type] excess items to make room for more."
"Dropping eggs is especially useful, since new pogomen will hatch."

A hint activation rule (this is the pogoGyms Explained hint activation rule):
	if the Gym is in the location of the player:
		activate the Table of PogoGyms Explained.
		
A hint deactivation rule (this is the pogoGyms Explained hint deactivation rule):
	if the number of entries in TROPHYLIST is greater than 0:
		deactivate the Table of PogoGyms Explained.

Table of PogoGyms Explained
hint	used
"You need to enter a gym to win Pogoman battles[if pogolevel of the player is less than GYM_ENTRY_LEVEL_REQUIREMENT], but to enter, you need more experience[end if]."
"You can earn XP and trophies by participating in Pogoman battles."
"Pogomaster are persistent; if you have difficulty entering a gym, keep trying."
"As a pogomaster, you will always (automatically) select your best champion for battle."
"In battle, the more evolved pogoman usually has the advantage."
"If you have unevolved pogomen in stock, use the [italic type]evolve[roman type] command to upgrade them."
"[italic type]Heal[roman type] any wounded pogomen; they are at a disadvantage in gym battles."
"Winning pogomen come out of the gym wounded; as for losers, best not dwell on that."
"Some powerful artifacts can enhance your chances of winning at the gym."

A hint activation rule (this is the Overcoming Borders hint activation rule):
	if the diedAtBorder of the player is true:
		activate the Table of Overcoming Borders.
		
A hint deactivation rule (this is the Overcoming Borders hint deactivation rule):
	if the RevolvingDoor is visited:
		deactivate the Table of Overcoming Borders.

Table of Overcoming Borders
hint	used
"Walking out of town seems problematic."
"You are welcome to keep trying."
"One does not simply walk out of town."
"Pogomasters do not seek outward enlightenment, but inward."
"To make it to the big time, you need to get out of this penny ante backwater."
"For pogomasters, the big time is synonymous with Nyantech, Inc."

A hint activation rule (this is the Overcoming Peril hint activation rule):
	if the passaged of the perilous passageway is greater than 0:
		activate the Table of Overcoming Peril.
		
A hint deactivation rule (this is the Overcoming Peril hint deactivation rule):
	if the passaged of the perilous passageway is greater than 8:
		deactivate the Table of Overcoming Peril.

Table of Overcoming Peril
hint	used
"Seems like there is something valuable in the dark passageway."
"Some thugs are preying on Pogoman GO! players"
"Getting beaten up hinders you playing, but doesn't kill you outright."
"Through persistence, you may wear down the thugs."
"A true Pogomaster would not let mere thuggery get in the way."
"Whatever is in there must be worth the effort!"
"Keep Calm and Pogoman On!"

A hint activation rule (this is the Artifact Elucidation hint activation rule):
	if the passaged of the perilous passageway is greater than 8:
		activate the Table of Artifact Elucidation.
		
A hint deactivation rule (this is the Artifact Elucidation hint deactivation rule):
	if the Baseball Cap of Pogomastery is not in the void:
		deactivate the Table of Artifact Elucidation.

Table of Artifact Elucidation
hint	used
"Your scanner was going crazy - the artifact must be in the alley."
"Is it possible that the artifact is not out in the open?"
"Could the artifact be in something?"
"Why has no one else found the artifact?"
"Pogomastery is not always a clean business."
"Hold your nose and do whatever it takes!"
"It may be unpleasant, but have you looked in the garbage can?"
"More specifically, have you searched the stuff in the can?"

A hint activation rule (this is the Overcoming Unicorn hint activation rule):
	if Nyantech Entrance is visited:
		activate the Table of Overcoming Unicorn.
		
A hint deactivation rule (this is the Overcoming Unicorn hint deactivation rule):
	if the RevolvingDoor is visited:
		deactivate the Table of Overcoming Unicorn.
		
Table of Overcoming Unicorn
hint	used
"The unicorn seems like a jerk, but is just doing his job."
"Actually, the unicorn is not so bad, even chatty at times."
"The unicorn is a stickler for regulations."
"The unicorn will always tell you what you need to do to get in."
"Only players who have proven themselves can get into the building."
"You can prove yourself by gaining levels and XP, medals, and gym trophies."

A hint activation rule (this is the Exploring Nyantech hint activation rule):
	if the Lobby is visited:
		activate the Table of Exploring Nyantech.
		
A hint deactivation rule (this is the Exploring Nyantech hint deactivation rule):
	if the securityColor of the badge is Green:
		deactivate the Table of Exploring Nyantech.

Table of Exploring Nyantech
hint	used
"Just getting into Nyantech is considered the Holy Grail for Pogomasters!"
"Everyone knows that Nyantech keeps the best tech for itself."
"Nyantech encourages players to visit and explore their headquarters."
"If you snoop around a bit, you may get some inside info on the game."
"This is a chance to mingle with both Nyantech employees and other gamers."
"Curious. Not every part of Nyantech is accessible to you. At least, not yet."
"Access to different areas seems to depend on a color code scheme."
"Your badge does not allow you to access all areas."
"To access some areas, you need to upgrade your badge."
"You need to really absorb some of the Nyantech corporate culture to advance."
"Imbibe the Nyantech Zeitgeist!"
"Can you really swallow Nyantech's way of doing things?"

A hint activation rule (this is the Finding Legal hint activation rule):
	if the securityColor of the badge is Green:
		activate the Table of Finding Legal.
		
A hint deactivation rule (this is the Finding Legal hint deactivation rule):
	if Legal Department is visited:
		deactivate the Table of Finding Legal.

Table of Finding Legal
hint	used
"Now that you have a green badge, can you go anywhere new?"
"Is there a green area on another floor from you?"
"Have you checked out the staircase or elevator for a green area?"
"Have you seen the green door in the basement?"
"Have you tried riding the elevator to the Legal Department?"
"Is there something to explore in the Legal Department?"
"Your badge gives you special access to the Legal Department."

A hint activation rule (this is the Signing Up hint activation rule):
	if the Legal Department is visited:
		activate the Table of Signing Up.
		
A hint deactivation rule (this is the Signing Up hint deactivation rule):
	if the Beta Testing Door has been unlocked :
		deactivate the Table of Signing Up.

Table of Signing Up
hint	used
"It's almost like Nyantech [italic type]wanted[roman type] you to get into the Legal Department."
"Is there anything here that gives you more information?"
"How about the computer screen?"
"Oh boy! It's your dream to be a Nyantech best-tester!"
"Surely,  you'd agree to almost any terms to become an official beta-tester."
"Have you reviewed the terms of the beta-testing agreement?"
"To review the terms, type [italic type]touch review[roman type]."
"It sure sounds reasonable-ish. Doesn't it?"
"To reap all the benefits of being a beta-tester, you merely need to agree."
"Follow the instructions on the screen to agree."

A hint activation rule (this is the Beta Testing hint activation rule):
	if the Beta Testing Door has been unlocked:
		activate the Table of Beta Testing.
		
A hint deactivation rule (this is the Beta Testing hint deactivation rule):
	if the Cousteau Door has been open:
		deactivate the Table of Beta Testing.
		
Table of Beta Testing
hint	used
"First of all, congratulations. Not many players make it this far. Welcome to Beta!"
"Has agreeing to be a beta-tester unlocked any doors for you?"
"Any nearby doors, that is?"
"How about the door to Beta Testing, just south of the Legal Department?"
"Have you found a festive hat and celebrated appropriately?"
"It doesn't matter. Just thought you might like to celebrate a bit with a funny hat."
"Have you found another door you can't get through?"
"You can probably only get through green (or white) doors with a green badge."
"There is a door in the Beta Testing Room that looks suspiciously like a garage door."
"What do you suppose you need to open the Cousteau Room door?"
"Have you searched far and wide within the Legal Department?"
"Is there anything in the Legal Department that might help open the Cousteau Room door?"
"How about in the desk?"
"Did you look in the desk drawer?"
"Have you tried pushing the button on the remote?"
"Is there any reason the garage door remote wouldn't work?"
"What powers the garage door remote control?"
"Have you put fresh batteries into the garage remote?"
"Are there any other batteries around to put into the remote?"
"Can you find any other electrical device in the Legal Department?"
"How about the clock?"
"Have you examined the clock?"
"Can you remove the batteries from the clock?"
"Does the back of the clock open?"
"Can you put the AA batteries from the clock in the remote?"
"Does the remote work now?"
"Maybe the remote has limited range."

A hint activation rule (this is the Aquatics hint activation rule):
	if the Cousteau Room is visited:
		activate the Table of Aquatics.
			
A hint deactivation rule (this is the Aquatics hint deactivation rule):
	if the securityColor of the badge is blue:
		deactivate the Table of Aquatics.

Table of Aquatics
hint	used
"What possible need could I have for a wetsuit in an office building?"
"Is there any place in the building to swim?"
"Pretty sure there is no pool in the building."
"How about somewhere on the upper floor?"
"Maybe you can swim in something other than water?"
"Have you visited the ball pit? Everybody loves the ball pit."
"Swimming around the surface of the ball pit is fun, isn't it?"
"Wonder how far down that ball pit goes."
"You can only hold your breath for so long."
"The wetsuits incorporates air tanks."
"You can dive deeper in the ball pit while wearing the wetsuit."
"What is at the bottom of the ball pit?"

A hint activation rule (this is the Blues hint activation rule):
	if the securityColor of the badge is blue:
		activate the Table of Blues.
			
A hint deactivation rule (this is the Blues hint deactivation rule):
	if the Rick Astley Shrine is visited:
		deactivate the Table of Blues.
		
Table of Blues
hint	used
"So, a blue badge. What color door do you think that opens?"
"Have you searched the entire building?"
"Some of the sub-basement levels are not accessible from the elevator."

A hint activation rule (this is the Rick Assistance hint activation rule):
	if the Rick Astley Shrine is visited:
		activate the Table of Rick Assistance.
			
A hint deactivation rule (this is the Rick Assistance hint deactivation rule):
	if the LAN Closet Door has been open:
		deactivate the Table of Rick Assistance.
		
Table of Rick Assistance
hint	used
"What can I learn from finding a walkman?"	
"Have you tried putting on the earphones?"	
"Pretty loud and painful, right?"	
"It would kind of drown out any other noise, wouldn't it?"	
"Is there any place that you haven't been able to go?"
"Any place you've been afraid to enter?"
"Some people have a weird sensation when exploring around the Lobby."
"Have you approached the LAN closet?"
"Most people get suddenly afraid near the closet."
"The closet emits a strong sound that seems to affect people."
"Can you now approach the closet?"
"If you put on the earphones, is it loud enough to let you get near the closet?"

A hint activation rule (this is the Blinkiness hint activation rule):
	if the LAN Closet is visited:
		activate the Table of Blinkiness.
			
A hint deactivation rule (this is the Blinkiness hint deactivation rule):
	if the onHoldFlag of the CAT Control is true and entry 1 in HEADING is "S":
		deactivate the Table of Blinkiness.
		
Table of Blinkiness
hint	used
"Safety before fun: have you disabled the sound system?"
"There are sooooooo many blinky lights in the LAN Closet. But which ones matter?"
"Some of them are on networking equipment. Better not mess with those."
"The LAN Closet has two functions, only one is related to the LAN."
"The other function of the room is mentioned on the outside of the door."
"What do you think the CAT controls affect?"
"What do you know about Nyantech's mascot, a beret-wearing cat?"
"Have you seen the cat from outside the building or the observation deck?"
"Can you affect the rotation of the cat around the building?"
"Why would you want to?"
"Have you checked out the observation deck on the top level?"
"Is it safe up there? After all, it's dangerously high."
"How sturdy is that railing around the observation deck?"
"Does the railing run all the way around the deck?"
"Enough hints. At this point, you need to take a leap of faith."

A hint activation rule (this is the Ruby Seeking hint activation rule):
	if the player is in the Cat Area:
		activate the Table of Ruby Seeking.
	
A hint deactivation rule (this is the Ruby Seeking hint deactivation rule):
	if the securityColor of the badge is red:
		deactivate the Table of Ruby Seeking.
		
Table of Ruby Seeking
hint	used
"Fine. You've made it to the cat. Keep on task."
"Any guess about what color badge you need to advance?"
"Is the cat associated with any prominent color, say, its eyes? Its beret?"
"Take a look around, you'll know it when you find it."
"The cat's eyes collect and focus psychic energy, best look around there."

A hint activation rule (this is the Royal Reception hint activation rule):
	if the securityColor of the badge is red:
		activate the Table of Royal Reception.
	
A hint deactivation rule (this is the Royal Reception hint deactivation rule):
	if the player is in the Throne Room:
		deactivate the Table of Royal Reception.

Table of Royal Reception
hint	used
"You have seen no one with a red badge. You have surpassed all the other players."
"What color door might a red badge open?"
"Where would Nyantech bury its deepest secrets?"
"The lower you go, the closer you get to revealing the truth about Nyantech."
"How are you going to get out of the cat?"
"Can you manage to get back up to the observation deck?"
"No? How about some other way off the cat?"
"Does the cat attach to the building somehow?"
"How about the support beam?"
"Can you find a way back into heart of the building?"
"Watch that last step!"

A hint activation rule (this is the Caviar Dreams hint activation rule):
	if the Throne Room is visited:
		activate the Table of Caviar Dreams.
	
A hint deactivation rule (this is the Caviar Dreams hint deactivation rule):
	If the MuskPodRoom is visited:
		deactivate the Table of Caviar Dreams.
		
Table of Caviar Dreams
hint	used
"Are you a fan of champagne?"
"Or do you detest it?"
"If you have no strong feelings about champagne, try looking around."
"Is any feature of the room highlighted?"
"There is something funky about the dais."
"As you've probably noticed, there is a way downward."
"When you've had enough rant, the MuskPod awaits."
"After entering the pod, check out the luxurious interior."
"Have you tried the heads-up display?"
"Enjoy the ride."

A hint activation rule (this is the Surviving Pogoland hint activation rule):
	if Pogoland Terminal is visited:
		activate the Table of Surviving Pogoland.
		
A hint deactivation rule (this is the Surviving Pogoland hint deactivation rule):
	if Not In Kansas Anymore has ended:
		deactivate the Table of Surviving Pogoland.

Table of Surviving Pogoland
hint	used
"Now that you've arrived in Pogoland, you might notice a wee paradigm shift."
"Pogoman GO! plays a little differently here."
"Did you notice what happened as you exited the MuskPod?"
"When you drop pogomen from your stock they take up defensive positions."
"Defensive... against whom?"
"Have you met anyone else in Pogoland?"
"Do wild pogomen seem to have more of an attitude here?"
"The playing field is now level. You are as much hunted as hunter."
"Is running away a viable strategy?"
"Can you still capture a wild pogoman?"
"What happens if a defending pogoman and wild pogoman meet?"
"You're not much of a fighter, but how about attacking a wild pogoman?"
"How about your special attack, or are you saving it for something?"
"If you're injured, have you tried taking pogoMeth?"
"Can you escape from Pogoland?"

A hint activation rule (this is the Gym Class hint activation rule):
	if the roundsElapsed of the gymnasium is greater than 0:
		activate the Table of Gym Class.
		
A hint deactivation rule (this is the Gym Class hint deactivation rule):
	if the player is not in the Gymnasium:
		deactivate the Table of Gym Class.

Table of Gym Class
hint	used
"This looks just like a Pogoman battle."
"It doesn't look like there are any doors."
"The opponent looks pretty tough."
"Have you tried deploying a defender to help fight?"
"Are your own attacks effective?"
"Have you tried your special attack, or are you saving it for something?"
"Are there options other than fighting?"
"Where does that rope go?"
"Can you get to the windows near the ceiling?"

[This will enable after the player has left the boat for the first time, to give a 
chance to first play around with the boat]

A hint activation rule (this is the Seamanship hint activation rule):
	if the Fishing Boat is visited:
		activate the Table of Seamanship.
		
A hint deactivation rule (this is the Seamanship hint deactivation rule):
	if Not In Kansas Anymore has ended:
		deactivate the Table of Seamanship.
		
Table of Seamanship
hint	used
"Are you sure the boat is seaworthy?"
"How far away do you think you can make it in that dinghy?"
"Did you tilt the motor downward into the water?"
"Could you get the motor started?"
"Have you tried pulling the starter cord?"
"Have you checked the gas tank?"
"Where could you find more gas?"
"Are there any convenient containers for gas around?"
"Did you manage to fill up the tank?"
"If so, can you start the motor now by pulling the cord?"
"Some motors need to have the choke engaged to start."

A hint activation rule (this is the Boss Battle hint activation rule):
	if Elon Musk is in Processing:
		activate the Table of Boss Battle.
		
A hint deactivation rule (this is the Boss Battle hint deactivation rule):
	if Denouement has ended:
		deactivate the Table of Boss Battle.
		
Table of Boss Battle
hint	used
"Is there any way out of here?"
"What do you need to operate the elevator from this floor?"
"What item does Musk have that you need?"
"Can you find a way to distract Elon Musk?"
"Do you have anything in stock that will help you?"
"Pogomen?"
"PogoMeth?"
"Musk is a great entrepreneur, but pretty lousy fighter. Can you punch him?"
"Do you have enough XP to mount a special attack?"

A hint activation rule (this is the Wicked Witch hint activation rule):
	if the vitality of Elon Musk is dead:
		activate the Table of Wicked Witch.
		
A hint deactivation rule (this is the Wicked Witch hint deactivation rule):
	do nothing.

Table of Wicked Witch
hint	used
"Good work! Do you need to relieve Mr. Musk of anything?"
"How about that golden security card?"
"You're on your own now!"

A hint activation rule (this is the Unstickiness hint activation rule):
	activate the Table of Unstickiness.
		
A hint deactivation rule (this is the Unstickiness hint deactivation rule):
	do nothing.

Table of Unstickiness
hint	used
"Through the ages, pogomasters have handed down some practical wisdom."
"Take a look at less common commands, try typing [quotation mark][italic type]commands[roman type][quotation mark]."
"Try everything you can think of. If it doesn't work, try rephrasing."
"Reread text to make sure you didn't miss anything."
"Sometimes if you fail at first, you may succeed by trying again."
"Leave no stone unturned; conversely, don't obsess."
"This game follows many, but not all, of the conventions of computer adventure games. If something makes sense to you, try it even though it [quotation mark]shouldn't work.[quotation mark]"
"If you are really stuck, put the game aside and let it percolate through your subconscious for a while. Come back fresh."
"If you are really really stuck, con someone else into playing the game and watch them. You might get some ideas."
"If you are really and truly stuck, you could search the Internet and see if someone has already posted a similar question/answer. Also, check out the game's website (pogomango.templaro.com). If you do post a question or answer, preface your message with a spoiler warning and skip down a bunch of lines before writing anything too revealing."
"If all else fails, the game includes a walkthrough (type [italic type]walkthrough[roman type]), which shows one possible way through the game. The walkthrough is nothing but spoilers, so please consider this a last resort, or something to look at after you've played through the game."
"As far as we know, it is not possible to get trapped in an unwinnable situation. By winning, we mean you can complete the game. Achieving good outcomes is another matter."
"Good Luck!"

	