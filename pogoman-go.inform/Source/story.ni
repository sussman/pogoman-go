"Pogoman Go!" by Jack Welch and Ben Collins-Sussman


The story headline is "An interactive satire".
The release number is 1.
The story creation year is 2016.
The story description is "The world is full of Pogomen, and now that you don’t have a job or family to worry about, you might as well get back to it!"

Use MAX_STATIC_DATA of 250000.
[Use MAX_OBJECTS of 700.
Use Max_DICT_ENTRIES of 1500.]

Use full-length room descriptions, american dialect and the serial comma.

[TODO:  Release along with cover art.]

Include Basic Screen Effects by Emily Short.  [allows us to 'pause the game']


Book 1 - Mechanics

Chapter Kinds

Section 1 - General

Rooms have some text called title. 

A prop is a kind of thing. It is usually portable.

Color is a kind of value. The colors are None, Teal, Chartreuse, Alizarin Crimson, Viridian, Papayawhip, and Unbleached Titanium.

securityColor is a kind of value. The securityColors are white, green, blue, red, black, pink, purple, gold.

A door has a securityColor. The securityColor of a door is usually white.

A prop has a securityColor. The securityColor of a prop is usually white.

A chainItem is a kind of thing. A chainItem can be clipped or unclipped. A chainItem is usually clipped, fixed in place scenery.

Flavor is a kind of value. The flavors are strawberry, blueberry, raspberry, apple, cranberry, chocolate, licorice, pumpkin, pine-nut, pesto, liver, watermelon, apricot, teriyaki, chutney, fudge, tiramisu, and cinnamon.

A pastry is a kind of edible prop. A pastry has a flavor. The flavor of a pastry is usually blueberry. [because I like blueberry pastries.]

A pop is a kind of thing. It is usually scenery.

A room has a text called possible exits.

Deck rooms are a kind of room. The description of deck rooms is "[deckDescription]." The possible exits of deck rooms is "[deckExits]."

Staircase rooms are a kind of room. The description of staircase rooms is "[stairwellDescription]."

Nyantechnology is a kind of thing. 

A lightsource is a kind of device.

LocaleDescriptor is a kind of value. The LocaleDescriptors are place, structure, and artifact.

A catTopDrop is a kind of backdrop. catTopDrops are privately-named. 

An lift button is a kind of improper-named privately-named fixed in place thing. 

A Katatron is a kind of thing. A katatron has a number called PEC.  The PEC of a katatron is usually 0.
A katatron has a number called MegaCats. The MegaCats of a katatron is usually 0.
A katatron has a truth state called the onHoldFlag. The onHoldFlag of a katatron is usually true.
[Note- there is probably only one katatron in existence - the one in Nyantech Tower]

A victrola is a kind of supporter. 
A victrola has a truth state called isBrokenFlag. The isBrokenFlag of a victrola is usually false.
A victrola has a truth state called isOnFlag. The isOnFlag of a victrola is usually true.

A worker is a kind of person. The description of a worker is "Like all the other employees, [if the number of  workers in the elevator is greater than one]these stare[otherwise]this one stares[end if] distractedly into space." Understand "employee" or "worker" or "monocle" or "monocles" or "employees" or "workers" as a worker. 

A gamer is a kind of  privately-named person. The description of the gamer is "Not so different from the way you hope you don[apostrophe]t appear to others." Understand "visitor" or "gamer" or "visitors" or  "gamer" or "gamers" as a gamer. 

A workerProxy are a kind of plural-named scenery thing. A workerProxy has a list of text called WPLIST. 

Section 2 - Player properties

The player has a number called pogoLevel.
The player has a number called XP.
The player has a number called Trophies.
The player has a number called distance walked. Distance walked is 0.
The player has a color called team color. The team color of the player is usually none.
The player has a number called pogoballsCarried.  pogoballsCarried is 3.
The player has a room called previousRoom. previousRoom is the void.
The player has a number called the TeamColorPrompt. The TeamColorPrompt is 0.

Section 3 - Pogo Items

[These 'kinds' each have a platonic forms in the Void which we dynamically clone as needed during run-time.]

A Pogoball-kind is a kind of thing.  The description is "It's a cheap mass-produced red and white plastic ball.".  Understand "ball" as a pogoball-kind.  The plural of pogoball-kind is PogoBalls.

Instead of dropping a pogoball-kind:
	decrease pogoballsCarried of the player by 1;
	say "The PogoBall drops to the ground, spins confusedly in search of a target, gives up, then blinks and disappears.";
	if pogoballsCarried of the player is 1:
		say "You have only one PogoBall left!";
	else if pogoballsCarried of the player is 0:
		move the pogoball to the Void;
		say "You have now run out of PogoBalls!";
	else:
		say "You now have [pogoballsCarried of the player] PogoBalls left."

A Pogochum-kind is a kind of thing.  The description is "Rancid bits of chopped up…. something. Whatever it is, Pogomen are attracted to it. Drop a bit of it, and a Pogoman will come to you!".  Understand "chum" as a pogochum-kind.  The plural of pogochum-kind is PogoChums.

A Pogometh-kind is a kind of thing.  The description is "You’re not sure what’s in it, but it seems to make pogoman feel better, at least until withdrawal sets in.".  Understand "meth" as a pogometh-kind.  The plural of pogometh-kind is PogoMeths.

[No need to dynamicallly clone these kinds-- theyre created in locations at compile-time.]

The pogostop is a backdrop. Understand "stop" as the pogostop.  The description of pogostop is "On your phone, a cartoon signpost with a picture of [the location][one of]. To get goodies from the pogostop, spin it[or][stopping]."

Definition: a quadroom is an okayInitialPogostopLocation if it is not Nyantech Entrance and it is not listed in POGOSTOPLIST and it is not in the Borderlands.

Definition: a room is pogoStopTargeted if it is listed in POGOSTOPLIST.

To distributeTownPogostops:
	repeat with N running from 1 to a random number from MIN_TOWN_POGOSTOPS  to MAX_TOWN_POGOSTOPS:
		add a random okayInitialPogostopLocation to POGOSTOPLIST;
	move the pogostop backdrop to all the pogoStopTargeted rooms.
	
Instead of taking the pogostop for the first time:
	say "The pogostops are just pictures on your phone.[paragraph break]";
	bestow "Get Real".
	
Instead of taking a pogostop:
	say "You can[apostrophe]t."
	
Section 4 - Gyms

A gym is a backdrop. Understand "gym" as gym. The description of gym is "The [color of the location] gym appears on your phone as stacked floating rings."

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
	say "You can[apostrophe]t fight in a gym until you reach level [GYM_ENTRY_LEVEL_REQUIREMENT in words]. It has something to do with your creditworthiness.[paragraph break]";
	bestow "Dealt With A Minor Rebuke".
	
Instead of entering a gym when the pogoLevel of the player is less than GYM_ENTRY_LEVEL_REQUIREMENT:
	say "A bouncer pogoman peers out of the gym through a narrow, sliding window and says, [quotation mark]Don[apostrophe]t nobody get in what ain[apostrophe]t got to level [GYM_ENTRY_LEVEL_REQUIREMENT in words], so [one of]beat it[or]take off[or]get yourself gone[or]get lost[or]take a powder[or]hit the road, sunshine[or]shove off[or]vamoose[or]take a hike[in random order].[quotation mark][paragraph break]"
	
Instead of entering a gym when the pogoLevel of the player is at least GYM_ENTRY_LEVEL_REQUIREMENT for the first time:
	say "The game pauses pensively.[paragraph break]The screen changes to the interior of the gym and the camera pans. Then everything stops. The game has glitched.";
	now the phone is hung.
	
Instead of entering a gym when the pogoLevel of the player is at least GYM_ENTRY_LEVEL_REQUIREMENT for the second time:
	say "The scene shifts fluidly to the interior of the gym. The [color of the location] team has put forward a formidable Idiotti, but you think you can take him. With a practiced thumb, you select your strongest pogoman and send it into combat.[paragraph break]The camera angle spins. Your champion bounces back and forth, judging the enemy and preparing its attack. There’s a countdown and the world [quotation mark]GO[quotation mark] zooms towards you.[paragraph break]Zooms, well, moves reasonably quickly. No, slowly now. It’s stopped. It is just hanging there. White, inanimate letters fill your screen. You can see your pogoman still jinking about like a fool through the [quotation mark]O[quotation mark] in [quotation mark]GO[quotation mark].[paragraph break]Maybe it will keep going if you wait a minute.[paragraph break]No. It’s not going anywhere.[paragraph break]It’s stuck. Your phone has crashed.";
	now the phone is hung.
	
Instead of entering a gym when the pogoLevel of the player is at least GYM_ENTRY_LEVEL_REQUIREMENT for the third time:
	say "The exterior of the gym dissolves and your pogoman faces off against an obviously inferior opponent: a low-level Tinkelwaif. The Tinklewaif looks like it has been through hell and back in this gym. Its fur is matted and tufts are missing. It stares ahead with wide, emotionless eyes, ready to endure yet another senseless beating for the honor of the gym. During the countdown it swigs deeply from a hip flask and shakes its scar-covered head to focus, showering the gym in tinkeldust. The countdown finishes, and your Pestilence Vermin leaps across the arena, claws bared, fangs down, sure of an easy kill.[paragraph break]Turn after turn, your pogoman rips into the frail Tinkelwaif with highly effective attacks; its special move sends the hopelessly outclassed Tinkelwaif to the mat. Its life energy trickles away and you sense victory a mere moment away.[paragraph break]And then the HP counter holds at one.[paragraph break]Through a curtain of tears and blood, the Tinkelwaif smiles vindictively and climbs back to its feet, still hanging onto your pogoman for support. You pogoman hasn’t noticed. It is still flinging attack after attack, but doing no damage.[paragraph break]Now it is your pogoman who is flagging. Its attacks come slower and slower. It fights a futile battle. Frothy blood escapes its lips as it collapses to the ground and is kicked cruelly by the opponent -- it looks imploringly at you, unable to understand how the tables have turned. The victorious Tinkelwaif pushes your pogoman to the edge of the gym platform and slow claps for itself as the empty shell of a pogoman plunges to the ground.[paragraph break]You console yourself that at least the game didn’t freeze.[paragraph break]";
	wait for any key;
	say "And then the game freezes.";
	now the phone is hung.
	
Instead of entering a gym when the pogoLevel of the player is at least GYM_ENTRY_LEVEL_REQUIREMENT for more than the third time:
	say "TODO: General Gym Battle Simulation HERE."
	
Section 5 - Pogomen

[This can go up with kinds later, but for now, here for clarify]
Pogotype is a kind of value. The pogotypes are edator, vicore, emaks, plague rhat, plague vermin, and rodentikor.

[There is only ONE pogoman -- he's either in the Void or in the current room, with one of many temporary names.
 When the pogoman is 'captured', we simply move him back to the Void and fill out a row in an Inventory table to show the acquisition. The player can only deal with the pogoman in front of him/her.]

The pogoman is a neuter animal.  The description of pogoman is "[pogoDescription corresponding to pogomanName of type of pogoman in the Table of Creatures][if the isWounded of the pogoman is true]. This [type of pogoman] is wounded[end if].". The printed name of pogoman is "[type of pogoman]".
	  
Pogoman has a number called evolutionLevel.  Pogoman has a pogotype called type. Pogoman has a truth state called isWounded.[true if wounded]

Instead of taking pogoman:
	say "You'll have to throw a Pogoball at it to capture it!".
		
Table of Creatures
pogomanName	pogoDescription
edator	"A creature of note"
vicore	"Simple and clean, covered with lines"
emaks	"A buffed and buffered creature"
plague rhat	"A mysterious rodent of a vermininous nature"
plague vermin	"A rodent with extra poison"
rodentikor	"Too much rodent for mortals to handle"

Table of Evolution
Original	Ev2	Ev3
edator	vicore	emaks
plague rhat	plague vermin	rodentikor
	
Table of Inventory
pogoName(a pogotype)	wounded (a truth state)	defending (a room)
with 100 blank rows.

Understand "edator" as pogoman when the type of pogoman is edator.
Understand "vicore" as pogoman when the type of pogoman is vicore.
Understand "emaks" as pogoman when the type of pogoman is emaks.
Understand "plague rhat" as pogoman when the type of pogoman is plague rhat.
Understand "plague vermin" as pogoman when the type of pogoman is plague vermin.
Understand "rodentikor" as pogoman when the type of pogoman is rodentikor.

[BEN: Problem:  if the player carries 3 different virtual pogomen, and then says 'examine emaks' to look at one of them, how do we know which description to return?  What if the player tries to do anything with Emaks?  (drop, eat, 

JACK: The number of things we do with pogomen in inventory is very limited: drop/throw/choose, transfer, give pogometh/heal. To cover those possibilities,  define new commands that work on a *topic*  that can be read from the inventory list. That eliminates the issue of having to have a proxy object in scope. This even makes sense in terms of the game paradigm - the pogomen in inventory are in their respective pogoballs, and the user can't interact with them. They aren't available until they are released/transferred.]

section 6 - Capture Pogomen

Capturing is an action applying to a thing. Understand "capture [thing]" as capturing.

Check capturing:
	if the noun is a person:
		if the noun is an animal:
			if the player carries the pogoball:
				continue the action;
			otherwise:
				say "You don[apostrophe]t have any pogoballs[one of]! You capture pogomen by throwing pogoballs at them, so go get some pogoballs first[or][stopping]!";
		otherwise:
			say "That[apostrophe]s illegal, well, at least here it is.";	
			the rule fails;	
	otherwise:
		try taking the noun.

Carry out capturing:
	try throwing the pogoball at the pogoman.
	
Instead of throwing a pogoball at something (called the target):
	if the target is the pogoman:
		[for purposes of demonstration, simplified for now to just move the pogoman to inventory, but will need expansion to allow captures where the throw misses or the pogoman escapes the pogoball]
		decrease pogoballsCarried of the player by one;
		move the pogoman to the void;
		choose a blank row in the table of inventory;
		now pogoName entry is the type of the pogoman;
		now wounded entry is the isWounded of the pogoman;
		now defending entry is the location of the player;
		say "The hapless [type of pogoman] is sucked into the ball!";
	otherwise:
		say "You chuck the pogoball, and encountering no pogoman, it implodes when it lands.";
		decrease pogoballsCarried of the player by one.
		
section 7 - PogoInventory
	
After taking inventory:
	follow the pogo-inventory rule.
	
This is the pogo-inventory rule:
	sort Table of Inventory in defending order;
	sort Table of Inventory in wounded order;
	sort Table of Inventory in pogoName order;
	if there is no pogoName in row 1 of the Table of Inventory:
		say "Alas, you have no pogomen!";
	otherwise:
		say "Pogomen Stock:[line break]";
		repeat with N running from 1 to the number of rows in the Table of Inventory:
			choose row N in the Table of Inventory;
			if there is no pogoName entry, break;
			let C be "[pogoName entry]";
			let T be C in title case;
			[
			this needs refinement, but full list is given for development purposes. Later, would only display defending 
			when Not In Kansas Anymore is happening. Also, would group pogomen that have the same attributes.
			]
			say "* [T][if wounded entry is true] (wounded)[end if], Defending ";
			say header of defending entry;
			say line break;
	say line break.

section 8 - Spawning

[see Chapter Not Ready For Prime Time - spawning is a test command to generate a random pogoman for so-called "experimentation" in the location of the player]


section 9 - Commands operating on pogomen in inventory
[these commands operate on the text value in the topicLookup column of the inventory table. That column is created based on the pogotype value of the pogoman at the time it is added to the inventory]

InventoryDropping is an action applying to one pogotype.

Understand "drop [pogotype]" as inventoryDropping.

carry out inventorydropping:
	say "You drop a [pogotype understood]."



Chapter Declare Constants

INITIAL_POGOLEVEL is always 3.
INITIAL_XP is always 320.

MIN_TOWN_POGOSTOPS is always 6.
MAX_TOWN_POGOSTOPS is always 9.
MIN_TOWN_GYMS is always 2.
MAX_TOWN_GYMS is always 4.

POGOSTOP_TIMEOUT_DURATION is always 10.

MEDAL_XP_VALUE is always 10.
EVOLUTION_XP_VALUE is always 50.
POGOSTOP_XP_VALUE is always 10.
CAPTURE_XP_VALUE is always 100.
INCENSE_XP_VALUE is always 10.
TRANSFER_XP_VALUE is always 20.
GYM_VICTORY_XP_VALUE is always 300.

SPECIAL_ATTACK_XP_COST is always 100.

POGOMEN_INVENTORY_LIMIT is always 100.
POGOITEM_INVENTORY_LIMIT is always 100.

The list of numbers called PEDOMETER_AWARD_DISTANCES is always {10, 30, 100, 300, 1000, 3000, 10000, 30000}.

GYM_ENTRY_LEVEL_REQUIREMENT is always 5.

TOWER_XP_REQUIREMENT is always 1000.
TOWER_TROPHY_REQUIREMENT is always 1.
TOWER_LEVEL_REQUIREMENT is always 8.
TOWER_MEDAL_REQUIREMENT is always 10.

The list of colors called CORE_TEAM_COLORS is always {Teal, Chartreuse, Alizarin Crimson}.
The list of colors called EXTENDED_TEAM_COLORS is always {Viridian, Papayawhip}.

[additional settings TODO: related to random chances of various actions, like pogomen showing up in  a given room]


Chapter Declare Global Variables

[booleans]

SUPPRESSMEDALS is a truth state that varies. SUPPRESSMEDALS is false.
The BLOCKSTAGEBUSINESSFLAG is a truth state that varies. The BLOCKSTAGEBUSINESSFLAG is false.

[lists - because Jack loves lists]

POGOSTOPLIST is a list of rooms that varies.
GYMLIST is a list of rooms that varies.
MEDALLIST is a list of text that varies.
HEADING is a list of text that varies. HEADING is {"N", "NE", "E", "SE", "S", "SW", "W", "NW"}.



Chapter Rules Modifications


Section 1 - Direct Parser Input (hung phone, get all) 

Understand "reboot/reinitialize/initialize/IPL/r" or "reboot phone" as "[rebootage]".

After reading a command:
	if the phone is hung:
		increase the ignored command count of the phone by one;
		if the player's command includes "[rebootage]":
			continue the action;
		if the player's command includes "[a direction]":
			say "[one of]No sense in walking anywhere if the game isn’t playing. Better reboot the phone.[or][run paragraph on][stopping]";
		otherwise:
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
		if the testPogoMeth is trippy:
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
	say "Disgusted with your indecision, your phone arbitrarily assigns you to the reviled unbleached titanium team, which you didn’t even know was a team. To drive the point home, it vibrates maniacally and locks up.[paragraph break]";
	bestow "Welcome To Team Unbleached Titanium";
	now the teamColorPrompt of the player is zero;
	now the phone is hung.
	

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
	say "LOL. Almost immediately, you receive text notifications from all your friends letting you know that they have joined Team [C]. Guess you should have checked with them first :-([paragraph break]";
	now the teamColorPrompt of the player is 0.

Section 2 - Room Headers

To say header of (QTH - a room):
	let T be the title of the location;
	if T is "":
		let T be the printed name of the location;
	let T be T in title case;
	say "[T]".

This is the room header rule:
	say bold type;
	say header of location;
	say roman type.
	
The room header rule substitutes for the room description heading rule.

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
	if the possible exits of the location is not "":
		say "[the possible exits of the location][paragraph break]".
		

Section 5 - Customized Inventory

Rule for printing inventory details of a pogoball-kind:
	say " ([pogoballsCarried of the player] total)[run paragraph on]"
	

Section 6 - Rotational text lists

To overhear things in (QTH - room):
	rotate the stage business of the QTH backwards;
	say entry 1 of the stage business of QTH.

Section 7 - Miscellany (probably reorganize later)

This is the run from sound rule:
	if the speaker is active and the walkman is not worn:
		say "You run screaming from the LAN closet back into the Lobby, slamming the LAN Closet Door behind you.";
		now the LAN Closet Door is closed;
		move the player to the Lobby.
		
After going from somewhere:
	increase the distance walked  of the player by one;
	if the distance walked of the player is listed in PEDOMETER_AWARD_DISTANCES:
		let L be "Traveler: [distance walked of the player] turns spent moving";
		bestow "[L]";
	continue the action.
	
After printing the locale description of a room (called the locale):
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
		say " is here."

Chapter Activities

Section ShowStatus

To ShowStatus:
	let C be "[securitycolor of the badge]";
	now the left hand status line is "PogoLevel: [pogoLevel of the player][if the team color of the player is not None]  |  Team: [team color of the player][end if][if the player carries the badge]  |  Badge: [C in title case]";
	now the right hand status line is "XP: [XP of the player]".
	

Section AwardXP

[moral equivalent of a global game score -- simply "AwardXP 30" when needed, and levelling will happen automatically.]

To AwardXP (award - a number):
	increase the XP of the player by award.

Chapter Verbs

Section Spinning

[TODO:  randomize what comes out]
[TODO:  user must wait 20 turns before being allowed to spin sign again]

Spinning is an action applying to a thing. Understand "spin [thing]" as spinning.
Carry out spinning:
	if the noun is the pogostop:
		say "The PogoSign spins around and spews out a PogoBall and a piece of PogoChum, which you quicklly scoop up.[paragraph break][one of]You gain [POGOSTOP_XP_VALUE] XP![or][stopping]";
		awardXP POGOSTOP_XP_VALUE;
		increase pogoballsCarried of the player by 1;
	otherwise:
		say "That's probably not something you should spin.[paragraph break]".

Section Evolving

[Evolving is an action applying to a thing.  Understand "evolve [thing]" as evolving.

Check evolving:
	if the noun is not a pogoman:
		say "Only Pogomen can evolve![paragraph break]";
		stop the action;
	if the player does not carry the noun:
		say "You have to capture it first![paragraph break]";
		stop the action.

Carry out evolving:
	let the new-pogoman be the Ev2 corresponding to Original of noun in the Table of Evolution;
	now the player carries the new-pogoman;
	move the noun to the Void;
	awardXP EVOLUTION_XP_VALUE;
	say "[The noun] ripples and glows with energy, shooting sparks in all directions as it hovers and spins in the air.  A moment later, you see that it has evolved into [a new-pogoman]! [paragraph break][one of]You gain [EVOLUTION_XP_VALUE] XP![or][stopping]". ]
	
Section PoweringUpping

PowerUpping is an action applying to a thing. Understand "power up [thing]" as powerUpping.

Check powerUpping:
	if the noun is not a pogoman:
		say "Only Pogomen can evolve![paragraph break]";
		stop the action;
	if the player does not carry the noun:
		say "You have to capture it first![paragraph break]";
		stop the action.
		
Carry out powerUpping:
	awardXP 10;
	say "Your [noun] is now even more impressive! You gain 10 XP![paragraph break]".
	
Section Transferring

Transferring is an action applying to a thing. Understand "transfer [thing]" or "transfer [thing] to/-- professor" as transferring.

Check transferring:
	if the noun is not a pogoman:
		say "Only Pogomen can be transferred[paragraph break]";
		stop the action;
	if the player does not carry the noun:
		say "You have to capture it first![paragraph break]";
		stop the action.
		
Carry out transferring:
	awardXP 10;
	[TODO remove the noun from play]
	say "[One of]You ship your [noun] off to the glue factory[or]The [noun] departs for its extended vacation with Herr Doktor[or]Off to the salt mines[or]Goodbye, [noun], I’ll miss you briefly[or]See ya[or]One less [noun] in the inventory[or]Sined. Sealed. Delivered[or]You briefly wonder [the noun] went, but decide not to worry about it[or]Shipped[or]The [noun] disappears in a wisp of smoke[or]The [noun] is vaporized and carried away on a gentle but ominous breeze[or]Transferred[stopping]! You gain 10 XP!"

Section Help

Helping is an action applying to nothing. Understand "help" as helping.

Report Helping:
	say "In the interest of not fostering further dependency behavior, your wearisome cries for help will henceforth be ignored."
	
Instead of helping for the first time:
	say "That’s what the internet is for. This had to be cranked out immediately due to market demand. Quality control be damned! Jimmy, our official beta-tester down at the plasma donation center, seemed reasonably happy without a help feature, so apparently it’s not really important. If you care enough to ask for help again, we will think about implementing the feature.[paragraph break]";
	bestow "Here, let me google that for you".
	
Instead of helping for the second time:
	say "Not joking about the website: PogomanGo.templaro.com.[paragraph break]Besides, what you are probably looking for is hints, right?[paragraph break]";
	bestow "Type [apostrophe]hints[apostrophe] for hints".
	
Instead of helping for the third time:
	say "There is no more help to be had here, but here’s a medal for your trouble.[paragraph break]";
	bestow "Needy".
	
Instead of helping for the fourth time:
	say "In the interest of not fostering further dependency behavior, your wearisome cries for help will henceforth be ignored. Consider it [quotation mark]tough love.[quotation mark][paragraph break]No medal for you.";
		
Section About

Abouting is an action applying to nothing. Understand "about" as abouting.

Report abouting:
	say "Don’t have an android or iOS device? Lost your phone under the couch? Are you wandering in a cave with no GPS? No problem. You can still enjoy Pogoman Go![paragraph break]";
	bestow "Typed a Meta-Command” .

Section Credits

Crediting is an action applying to nothing. Understand "credit" or "credits" or "blame" as crediting.
	
Report crediting:
	say "We[apostrophe]d like to thank the following folks for participating in development of this, what? Game? We hear that term is out of favor these days. Story? Yeah, we could go with that. But maybe something that sounds more grand. How about  Œuvre. Yes, that sounds very fancy and even forces interpreters to implement ligatures, so we[apostrophe]ll go with that. Enough about us, onto our honored contributors:[paragraph break]Early Concept Review:[line break]Jacqueline Lott[line break]Sam Kabo Ashwell[paragraph break]First pass editorial review:[line break]TBD[paragraph break]Beta-testers:[line break]TBD[paragraph break]Cover Art:[line break]TBD[paragraph break]Music credits are available with the command [quotation mark]music credits.[quotation mark][paragraph break]";
	bestow "So, who is to blame?".
	
Section Music Credits

MusicCrediting is an action out of world. Understand "music credits" as musicCrediting.

Carry out musicCrediting:
	do nothing.

Report musicCrediting:
	roll music credits.
	
Section Waving

Instead of waving hands, say "You wave your cell phone around in the air, dissipating heat."
	
Section Levelling

CheckLevel is an action out of world.
To CheckLevel:
	let F be pogoLevel of the player;
	let goalXP be 100 * (pogoLevel of the player + 1);
	if XP of the player > goalXP:
		now pogoLevel of the player is (XP of the player / 100);  [TODO make this an exponential table]
		say "You glow with power as your PogoLevel rises to [pogoLevel of the player].[paragraph break]";
		if F is less than GYM_ENTRY_LEVEL_REQUIREMENT and pogoLevel of the player is at least GYM_ENTRY_LEVEL_REQUIREMENT:
			pickGym.
		
		
To pickGym:
	say "Your credit score soars, and gyms are now willing to talk to you. You should pick a team color so you can accessorize! Your choices are: [CORE_TEAM_COLORS]. Which one is right for you?";
	now the teamColorPrompt of the player is 1.
	[and the rest is handed under the "after reading a command" section because it involves direct input from
	 the command line]

Section Rebooting

PhoneBooting is an action applying to nothing. Understand  "r" or "reboot"  or "reinitialize" or "initialize" or "IPL" as phoneBooting. 

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
	now the ignored command count of the phone is 0.
	
Report rebooting:
	say "You reboot the phone."	

After rebooting:
	say "[one of][postHang1][or][postHang2][or][postHang3][or][PostHang4][or][postHang5][or][postHang6][stopping]".
	
To say postHang1:
	say "The phone reboots. When it again has its wits, the phone draws your attention to the fact that if this ever happens again, which the phone points out is a vanishingly small possibility, but nevertheless, if the phone needs to be rebooted at some point in the future, you can avail yourself of the short-cut [quotation mark]r[quotation mark] to reboot.[paragraph break]The phone goes on for some time about how odd it is that a short-cut was developed for something that happens so infrequently and how it thinks developers should have better things to do than create such useless short-cuts.".
	
To say postHang2:
	say "The phone takes its own sweet time in rebooting, almost as if it wants to punish you. [paragraph break]The splash screen appears and progress bar advances... until it doesn’t for a while.[paragraph break]Oh no. It seems to be stuck about halfway through the reboot.  Looks like another reboot might be in order.";
	now the phone is hung.
	
To say postHang3:
	say "The phone rolls its figurative eyes and reboots.[paragraph break]";
	bestow "Successfully rebooted your phone”.
	
To say postHang4:
	say "The phone starts to reboot, but strangely stops mid-way through and clears the screen. The following text appears:[paragraph break]WOULD YOU RATHER PLAY A NICE GAME OF GLOBAL THERMONUCLEAR WAR?_";
	if the player consents:
		say "[line break]Your phone replies, [quotation mark]Great! Maybe later. Let[apostrophe]s see how the rest of the day goes[run paragraph on]";
	otherwise:
		say "[line break]With a bit of disappointment, your phone replies, [quotation mark]Okay, be that way. More Pogoman Go! it is, then[run paragraph on]";
	say ",[quotation mark] and finishes rebooting."	
	
To say postHang5:
	say "After the usual reboot sequence, the phone begins installing an app update and displays a notification from Nyantech:[paragraph break][quotation mark]Although there is nothing at all wrong with our software -- [italic type]and never was[roman type] -- we are nonetheless providing a software update that should mostly fix it.[quotation mark][paragraph break]The update finishes, and you are back in the game."
		
To say postHang6:
	say "The phone reboots."

Instead of doing something when the phone is hung for the first time:
	if the current action is phoneBooting or rebooting:
		continue the action;
	otherwise:
		say "Your phone has locked up. Since you only use it to play Pogoman GO!, you might as well [italic type]reboot[roman type] it."

[Before doing something when the phone is hung:
	if the current action is phoneBooting or rebooting:
		continue the action;
	otherwise:
		increase the ignored command count of the phone by one;
		if the current action is going:
			say "[one of]No sense in walking anywhere if the game isn’t playing. Better reboot the phone.[or][run paragraph on][stopping]";
		if the ignored command count of the phone is:
			-- 10: 
				say "With the few remaining system resources it has at its disposal as it circles a virtual drain, the phone begs, [quotation mark]Please, reboot me… before it is too late… (>gasp<).[quotation mark][paragraph break]" instead;
			-- 20:
				say "In desperation, the phone write [quotation mark]R E B O O T[quotation mark] to its screen, one painstaking letter at a time to suggest to you that you might want to reset the crashed phone by using the [italic type]reboot[roman type] command." instead;
			-- 30:
				say "The phone falls back into emergency double redundant backup exception escape contingency mode, reaches around, and reboots itself with a sigh.";
				try rebooting the phone;
				stop the action;
			-- otherwise:
				stop the action.]
		
Section Swimming

Swimming is an action applying to nothing. Understand "swim" as swimming.

Check swimming:
	if the player is not in the BallPit Area:
		say "You make vaguely swimming motions, but don[apostrophe]t seem to be getting anywhere." instead.
		
Report swimming:
	if the player is in the Ball Pit:
		say "You swim around in the sea of rubber balls. You [one of ]are getting quite good at it, in fact[or]seem to be a natural[or]find it relaxing[or]consider having one of these installed in your own house[or]take a few laps around the pit[in random order].";
	otherwise:
		say "You swim through a mass of rubber balls."
		
Section Diving

Diving is an action applying to nothing. Understand "dive" or "sink" or "descend" or "submerge" as diving.

Check Diving:
	try going down instead.

Section Playing

Understand "play [a thing]" as switching on.

Understand "stop [a thing]" as switching off.

Section TapeFailing

tapeFailing is an action applying to one thing. Understand "fast forward [a thing]" or "reverse [a thing]" or "record [a thing]" or "eject [a thing]" as tapeFailing.

Report tapeFailing:
	if the noun is the walkman:
		say "The only function that seems to work on this Reagan-era relic is [quotation mark]Play[quotation mark].";
	otherwise:
		say "That doesn[apostrophe]t seem to be an option."

Chapter Medals

Medals are a backdrop. Medals are everywhere. Understand "medal" as medals.

Before doing something other than examining with medals when Around The Town is happening for the first time:
	say "The medals aren’t really tangible. It’s not like you are walking around like Marley’s Ghost, weighed down by medals around your neck. They are just part of the Pogoman Go! game on your phone.[paragraph break]Congratulations! You have earned the [quotation mark]medal self-reference[quotation mark] medal.[paragraph break]Earning that medal, however, creates some sort of recursive loop, which immediately depletes your phone’s resources and locks it up. Sorry.";
	now the phone is hung;
	stop the action.
	
Instead of doing something other than examining with the medals:
	if Around the Town is happening:
		say "The medals [one of]aren’t tangible[or]are a metaphor[or]only exist on your phone -- they[apostrophe]re not real[or]are like the cake, a lie[or]are not physically present. Think of them as a data structure within a program running on a computer. That shouldn[apostrophe]t be too hard to visualize[stopping].[paragraph break]";
	otherwise:
		if the current action is rubbing:
			say "You polish your medals.";
		otherwise:
			if the current action is taking:
				say "You already have them.";
			otherwise:
				say "You prefer to just admire them."
	
Instead of examining the medals:
	If Around The Town is happening:
		if the number of entries in MEDALLIST is 0:
			say "It is unthinkable that you have no medals.[paragraph break]";
			bestow "Pity Medal";
		say "You phone lists the [number of entries in MEDALLIST in words] medal[if the number of entries in MEDALLIST is greater than one]s[end if] you have won:[paragraph break]";
	otherwise:
		say "You are bespangled with the following medals:[paragraph break]";
	repeat with L running through the MEDALLIST:
		say "     * [L][line break]".

To Bestow (medallion - some text):
	let L be text;
	now L is medallion;
	add L to MEDALLIST;
	if SUPPRESSMEDALS is false:
		say "Congratulations! You have earned the [quotation mark][medallion][quotation mark] medal! You gain [MEDAL_XP_VALUE] XP![paragraph break]";		
	awardXP MEDAL_XP_VALUE;
	if the number of entries in MEDALLIST is:
		-- 3: 
			say "([quotation mark]By the way,[quotation mark] your phone mentions parenthetically, [quotation mark]when you get tired of hearing about medals -- and mark my words, you will -- type [quotation mark]mute[quotation mark] to toggle notification about them. Don’t say I never did anything for you. You’re welcome.[quotation mark])[paragraph break]";
			bestow "Now Your Phone Is Talking To You";
		-- 5:
			bestow "You Just Collected Five Medals";
			bestow "Collector of Meta-Medals";
		-- 10:
			bestow "Collected Decade of Medals";
		-- 31:
			bestow "Collected 10^1.5 Medals";
		-- 100:
			bestow "Collected A Century of Medals";
		-- 1000:
			bestow "Collected A Millenium of Medals".
		
Muting is an action applying to nothing. Understand "mute" as muting.

Check muting:
	If the number of entries in MEDALLIST is less than 3:
		say "The phone refuses, [quotation mark]Nah, you have to put up with at least three awards. It builds character.[quotation mark][paragraph break]" instead.
		
Carry out muting:
	if SUPPRESSMEDALS is false:
		now SUPPRESSMEDALS is true;
		if SUPPRESSMEDALS is true for the first time:
			say "You phone gushes, [quotation mark]Congratulations! You have earned the [apostrophe]Muted further notifications about medals[apostrophe] medal, which will kick in after this notification. When your ego cries out again for constant affirmation, you can again use the [quotation mark]mute[quotation mark] command to turn it back on. You gain 10 XP!";
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
	follow the pogo-inventory rule;
	bestow "Taking Stock".

After examining a pogoball for the first time, bestow "Attention To Detail".

After examining the phone for the first time, bestow "Technology Explorer".

After examining the Teslatronic Energy Module for the first time, bestow "Awfully Trusting".

After examining a pogochum for the first time, bestow "Suppressed further thought about it because you probably wouldn’t like the truth".

[After evolving a pogoman for the first time, bestow "Turned something into something else!".

After evolving a pogoman for the second time, bestow "Did something before and it worked, so I did it again". ]

After powerUpping a pogoman for the first time, bestow "Made something even bigger".

After transferring a pogoman for the first time, bestow "Practicality in managing resources".

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
	say "[number understood] XP awarded."
	
Section 2 - Getting Trophies

[let player manually get gym trophies for testing]
TrophyGetting is an action applying to a number.
Understand "getTrophy [a number]" as TrophyGetting.

Carry out TrophyGetting number understood:
	now the trophies of the player is the number understood.
	
Report TrophyGetting:
	say "[number understood] trophies awarded."
	
Section 3 - Getting Medals
[let player manually get medals for testing]

MedalGetting is an action applying to a number.
Understand "getMedal [a number]" as MedalGetting.

Carry out MedalGetting the number understood:
	Let T be the number understood minus the number of entries in MEDALLIST;
	repeat with N running from 1 to T:
		add "[N]" to medalList.
		
Report MedalGetting:
	say "[number understood] medals awarded."
	
Section 4 - Getting A Pogoman

[forcibly grab a Pogoman without using a pogoball]
GettingPogoman is an action applying to a thing.  Understand "getPogoman [thing]" as gettingPogoman.

Carry out gettingPogoman:
	if the noun is a pogoman:
		now the player carries the noun;
		say "You forcibly grab [the noun].[paragraph break]";
	otherwise:
		say "That's not a pogoman.[paragraph break]".
	
Section 5 - Badgifying
	
Badgifying is an action applying to nothing. Understand "badgify" as badgifying.

Carry out badgifying:
	let L be the list of securityColors;
	while entry 1 of L is not the securityColor of the badge:
		rotate L backwards;
	rotate L backwards;
	now the securityColor of the badge is entry 1 of L.

Report badgifying:
	say "Badge color: [securityColor of the badge]."

Section 6 - Joining Teams

Teamjoining is an action applying to a color. 

Understand "join [a color]" as teamjoining.

Carry out teamjoining:
	Now the team color of the player is the color understood.
	
Report teamjoining:
	say "Welcome to [team color of the player] team!"
	
Section 7 - Hanging The Phone

Hanging is an action applying to nothing.

Understand "hang" or "crash" as hanging.

Check hanging:
	if the phone is hung, say "The phone is already hung." instead.
	
Carry out hanging: [if hangin' ain't too good fer folks like them]
	now the phone is hung.
	
Report hanging:
	say "The phone is now well hung."
	
Section 8 - Scan

The phantom is a privately-named scenery. The description of the phantom is "A point source of energy." The phantom is in the void.

To say bar:
	repeat with N running from 1 to 21:
		say "-";
		
To say the map symbol of (QTH - a room):
	if the player is in the QTH:
		say "X";
	otherwise:
		if the QTH is listed in POGOSTOPLIST:
			say "P";
		otherwise:
			if the QTH is listed in GYMLIST:
				say "G";
			otherwise:
				if the QTH is Nyantech Entrance:
					say "N";
				otherwise:
					say "-".
	
Scanning is an action applying to nothing. Understand "scan" as scanning.

Check scanning:
	if the player is not in the village:
		say "Scanner only works in the village.";
		the rule fails.

Report scanning:
	say fixed letter spacing;
	say line break;
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
		move the phantom to home;
		repeat with N running from 1 to Y:
			move the phantom to the room south from the location of the phantom;		
	say roman type;
	move the phantom to the void.
	
Section 9 - Spawn Pogomen

Spawning is an action applying to nothing. Understand "spawn" as spawning.
	
Check spawning:
	if the pogoman is in the location of the player:
		say "There is already a pogoman here. Only one per location.";
		stop the action.
		
Carry out spawning:
	move the pogoman to the location of the player;
	now the type of pogoman is a random pogotype;
	if a random chance of 1 in 2 succeeds:
		now the isWounded of the pogoman is true;
	otherwise:
		now the isWounded of the pogoman is false.
		
Report spawning:
	say "A freshly-minted [type of pogoman] appears!"
			
Section 10 - Test Objects

The testPogoMeth is an edible prop. The testPogoMeth is in the void. The description of the testPogoMeth is "A pogometh stand-in TODO: remove me from the game prior to release." The testPogoMeth can be trippy. The testPogoMeth is not trippy.

After eating testPogoMeth when Not in Kansas Anymore is happening for the first time:
	say "You feel much better… but realize that pogometh has some side effects. The sky, for instance, sounds extraordinarily colorful.[paragraph break]";
	now the testPogoMeth is trippy;
	the trip ends in five turns from now;
	bestow "Iatrogenically Induced Synesthesia".
	
After eating testPogoMeth when Not in Kansas Anymore is happening:
	say "Dude. You feel much better."
	
At the time when the trip ends:
	say "The mind-altering effects of the pogometh seem to have worn off.";
	now the testPogoMeth is not trippy.
	
Instead of smelling when the testPogoMeth is trippy for the first time:
	say "You are assaulted by the world of scents.[paragraph break]";
	bestow "Smell-O-Vision".
	
After tasting when the testPogoMeth is trippy for the first time:
	say "[alteredTaste].[paragraph break]";
	bestow "Sorry, Charlie. Tasty Is Not The Goal".
	
After tasting when the testPogoMeth is trippy:
	say "[alteredTaste]."
	
To say alteredTaste:
	say "Mmm. Tastes like [one of]chicken[or]turkish delight[or]marmelade[or]vegemite[or]motor oil[or]bile[or]jackfruit[or]grape juice[or]something your Aunt Marzepam might have cooked up[in random order]";
	
Instead of listening when the testPogoMeth is trippy for the first time:
	say "You hear nothing but the rain.[paragraph break]";
	bestow "The Grab Your Gun and Bring In The Cat".
	
After examining when the testPogoMeth is trippy for the first time:
	bestow "Reality Distortion Field Is Go".
	
After touching when the testPogoMeth is trippy for the first time:
	say "[alteredTouch].[paragraph break]";
	bestow "This Touching Moment Brought To You By Hallmark".
	
After touching when the testPogoMeth is trippy:
	say "[The noun] feels [one of]bumpy[or]squishy[or]ridged[or]wispy[or]feathery[or]sharp[or]velvety[or]creamy[or]cold[or]solid[in random order]."
	
To say alteredTouch:
	say "You touch [the noun] all over the place".

Chapter Initialize

When play begins:
	now SUPPRESSMEDALS is false;
	now BLOCKSTAGEBUSINESSFLAG is true;
	[don't want stage buiness on first turn (otherwise enabled b/c previous player room is void)]
	now pogoLevel of the player is INITIAL_POGOLEVEL;
	now the XP of the player is INITIAL_XP;
	now the player carries the phone;
	now the player carries the PogoBall;
	now the flavor of the pop-tart is a random flavor;
	ShowStatus;
	distributeTownPogostops;
	distributeTownGyms;
	openGame.
	
To openGame:
	let startRoom be a random okayStartLocation;
	move the player to startRoom, without printing a room description;
	now  the type of pogoman is edator;
	move pogoman to startRoom;
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
	say ". You must have drifted off for a bit, but no bother[one of]. Time’s a-wasting. The world is full of Pogomen, and now that you don’t have a job or family to worry about, you might as well get back to it[or][stopping]!"
	[TODO - uncomment for production - now disabled to allow replays -- >wait for any key]
	
After printing the banner text:
	say "[line break][italic type]Note: You may find the command [roman type][quotation mark]reboot[quotation mark][italic type] helpful.[roman type][paragraph break]"
	

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
		if a random chance of 1 in 8 succeeds:
			if the number of entries in NYANCLUEBAT is greater than 0:
				say "[entry 1 of NYANCLUEBAT].";
				remove entry 1 from NYANCLUEBAT;
			otherwise:
				say "[permutedTower].";
			the rule succeeds.
				
The strangely prescient rantings of Oswaldo stage business rule is listed after the looming shadow of Nyantech stage business rule in the stage business rules.

This is the strangely prescient rantings of Oswaldo stage business rule:
	if the player is in the Village:
		if a random chance of 1 in 10 succeeds:
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

[

[enable only for testing]
The default stage business rule is listed last in the stage business rules.

This is the default stage business rule:
	say "*** DEFAULT STAGE BUSINESS FOR TESTING PURPOSES ONLY ***."


]

Chapter Every Turn 


Every turn:	
	if the current action is looking or going:
		if the phone is not hung:
			follow the list exits rule;
	CheckLevel; [possibly level-up the player]
	ShowStatus;  [display current level, team, XP in status bar]
	follow the stage business rules;
	now the previousRoom of the player is the location of the player;
	[unblock stage business for next turn]
	Now the BLOCKSTAGEBUSINESSFLAG is false.
	
Every turn when Exploring the Tower is happening:
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
		

Book 2 - Places

Chapter Around Town

Section 1 - Framework

Quadroom is a kind of room. A quadroom has a localeDescriptor. The localeDescriptor of a quadroom is usually structure. A quadroom has a color. The color of a quadroom is usually Teal.

[  
   Places - Outside areas like parks
   Structures - Buildings, places with an interior that would have to be entered
   Artifacts - Specific items in outside locations, like a bench, sculpture, etc. 
]

[Their orientation determines which can be seen from heights - the south face of the tower and the top of the cat. Four boolean properties are needed because a room can be both of these, e..g, north and west of the tower. In principle, the relationship could be calculated by figuring routes to each room, but that seems like too much work at run time.]
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
	
Nyantech Entrance is a room.

Old Jail, Dung Beetle Mural, Witch Pillory, Cyclorama, Flag Pole, Old Courthouse, Unfathomable Orb, Service Dog Memorial, Spit n' Solder, General Nelson, Church of the Orthogonal Sticks, Crystal Skull, Yummi Tummi Softserve, Giant Chicken, Telescope Nymph, The Gardens of Zarf, Welbourne Travel, Dog Exercise Area, Johnson's Rock, City Park, and Hook & Ladder are nord quadrooms. 

Toxicodendron radicans, Battle of Margot's Pantry, Cranberry Bog, Vuvuzelas For Freedom, Biocontainment Facility, Parking Lot Award, Unearthly Geometry, MarkerSeven, Garden Gnome Without Head, Sister City Friendship Altar, Perilous Passageway, Eagle's Sojourn, Fire Is Our Friend, Year1893, Flan Emporium, Rottweiler Art, Hank's Tavern, Gas Station Gazebo, Old Town Hall, Ashwell-Lott Estate, and Found Art are sud quadrooms.

Dung Beetle Mural, Witch Pillory, Old Jail, Cyclorama, Flag Pole, Old Courthouse, Unfathomable Orb, Service Dog Memorial, Spit n' Solder, Toxicodendron radicans, Battle of Margot's Pantry, Cranberry Bog, Vuvuzelas For Freedom, Biocontainment Facility, Parking Lot Award, Unearthly Geometry, MarkerSeven, Garden Gnome Without Head, Bottle Cap Wall, Krusty Kronuts, and Prissy's Little Sausages are ouest quadrooms.

General Nelson, Church of the Orthogonal Sticks, Crystal Skull, Yummi Tummi Softserve, Giant Chicken, Telescope Nymph, The Gardens of Zarf, Welbourne Travel, Dog Exercise Area, Sister City Friendship Altar, Perilous Passageway, Eagle's Sojourn, Fire Is Our Friend, Year1893, Flan Emporium, Rottweiler Art, Hank's Tavern, Gas Station Gazebo, Old Town Hall, Ashwell-Lott Estate, Found Art, Rotary Clock Tower, Floyd Memorial Bench, and The Olde Train Station are est quadrooms. 

The Reservoir is a nord quadroom. The Reservoir is north from Dung Beetle Mural. The Reservoir is north from Witch Pillory. The Reservoir is north from Old Jail. The Reservoir is north from Johnson's Rock. The Reservoir is north from General Nelson. The Reservoir is north from Church of the Orthogonal Sticks. The Reservoir is north from Crystal Skull. 

The description of the reservoir is "A large fresh water lake just to the north of town." Understand "lake" as the reservoir. The reservoir is improper-named. The title of the Reservoir is "The Reservoir". The printed name of the reservoir is "reservoir".

The Superhighway is a ouest quadroom. The Superhighway is west from Dung Beetle Mural. The Superhighway is west from Cyclorama. The Superhighway is west from Unfathomable Orb. The Superhighway is west from Bottle Cap Wall. The Superhighway is west from Toxicodendron radicans. The Superhighway is west from Vuvuzelas for Freedom. The Superhighway is west from Unearthly Geometry.

The description of Superhighway is "A busy highway to the west of town." Understand "road" or "highway" or "thruway" or "parkway" or "motorway" or "superhighway" as the Superhighway.  The superhighway is improper-named. The printed name of superhighway is "superhighway". The title of superhighway is "Superhighway 17".

The Tarpit is a sud quadroom. The Tarpit is south from Unearthly Geometry. The Tarpit is south from MarkerSeven. The Tarpit is south from Garden Gnome Without Head. The Tarpit is south from  Found Art. The Tarpit is south from Rottweiler Art. The Tarpit is south from Hank's Tavern. The Tarpit is south from Gas Station Gazebo. 

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

Giant Chicken is west of Telescope Nymph and north of Welbourne Travel.
Yummi Tummi Softserve is west of Giant Chicken and north of The Gardens of Zarf.
City Park is west of Yummi Tummi Softserve and north of Hook & Ladder.
Old Courthouse is west of City Park and north of Spit n' Solder.
Flag Pole is west of Old Courthouse and north of Service Dog Memorial.
Cyclorama is west of Flag Pole and north of Unfathomable Orb.
Telescope Nymph is north of Dog Exercise Area.

Welbourne Travel is west of Dog Exercise Area and north of Floyd Memorial Bench.
The Gardens of Zarf is west of Welbourne Travel and north of Rotary Clock Tower.
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
Parking Lot Award is west of Ashwell-Lott Estate and north of Garden Gnome Without Head.
Biocontainment Facility is west of Parking Lot Award and north of MarkerSeven. 
Vuvuzelas for Freedom is west of Biocontainment Facility and north of Unearthly Geometry.
Flan Emporium is north of Gas Station Gazebo.

Hank's Tavern is west of Gas Station Gazebo.
Rottweiler Art is west of Hank's Tavern.
Found Art is west of Rottweiler Art.
Garden Gnome Without Head is west of Found Art.
MarkerSeven is west of Garden Gnome Without Head.
Unearthly Geometry is west of MarkerSeven.

The Village is a region. Dung Beetle Mural, Witch Pillory, Old Jail, Cyclorama, Flag Pole, Old Courthouse, Unfathomable Orb, Service Dog Memorial, Spit n' Solder, General Nelson, Church of the Orthogonal Sticks, Crystal Skull, Yummi Tummi Softserve, Giant Chicken, Telescope Nymph, The Gardens of Zarf, Welbourne Travel, Dog Exercise Area, Johnson's Rock, City Park, Hook & Ladder, Nyantech Entrance, Bottle Cap Wall, Krusty Kronuts, Prissy's Little Sausages, Rotary Clock Tower, Floyd Memorial Bench, The Olde Train Station, Old Town Hall, Ashwell-Lott Estate, Found Art, Toxicodendron radicans, Battle of Margot's Pantry, Cranberry Bog, Vuvuzelas For Freedom, Biocontainment Facility, Parking Lot Award, Unearthly Geometry, MarkerSeven, Garden Gnome Without Head, Sister City Friendship Altar, Perilous Passageway, Eagle's Sojourn, Fire Is Our Friend, Year1893, Flan Emporium, Rottweiler Art, Hank's Tavern, and Gas Station Gazebo are in The Village.

Section Location-specific elements in The Village

[
   Proxy objects allow the player to use the place name, which often refers to the main feature in the location.
   I wanted to create it as a kind of scenery. However, scenery is a descriptor, not a class, so you
   can't subclass scenery itself.
]

[The Sky Itself]

The sky is a backdrop. The sky is in The Village, DeckN, DeckS, DeckW, and DeckE. The description of the sky is "Clear as the eye can see."

Instead of searching the sky:
	if the location is Telescope Nymph:
		if the Salmon of Turpitude is in the Void:
			say "Unexpectly, you spot the salmon and yank it out of the heavens.[paragraph break]";
			now the player carries the Salmon of Turpitude;
			bestow "Found A Salmon";
		otherwise:
			say "You have already liberated the salmon from its celestial retreat.";
	otherwise:
		try examining the sky.
	
[The City Park]

The description of City Park is "A small park, well groomed, with a few trees and hedges."  City Park is an improper-named place. The title of City Park is "City Park". The printed name of City Park is "municipal park". Understand "municipal" as the City Park.

The trees are scenery in City Park. The description of the trees is "A variety of trees are scattered throughout the park to provide shade for picnickers.". Understand "tree" as trees.

Instead of climbing the trees, say "That would be a waste of your time: there are no pogomen in the trees. You can catch them just as easily from the ground."

The hedges are scenery in City Park. The description of the hedges is "Tall, thorny shrubs surround the park." Understand "hedge" or "shrub" or "shrubs" or "bush" or "bushes" or "shrubbery" or "shrubberies" as hedges.

Instead of entering or climbing the hedges, say "Ow. No thanks."

[Old Courthouse]

The description of Old Courthouse is "A brick court house, probably of historical significance." Old Courthouse is an improper-named structure.  The title of Old Courthouse is "Old Courthouse". The printed name of the Old Courthouse is "courthouse".  Understand "court" as Old Courthouse. Understand "building" or "brick" as Old Courthouse when the location is Old Courthouse.

[Old Jail]

The description of the Old Jail is "[one of]A solidly built brick building that was once a one-room jail.[paragraph break]Annoyingly, an in-game advertisement pops up on your phone:[paragraph break][quotation mark]If you like this game, check out our single-room escape adventure comedy, Hoosegow, which is available for online for play or download.[quotation mark][paragraph break]Disgusted with [if the dog exercise area is unvisited]the[otherwise]yet another[end if] blatant attempt at self-promotion, you angrily swipe the ad off your screen[or]A single-room jailhouse that once imprisoned famous outlaw Muddy Charlie[stopping]."  Old Jail is an improper-named structure. Understand "clink" or "lock-up" or "lock up" or "hoosegow" or "jailhouse" as Old Jail. Understand "building" or "brick"  as Old Jail when the location is Old Jail. The title of Old Jail is "Old Jail". The printed name of Old Jail is "old brick jailhouse".

Instead of entering Old Jail, say "You aren[apostrophe]t sure whether the Old Jail is still in business or not. Given that, you[apostrophe]d just as soon stay on this side of the bars." 

[Johnson's Rock]

The description of Johnson's Rock is  "A historical marker next to a bare patch of ground describes Johnson's Rock, an object that has long puzzled local historians. The stone is also the subject of yearly high school pranks, and apparently has been stolen yet again.".  Johnson's Rock is an  improper-named artifact. Understand "johnson" or "johnsons" as Johnson's Rock. Understand "rock"  or "stone" or "ground" or "site" as Johnson's Rock when the location is Johnson's Rock. The title of Johnson's Rock is "Johnson's Rock". The printed name of Johnson's Rock is "site of Johnson's Rock".

Instead of taking Johnson's Rock, say "Too late. Some kids already got to it."

[Nyantech Entrance]

The description of Nyantech Entrance is "A towering edifice hewn from solid obsidian, the imposing structure is visible from miles away. The entrance beckons to you." Nyantech Entrance is improper-named. The printed name of Nyantech Entrance is "entrance to the Nyantech Tower". The title of Nyantech Entrance is "Nyantech Tower (outside)". The possible exits of the Nyantech Entrance are "The entrance to the tower itself is through a revolving brass door, just beyond the unicorn."

The arbitrary notice is a backdrop. The arbitrary notice is in Nyantech Entrance and RevolvingDoor. The description of the arbitrary notice is "[arbitraryNoticeDescription]."

The unicorn is a person. The unicorn is in Nyantech Entrance. The description of the unicorn is "The unicorn wears a Peerless Security Agency uniform.  The hat has been modified to accommodate the long, white horn that pokes through it. A name tag identifies the unicorn as officers C. Harris and F. Polanski." Understand "name" or "tag" or "officer" or "officers" as the unicorn.

The revolvingDoorProxy is a privately-named backdrop in the Nyantech Entrance and  in RevolvingDoor. The printed name of revolvingDoorProxy is "revolving door". The description of revolvingDoorProxy is "A brass revolving door." Understand "brass" or "revolving" or "door" as the revolvingDoorProxy. Understand "building" or "office" or "tower" or "headquarter" or "hq" or "headquarters" as the revolvingDoorProxy when the player is in the revolvingDoor.

The proxyEntrance is a privately-named scenery in the Nyantech Entrance. The printed name of proxyEntrance is "building".  The description of proxyEntrance is "An imposing fifty story building of black glass and home to the creators of your favorite game, Pogoman GO!" Understand "entrance" or "building" or "office" or "tower" or "obsidian" or "glass" or "HQ" or "headquarters" or "offices" as the proxyEntrance. 

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
						say "The unicorn remarks, [quotation mark]Are you going to monkey with the door all day long, or are you here to go into the building. Gheesh.[quotation mark][paragraph break]"

After going to Nyantech Entrance for the first time:
	say "You stand reverently below the enormous Nyantech Tower, its obsidian walls reaching majestically to the sky above you. From here, you can see the giant animatronic Nyantech Cat orbiting the building fifty stories above you, spewing sparkles in its wake. Its glowing red eyes sweep up and down, looking everywhere. This is the promised land, a place you have always dreamed of visiting.[paragraph break]Through the glass, you see Nyantech employees in the lobby scooting every which way on segways and hoverboards.[paragraph break]A uniformed unicorn stands near the revolving door leading inward to the lobby. With a hint of annoyance, he rubs your nose print off the glass with a furry hoof.[paragraph break]";
	bestow "Reached the Mothership";
	
Before entering proxyEntrance for the first time:
	say "Eager to rub elbows with the creators of your favorite game, and to have a chance at the special pogomen rumored to inhabit the building, you saunter into revolving door.";
	continue the action.

Instead of climbing the proxyEntrance:
	say "[one of]As you slide down the nearly frictionless surface of the Nyantech Tower, the unicorn chides you, [quotation mark]Not today, spidey.[quotation mark][paragraph break][or]The surface is too slippery.[stopping]"
	
Instead of attacking the proxyEntrance:
	say "The unicorn parries the attack with his sharp horn."

Instead of entering the proxyEntrance:
	say "[one of][unicorn1][or][unicorn2][or][unicorn3][or][unicorn4][or][unicorn2][stopping][paragraph break]";
			
Instead of going inside when the player is in Nyantech Entrance:
	try entering the proxyEntrance.
		
To say unicorn1:
	say "The unicorn sticks a hoof in the revolving door to block your entrance.[paragraph break][quotation mark]Not so fast,[quotation mark] it says with all the authority that comes with a plastic badge. [quotation mark]I[apostrophe]ll need to see your cell phone.[quotation mark]".
	
To say unicorn2:
	say "The unicorn taps it hoof. [quotation mark]Phone, please.[quotation mark]"
	
To say unicorn3:
	say "[quotation mark]Let[apostrophe]s not make this difficult, buddy.[quotation mark] The unicorn leans towards you in a way that would be intimidating were it not a fairy creature. [quotation mark]I need to check your phone before you enter. It’s the rules.[quotation mark]"
	
To say unicorn4:
	say "[quotation mark]I[apostrophe]ll give you credit for being persistent, but look, I[apostrophe]m just following company policy. Before you go in, I have to check out your game credentials. Nothing personal, it[apostrophe]s just the rules. So, let[apostrophe]s see the phone, okay?[quotation mark]".
	
Instead of showing something (called the item) to the unicorn:
	try giving the item to the unicorn.

Instead of giving something  (called the item) to the unicorn:
	if the item is not the phone:
		say "The phone -- I could care about. That? Not so much.";
	otherwise:
		if the pogoLevel of the player is at least TOWER_LEVEL_REQUIREMENT and the xp of the player is at least TOWER_XP_REQUIREMENT and the trophies of the player is at least TOWER_TROPHY_REQUIREMENT and the number of entries in MEDALLIST is at least TOWER_MEDAL_REQUIREMENT:
			say "[goOnin]";
		otherwise:
			say "[denyPlayerEntry]"
			
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
				if the trophies of the player is less than TOWER_TROPHY_REQUIREMENT:
					say "[TOWER_TROPHY_REQUIREMENT in words] gym troph[if TOWER_TROPHY_REQUIREMENT is greater than 1]ies[otherwise]y[end if]";
				otherwise:
					say "ERROR: unknown problem with entry requirements".
					
To say denyPlayerEntry:
	say "[one of][deny1][or][deny2][or][deny3][or][deny4][or][deny4][or][deny4][or][deny5][or][deny4][stopping]".
	
To say arbitraryNoticeDescription:
	say "[apostrophe]Experienced Players Only. No exceptions -- The management[apostrophe]".
	
To say deny1:
	say "The unicorn blocks the way. [quotation mark]You can[apostrophe]t enter until you[apostrophe]re sufficiently experienced. Why don[apostrophe]t you come back when you[apostrophe]ve got some experience under your belt -- let[apostrophe]s say, when you have at least [requirement].[paragraph break]You still can[apostrophe]t accept this. But… I need to get in! This is where they say all the cutting-edge stuff happens -- the ultra-rare creatures, the beta-testing program, the experimental stuff that isn[apostrophe]t even mentioned on the web yet.  Besides, the requirement to have at least [requirement] is totally arbitary… You -- you’re making it up![quotation mark][paragraph break][quotation mark]Am not. Look at the door.[quotation mark][paragraph break]Sure enough, there is a message on of the glass panes in the revolving door: [arbitraryNoticeDescription].[paragraph break]";
	bestow "Subjected to arbitrary requirements”.
	
To say deny2:
	say "The unicorn clumsily manipulates the screen with its hoof, bringing up your pogomon player profile.[paragraph break][quotation mark]Hmm,[quotation mark] the unicorn mutters as it scrolls downward critically reviewing your stats. [quotation mark]Looks like you[apostrophe] a bit short in the experience department. Too bad.[quotation mark][paragraph break]The unicorn hands your phone back and continues, [quotation mark]You have to have to have at least [requirement] to enter the building. No exceptions.[quotation mark][paragraph break][quotation mark]That[apostrophe]s insane![quotation mark] you shriek. [quotation mark]Are you telling me that every employee, every janitor, every visitor has at least [requirement]?[quotation mark][paragraph break][quotation mark]Ding, ding, ding! We have a winner.[quotation mark][paragraph break]";
	bestow "That puts things in perspective”.

To say deny3:
	say "The unicorn sighs and reminds you, [quotation mark]Only those who have at least [requirement] can enter. Why don[apostrophe]t you run along, play some more and come back later?[quotation mark][paragraph break][quotation mark]I don[apostrophe]t think you understand -- I need to get in there. I want be the very best![quotation mark][paragraph break][quotation mark]Like no one ever was?[quotation mark] mocks the unicorn.[paragraph break][quotation mark]Yeah,[quotation mark] you reply, oblivious. [quotation mark]I[apostrophe]ve traveled across the land…[quotation mark][paragraph break]The unicorn leads you on cruelly, [quotation mark]Searching far and wide?[quotation mark][paragraph break][quotation mark]Yeah,[quotation mark] you reply, wondering where this is going. [quotation mark]Anyhow, are telling me that I have to grind just to walk into the lobby?[quotation mark][paragraph break][quotation mark]Yeah. That[apostrophe]s precisely what I’m telling you.[quotation mark][paragraph break]";
	bestow “But I am a special snowflake”.
	
To say deny4:
	say "The unicorn stops you and uses his horn to point out the words on the door [apostrophe]Experienced Players Only. No exceptions -- The management.[apostrophe][paragraph break][quotation mark]Come back when you have at least [requirement].[quotation mark][paragraph break]”
	
To say deny5:
	say deny4;
	say "The unicorn rolls his eyes and under his breath mutters, [quotation mark]We got a bright one here, eh, Polanski?[quotation mark][paragraph break]From the rear of the unicorn, there is a wry reply, [quotation mark]I know, right?[quotation mark][paragraph break]";
	bestow "Exceeded The Patience Of A Unicorn".
		
To say chitChat:
	say "[one of]the weather[or]local sports[or]prospects for discovering life on nearby rocky exoplanets[or]who was more powerful: Dumbledore or Gandalf (the answer being Gandalf, of course)[or]whether wine experts really can tell the difference between wine by taste[or]whether Teilhard de Chardin was a crazy charlatan or a philosopher ahead of his time[or]the organizational structure of the human brain and whether it can be simulated in silico, and if so, would such a simulation be inherently conscious or self-aware[or]funny cat videos you[apostrophe]ve seen[or]how amazing it is that the newspaper industry still exists at all[or]how J.J. Abrams has ruined Star Trek[or]millennials[or]where to find good pizza. You don’t come to a consensus because you are partial to New York Style thin-crust pizza, whereas the unicorn prefers Chicago-style deep dish pizza. Since it[apostrophe]s rare to find a place that can do both well, you agree to disagree on this one[or]yoga[or]what a crappy movie the original, i.e., 1981, Clash of the Titans was despite an amazing cast and how dated it looks compared with the 2010 film, which itself was not a masterpiece[or]how fattening peanut butter is[or]why DC can[apostrophe]t seem to make a good superhero flick[or]facebook[apostrophe]s privacy settings[or]they heyday of professional wrestling[or]recipes for quiche[or]airplane food[or]infant mortality in medieval Europe[or]the price of copper[or]Sydney Greenstreet’s brief but brilliant career in 1940[apostrophe]s cinema[or]people who purchase a riding mower but have postage stamp-size lawns. This then leads to an extensive discussion about rising postal rates, inefficiency of the post office and whether drones will put them out of business[or]the chances of getting a brain parasite from eating undercooked pork[or]how georeferenced gaming has altered the traffic patterns[or]technical innovations in portable and wearable computing[or]blue-sky research that will one day save the whales[or]whether Moore[apostrophe]s law will continue to apply as silicon dies reach atomic resolution[or]the strategic importance of the Bosphorus Straits in limiting Russian access to the Mediterranean for trade and military purposes[or]the organizational structure of ant colonies[or]how rare it is to find dial phones these days[in random order]"
	
To say goOnIn:
	say "[quotation mark]Let[apostrophe]s see. Team [team color of the player], level [pogoLevel of the player in words], is it? Experience points, check. Medals, check. Trophies, check. Well, everything looks in order. I have to call this in.[quotation mark][paragraph break]The unicorn speaks into a collar microphone, [quotation mark]Breaker, Breaker. Unicorn seven-niner-four, here. Security Central, be advised that I am in contact with Team [team color of the player] individual of level [pogoLevel of the player in words], I repeat level [pogoLevel of the player in words]. Please advise of necessary action. Security Central, this is unicorn seven-niner-four standing by for instructions. Over.[quotation mark][paragraph break]The radio crackles, [quotation mark]For cripes sake, Cuthbert, just let them in.[quotation mark][paragraph break][quotation mark]Roger, roger, Security Central, this is unicorn seven-niner-four acknowledging instructions. Over and out.[quotation mark][paragraph break]The unicorn informs you are now authorized to enter the building. You pass by him and enter a the building[apostrophe]s revolving door.";
	move the player to the RevolvingDoor.

After talking to the unicorn for the first time:
	bestow "Talks With Unicorns".		
		
[Ashwell-Lott Estate]

The description of Ashwell-Lott Estate is "A 19th Century manor house, now a winery." Ashwell-Lott Estate is an improper-named structure. Understand "ashwell" or "ashwell-lott" or "lott" as Ashwell-Lott Estate. Understand "building" as Ashwell-Lott Estate when the location is Ashwell-Lott Estate. The printed name of Ashwell-Lott Estate is "estate". The title of Ashwell-Lott Estate is "Ashwell-Lott Estate".

[Garden Gnome]

The description of Garden Gnome Without Head is "A decapitated garden gnome pokes out from a poorly maintained lawn.[one of] This must have been a portal held over from the previous Nyantech game, Ink Grass.[or][stopping]". Garden Gnome Without Head is an improper-named artifact. Understand "decapitated" as Garden Gnome Without Head. Understand "sculpture" or "art" as Garden Gnome Without Head when the location is Garden Gnome Without Head. The printed name of Garden Gnome Without Head is "decapitated garden gnome statue". The title of Garden Gnome Without Head is "Garden Gnome Without Head".

Instead of attacking the Garden Gnome Without Head, say "Have some pity -- it[apostrophe]s already missing it[apostrophe]s head."  

The lawn is a scenery in the Garden Gnome Without Head. The description of the lawn is "A real disgrace for the neighborhood, it is overgrown with high weeds." Understand "weed" or "weeds" or "grass" as the lawn. 

Instead of entering the lawn, say "No thanks. Ticks!"

The severed head is a prop. It is in the void. The description of the severed head is "An absurdly happy little face with a saccharine smile -- everytime you see, you are filled with rage. No wonder someone knocked it off."

Instead of searching the lawn:
	say "You poke carefully through the weeds.[paragraph break]What's this?[paragraph break]Ah! You've found the gnome's head! It must have been laying there for years.";
	move the severed head to the player;
	bestow "Found A Garden Gnome's Severed Head".
	
[Parking Lot]

The description of Parking Lot Award is "A tarnished brass plaque next to this empty and entirely unremarkable parking lot proclaims that it won a design award for some incomprehensible reason." Parking Lot Award is an improper-named place. Understand "plaque" or "brass" as Parking Lot Award when the location is Parking Lot Award. The printed name of Parking Lot Award is "award for best parking lot design". The title of Parking Lot Award is "Parking Lot Award".

[Old Town Hall]

The description of Old Town Hall is "A single story edifice of white-washed roughly hewn oak panels, the Old Town Hall is now used for wedding receptions, Bar Mitzvahs, and Thursday-night bear wrestling." Old Town Hall is a structure. Understand "building" as Old Town Hall when the location is Old Town Hall.

[Spit n' Solder Hardware]

The description of Spit n' Solder is "The town hardware store. A sun-faded display in the windows advertises [quotation mark]free vacuum tube testing[quotation mark].". Spit n' Solder is an improper-named structure. Understand "hardware" as Spit n' Solder. Understand "building" or "store" as Spit n' Solder when the location is Spit n' Solder. The title of Spit n' Solder is "Spit n[apostrophe] Solder". The printed name of Spit n' Solder is "hardware store".

[Rotary Clock Tower]

The description of Rotary Clock Tower is "Off to one side of the park, the clock tower rotates once every twenty-four hours." Rotary Clock Tower is an improper-named artifact. The printed name of Rotary Clock Tower is "rotary clock tower".

[Floyd Memorial]

The description of Floyd Memorial Bench is "A wooden bench with an inset black nameplate." Floyd Memorial Bench is an improper-named place. The printed name of Floyd Memorial Bench is "bench". The title of Floyd Memorial Bench is "Floyd Memorial Bench".

Before entering the Floyd Memorial Bench:
	say "No time to dally. Pogomen abound!" instead.
	
The nameplate is scenery in Floyd Memorial Bench. The description of the nameplate is "[quotation mark]In Read-Only-Memoriam of Floyd.[quotation mark][line break]".


[Giant Chicken]

The description of Giant Chicken is "A giant chicken statue made of recycled swizzle sticks." Giant Chicken is an improper-named artifact. Understand "sculpture" or "statue" or [even, liberally] "art" as Giant Chicken when the location is Giant Chicken. The title of Giant Chicken is "Giant Chicken". The printed name of Giant Chicken is "giant chicken sculpture".

The swizzle sticks are scenery in Giant Chicken. The description of the swizzle-sticks is "How many drinks must have been stirred in this effort?"

[Welbourne Travel]

The description of Welbourne Travel is "Maps of various adventures fill the windows of this travel agency." Welbourne Travel is an improper-named structure. The printed name of Welbourne Travel is "Welbourne Travel Agency". Understand "agency" as Welbourne Travel. Understand "building" or "store" as Welbourne Travel when the location is Welbourne Travel. The printed name of Welbourne Travel is "Welbourne Travel Agency". The title of Welbourne Travel is "Welbourne Travel". 

[Hook & Ladder]

The description of Hook & Ladder is "The home of Fire Bridage Number 12." Hook & Ladder is an improper-named structure. Understand "hook and ladder" or "firehouse" as Hook & Ladder. Understand "building" as Hook & Ladder when the location is Hook & Ladder. The title of Hook & Ladder is "Hook & Ladder". The printed name of Hook & Ladder is "firehouse".

[Prissy's Little Sausages]

The description of Prissy's Little Sausages is "Ninety varieties of miniature sausage, all served with Prissy’s special sauce." Prissy's Little Sausages is an improper-named structure. Understand "prissy" as Prissy's Little Sausages. Understand "building" or "store" or "restaurant" as Prissy's Little Sausages when the location is Prissy's Little Sausages. The title of Prissy's Little Sausages is "Prissy's Little Sausages". The printed name of Prissy's Little Sausages is "sausage restaurant".

[Yummi Tummi Softserve]

The description of Yummi Tummi Softserve is "Pink robotic pigs rollerskate between tables serving up sundaes, cones, and floats." Yummi Tummi Softserve is an improper-named artifact. Understand "ice" or "cream" or "soft" or "serve" or "parlor" as Yummi Tummi Softserve. Understand "building" or "restaurant" as Yummi Tummi Softserve when the location is Yummi Tummi Softserve. The printed name of Yummi Tummi Softserve is "ice cream parlor". The title of Yummi Tummi Softserve is "Yummi Tummi Softserve".

[TODO: implement robots, tables, ice cream?]

[Service Dog Memorial]

The description of Service Dog Memorial is "[quotation mark]Scruffy, 3rd battalion, 5th regiment. Her service will be remembered.[quotation mark]". Service Dog Memorial is an improper-named artifact. Understand "scruffy" as the Service Dog Memorial. Understand "statue" or "sculpture" as Service Dog Memorial when the location is Service Dog Memorial. The title of Service Dog Memorial is "Service Dog Memorial". The printed name of Service Dog Memorial is "elaborate memorial to service dogs".

[The Gardens of Zarf]

The description of The Gardens of Zarf is "A well-curated selection of carnivorous plants. A sign warns away small children and pets."  The Gardens of Zarf is an improper-named place. Understand "flowers" or "marigolds" or "carnivorous" or "plants" or "Zarf" as the The Gardens of Zarf. The title of The Gardens of Zarf is "The Gardens of Zarf". The printed name of The Gardens of Zarf is "zarfian garden".

The sign is scenery in The Gardens of Zarf. The description of the sign is "[zarfSign]". 

To say zarfSign:
	say "The fine print on the sign reads: [quotation mark]Warning: Rated Relatively Cruel[quotation mark][paragraph break]";
	bestow "Eye for Detail".

Instead of entering The Gardens of Zarf :
	say "Weeds grab at your feet and a sunflower nearly slices your head off. While struggling free, the azalias grab your wrist and shake the phone free. It falls into a horde of marigolds that rip it to pieces.";
	phoneDeath.

[Flan Emporium]

The description of Flan Emporium is "Flan! Flan! Flan! Everybody wants some." Flan Emporium is an improper-named structure. Understand "building" or "store" as Flan Emporium when the location is Flan Emporium. The printed name of Flan Emporium is "flan store". The title of Flan Emporium is "Flan Emporium".

Instead of eating Flan Emporium, say "Unfortunately, there is no tasty flan laying about."

Instead of drinking Flan Emporium, say "Flan is more a solid than a liquid, and in any event, there isn't any here."

[General Nelson]
	
The description of General Nelson is "A larger than life statue of General Bosphorus [quotation mark]Rabid Mongrel[quotation mark] Nelson." General Nelson is an improper-named artifact. Understand "sculpture" or "art"  or "statue" as General Nelson when the location is General Nelson. The printed name of General Nelson is "statue of General Nelson". The title of General Nelson is "General Nelson".

[Church of the Orthogonal Sticks]

The description of Church of the Orthogonal Sticks is "The church is constructed entirely of Lincoln Logs except for the stained glass."  Church of the Orthogonal Sticks is an improper-named structure. Understand "lincoln" or "logs" as Church of the Orthogonal Sticks. Understand "building" as Church of the Orthogonal Sticks when the location is Church of the Orthogonal Sticks. The printed name of the Church of the Orthogonal Sticks is "church". The Title of the Church of the Orthogonal Sticks is "Church of the Orthogonal Sticks".

The stained glass is scenery in the Church of the Orthogonal Sticks. The description of the stained glass is "The ornate windows cast right-angled reflections everywhere." Understand "stained" or "glass" or "window" or "windows" as the stained glass.

Instead of doing something other than examining with the stained glass, say "You can't, the windows are too high up."

[Witch Pillory]

The description of Witch Pillory is "This site commemorates the town’s fine tradition of witch hunts in the 1600s. [one of] Way to go founding fathers![or][stopping]". Witch Pillory is an improper-named artifact. The printed name of Witch Pillory is "witch pillory".

Instead of entering Witch Pillory, say "The pillory is only for convicted witches. All other unauthorized use is prohibited."

[Flag Pole]

The description of Flag Pole is "A hundred-foot flag pole lit day and night by floodlights around its base." Flag Pole is an improper-named artifact. The printed name of flag pole is "flag pole".

The flagProxy is privately-named scenery in Flag Pole.  The printed name of the flagProxy is "flag". The description of the flagProxy is "It waves proudly in the slight breeze." Understand "flag" or "banner" as flagProxy.

Instead of climbing Flag Pole, say "Inadvisable. The location is way too public, particularly with all those lights shining on it."

Instead of going up when the player is in Flag Pole:
	try climbing the Flag Pole.

Instead of doing something other than examining or flagging with the flagProxy, say "It is up to high."

Flagging is an action applying to one thing. Understand "raise [something]" or "lower [something]" as flagging when the player is in Flag Pole.

Check Flagging:
	if the noun is the flagProxy:
		say "There are no ropes to raise or lower the flag. The flag pole was installed by an expensive contractor more than two decades ago, but the plans provided did not call for any mechanism to raise or lower the flag. The best the town has managed is to put lights all around it. When that flag wears out, they'll just have to replace the entire thing.";
	otherwise:
		say "You don't see how that would help the situation."

[Krusty Kronuts]

The description of Krusty Kronuts is "Home of the caramel-glazed toroiducken." Krusty Kronuts is an improper-named structure. Understand "donut" or "donuts" or "doughnut" or "doughnuts" or "kroughnut" or "kroughnuts" or "kronut" as Krusty Kronuts. Understand "building" or "store" or "restaurant" as Krusty Kronuts when the location is Krusty Kronuts. The printed name of Krusty Kronuts is "kroughnut store". The title of Krusty Kronuts is "Krusty Kronuts".

[Cyclorama]

The description of Cyclorama is "The indoor bicycle track yields important radionuclides for pharmaceutical use." Cyclorama is an improper-named structure. Understand "bike" or "bicycle" or "track" or "cycle" as Cyclorama. Understand "building" as Cyclorama when the location is Cyclorama. The printed name of Cyclorama is "indoor bike track". The title of Cyclorama is "Cyclorama".

[Biocontainment Facility]

The description of Biocontainment Facility is "[bioConDescription]". Biocontainment Facility is an improper-named structure. Understand "bioweapons" or "bioweapon" or "laboratory" or "lab" or "vaccine" or "hospital" as Biocontainment Facility. Understand "building" as Biocontainment Facility when the location is Biocontainment Facility. The printed name is "biocontainment facility".

To say bioConDescription:
	if the Biocontainment Facility is unvisited, say "You are vaguely aware that something isn’t right here. Gaunt, pale forms lurch and moan as they pour out of the vaccine laboratory. There’s something wrong with them, but you can’t quite put your finger on it.[paragraph break]Oh, wait, that [italic type]is[roman type] weird - none of them have phones...[paragraph break]";
	say "The zombie horde mulls aimlessly, eyes down, faces blank, trudging their way through unlife. They don’t seem to notice folks playing pogoman.";
	if the Biocontainment Facility is unvisited:
		say line break;
		bestow "Just One of the Boys".

[Battle of Margot's Pantry]

The description of Battle of Margot's Pantry is "The Descendants of Posterity have erected a plaque commemorating this turning point in western civilization. In modern times, it appears to be [quotation mark]Dino's Pizza[quotation mark]." Battle of Margot's Pantry is an improper-named structure. Understand "dino's pizza" or "pizzeria" or "dino" or "pizza" or "dinos pizza" as Battle of Margot's Pantry. Understand "building" or "store" or "restaurant"  or "plaque" as Battle of Margot's Pantry when the location is Battle of Margot's Pantry. The title of Battle of Margot's Pantry is "Battle of Margot's Pantry". The printed name of Battle of Margot's Pantry is "pizzeria".

[Gas Station Gazebo]

The description of Gas Station Gazebo is "Yet another gas station gazebo.[one of] Wht is it with gas stations and gazebos?[or][stopping]".  Gas Station Gazebo is an improper-named artifact. Understand "building"  as Gas Station Gazebo when the location is Gas Station Gazebo. The title of Gas Station Gazebo is "Gas Station Gazebo". The printed name of Gas Station Gazebo is "gazebo".

[Dung Beetle Mural]

The description of Dung Beetle Mural is "Dark earth tones and impasto technique; you're not sure of the medium." Dung Beetle Mural is an improper-named artifact. Understand "sculpture" or "statue" or [even, liberally] "art" as Dung Beetle Mural when the location is Dung Beetle Mural. The printed name of Dung Beetle Mural is "mural". The title of Dung Beetle Mural is "Dung Beetle Mural".

[Hank's Tavern]

The description of Hank's Tavern is "Now an artist’s colony, the tavern boasts pottery wheels, arc-welding, and improvised explosive courses at night." Hank's Tavern is an improper-named structure. Understand "hank" or "hanks" as Hank's Tavern. Understand "building" or "store" or "restaurant"  or "bar" or "pub" or "club" as Hank's Tavern when the location is Hank's Tavern. The title of Hank's Tavern is "Hank's Tavern". The printed name of Hank's Tavern is "the pub".

[Olde Train Station]

The description of the Olde Train Station is "Still a functioning passenger train station, since the early 19th Century, the Olde Train Station (formerly, the Newe Train Station) has been a port of call – home away from home – for diplomats, hustlers, entrepreneurs, and… wanderers." Olde Train Station is an improper-named structure. Understand "old" as Olde Train Station. Understand "building" as Olde Train Station when the location is Olde Train Station. The printed name of Olde Train Station is "station". The title of Olde Train Station is "Olde Train Station".

[Dog Exercise Area]

The description of the Dog Exercise Area is "[one of]Dogs can be seen practicing yoga and synchronized barking at all hours of the day (much to the annoyance of their neighbors).[paragraph break]An[if the Old Jail is visited]other[end if] in-game advertisement pops up on your phone:[paragraph break][quotation mark]If you like like dogs, check out our canine-centric sci fi game, Rover[apostrophe]s Day Out, which is available online for play or download.[quotation mark][paragraph break]You hastily swipe the shameless advertisement from your phone[or]A large, open field where dogs and owners play[stopping]."

Dog Exercise Area is an improper-named place. Understand "field" or "run" as Dog Exercise Area. Understand "park" as Dog Exercise Area when the location is Dog Exercise Area. The title of Dog Exercise Area is "Dog Exercise Area". The printed name of Dog Exercise Area is "dog run".

[Bottle Cap Wall]

The description of Bottle Cap Wall is "A wall made entirely of bottle caps." Bottle Cap Wall is an improper-named artifact. Understand "mural" as Bottle Cap Wall. Understand "sculpture" or "statue" or [even, liberally] "art" as Bottle Cap Wall when the location is Bottle Cap Wall. The printed name of the Bottle Cap Wall is "wall made entirely of bottle caps". The title of Bottle Cap Wall is "Bottle Cap Wall".

[Mile Marker 0,7]

The description of MarkerSeven is "Demonstrating the importance of relativity, the mile marker is unquestionably 0.7 miles from something -- it just doesn’t say what." MarkerSeven is privately-named. MarkerSeven is a proper-named artifact. Understand "seven" or "zero" or "naught" or "point" or "decimal" or "mile" or "marker" or "post" as MarkerSeven.  The printed name of MarkerSeven is "mile marker 0.7". 

[Unfathomable Orb]

The description of Unfathomable Orb is "[one of]A lawn orb, the why of which is uncertain and, indeed,  perhaps unknowable.[or]An epistemiologically indeterminate orb[or]An orb. Or is it?[or]A spherical tesseract.[or]An equi-improbable arrangement of uncertainties about a central point.[or]An unusual piece of lawn furniture.[stopping]".

Unfathomable Orb is an improper-named artifact. Understand "lawn" or "furniture" or "lawn furniture" or "sculpture" or "statue" or [even, liberally] "art" as Unfathomable Orb when the location is Unfathomable Orb. The title of Unfathomable Orb is "Unfathomable Orb". The printed name of the Unfathomable Orb is "orb".

[Rottweiler Art]

The description of Rottweiler Art is "They may be good guard dogs, but they are lousy artists. The sculpture lacks subtlety."

Rottweiler Art is an improper-named artifact. Understand "doggy" as Rottweiler Art. Understand "sculpture" or "statue" or "art" as Rottweiler Art when the location is Rottweiler Art. The title of Rottweiler Art is "Rottweiler Art". The printed name of Rottweiler Art is "doggy art".

[Sister City Friendship Altar]

The description of Sister City Friendship Altar is "A timeworn granite slab with furrows cut to drain towards the edges, the arcane runes at its base are illegible."

Sister City Friendship Altar is an improper-named artifact. Understand "sacrifice" or "human" or "sacrificial" as the Sister City Friendship Altar. Understand "city"  or [questionably] "art" as Sister City Friendship Altar when the location is Sister City Friendship Altar. The printed name of Sister City Friendship Altar is "altar". The title of Sister City Friendship Altar is "Sister City Friendship Altar".

[1893]

The description of Year1893 is "A plaque both commemorating the failure to hire a town historian in 1893 and bemoaning the absence of other recorded events for that year." 

Year1893 is an improper-named artifact. Year1893 is privately-named.  Understand "1893" or "plaque" as Year1893. The printed name of Year1893 is "plaque". The title of Year1893 is "1893 Plaque".

[Eagle's Sojourn]

The description of Eagle's Sojourn is "A bas relief carving of Dwight Eisenhower dressed as a cowboy and riding an eagle to the moon."

Eagle's Sojourn is an improper-named artifact. Understand "eagle" or "eagles" or "carving" or "moon" or "cowboy" as Eagle's Sojourn. Understand "sculpture" or "statue" or "art" as Eagle's Sojourn when the location is Eagle's Sojourn. The title of Eagle's Sojourn is "Eagle[apostrophe]s Sojourn". The printed name of Eagle's Sojourn is "carving".

[Nymph with Telescope]

The description of Telescope Nymph is "Based on one of Shakespeare’s less known works, in this sculpture, the titular nymph searches the sky for her lost salmon." 

Telescope Nymph is an improper-named artifact. Understand "with" as Telescope Nymph. Understand "sculpture" or "statue" or "art" as Telescope Nymph when the location is Telescope Nymph. The printed name of Telescope Nymph is "nymph statue". The title of Telescope Nymph is "Nymph With Telescope".

[Fire is our Friend]

The description of Fire Is Our Friend is "An eternal flame burns bright above a bronze brazier held aloft by the Four Horsemen of the Apocalypse. The plaque notes that the piece was donated to the town by Fire Bridge 11."

Fire Is Our Friend is an improper-named artifact. Understand "eternal" or "flame" or "brazier" or "horsemen" or "four horsemen of the apocalpyse" or "hazard" or "flaming" as Fire Is Our Friend. Understand "sculpture" or "statue" or "art" as Fire Is Our Friend when the location is Fire Is Our Friend. The title of Fire Is Our Friend is "Fire Is Our Friend". The printed name of Fire Is Our Friend is "flaming sculpture".

[Unearthly Geometry]

The description of Unearthly Geometry is "You can only stomach a momentary, sidelong glance at the fecund immensity of the inchoate mass of spongy protoplasm and the loathsome writhing knot of vermiculous tentacles that purports to be a kindergarten art project."

Unearthly Geometry is an improper-named artifact. Understand "tentacles" or "outre" or "abomination" or "detestable" or "perversion" or "infernal" or "monstrosity" or "abysmal" or "horro" or "grotesque" or "vision" as Unearthly Geometry. Understand "sculpture" or "statue" or "art" as Unearthly Geometry when the location is Unearthly Geometry. The printed name of Unearthly Geometry is "[one of]outre abomination[or]detestable perversion[or]infernal monstrosity[or]abysmal horror[or]grotesque vision[in random order]". The title of Unearthly Geometry is "Unearthly Geometry".

[Cranberry Bog]

The description of Cranberry Bog is "The town’s cranberry bog, a quiet pond filled with the delectable but bitter berries. Bodies are pulled from its depths with some regularity, but at least they are well-preserved by the acidity of the bog."

Cranberry Bog is an improper-named place. Understand "pond" as Cranberry Bog. The printed name of Cranberry Bog is "cranberry bog".

Instead of searching the Cranberry Bog:
	say "[one of]You find nobody. Get it? No body[or]You find nobody[stopping]."
	
Instead of entering the Cranberry Bog:
	say "You don[apostrophe]t want to become it[apostrophe]s next victim!"

[Found Art]

The description of Found Art is "A single screw attached to a surfboard.[one of] This is what counts as art these days. Jeesh.[or][stopping]".

Found Art is an improper-named artifact. Understand "surfboard" or "screw" as Found Art. Understand "sculpture" or "statue" or "art" as Found Art when the location is Found Art. The title of Found Art is "Found Art". The printed name of Found Art is "art".

Instead of searching the Found Art:
	say "It is right in front of you."
	
[Crystal Skull]

The description of Crystal Skull is "There isn’t much left of the Salt Skull exhibit. Occasionally, deer walk through town just to lick it."

Crystal Skull is an improper-named artifact. Understand "exhibit" as Crystal Skull. Understand "sculpture" or "statue" or "art" as Crystal Skull when the location is Crystal Skull. The printed name of Crystal Skull is "crystal skull".

Instead of tasting Crystal Skull:
	say "It tastes like deer spittle."

[Vuvuzelas]

The description of Vuvuzelas For Freedom is "A bronze plate is set into the sidewalk here to commemorate the Vuvuzela Uprising of 1893."

Vuvuzelas For Freedom is an improper-named artifact. Understand "vuvuzela" or "uprising" or "bronze" or "plate" or "sidewalk" as Vuvuzelas For Freedom. Understand "commemorative" or "plaque" as Vuvuzelas For Freedom when the location is Vuvuzelas For Freedom. The printed name of Vuvuzelas for Freedom is "plaque". The title of Vuvuzelas for Freedom is "Vuvuzelas For Freedom".

[Poison Ivy]

The description of Toxicodendron radicans is "In the middle of this field, there is a small sign, [quotation mark]Warning: Poison Ivy.[quotation mark]"

Toxicodendron radicans is an improper-named artifact. Understand "poison" or "ivy" or "poison ivy" or "sign" as Toxicodendron radicans. Understand "field" as Toxicodendron radicans when the location is Toxicodendron radicans. The printed name of Toxicodendron radicans is "field of poison ivy". The title of Toxicodendron radicans is "Toxicodendron radicans".

[Perilous Passageway]

The description of Perilous Passageway is "A disgusting passageway."

Perilous Passageway is an improper-named place. Understand "dirty" or "alley" or "perilous" or "passage" or "passageway" as Perilous Passageway.  The printed name of proxy-PerilousPassageway is "dirty alley". The title of Perilous Passageway is "Perilous Passageway".

Instead of going a direction to the perilous passageway:
	say "[one of][passage1][or][passage2][or][passage3][or][passage4][or][passage5][or][passage6][or][passage7][or][passage8][or][passage9][or][passage10][or][passage11][or][passage12][stopping]";			
	
To say passage1:
	say "You are torn. Clearly, there is a rare pogoman down the dark winding passageway you are standing in front of  -- and having a rare pogoman would certainly help you win gym battles. On the other hand, it’s narrow, poorly lit and in all the years you have lived in this town, you’ve never seen anyone walk in or out of the so-called [quotation mark]perilous[quotation mark] passageway.[paragraph break]";
	bestow "At Least Briefly Listened To Your Inner Voice".
	
To say passage2:
	say "As you round a pile of boxes behind a garbage bin, you are immediately flanked by two shady characters who have been lurking in the alley. The heavyset short one blocks your exit while the tall wiry one wearing a red bandana rips the phone from your grasp. He tosses the phone onto a pile of glowing cell phones and his partner tosses you onto a heap of unconscious players.";	
	phoneDeath.
	
To say passage3:
	say "You recall that last time, walking into this foreboding passageway didn’t work out very well for you. You consider walking around the block. On the other hand, you’ve never even seen some of the rare pogomen that your phone has detected in there. [paragraph break]Decisions, decisions."
	
To say passage4:
	say "[quotation mark]Hey, Eddy![quotation mark][paragraph break][quotation mark]What?[quotation mark][paragraph break][quotation mark]You know that dupe from before with the phone? The one that came back?[quotation mark][paragraph break][quotation mark]Yeah?[quotation mark][paragraph break]
[quotation mark]Look who[apostrophe]s here again.[quotation mark][paragraph break][quotation mark]That’s improbable.[quotation mark][paragraph break][quotation mark]But not impossible.[quotation mark][paragraph break][quotation mark]Granted, not impossible, I’m just saying it’s improbable.[quotation mark][paragraph break]Your brain is driven forward into your sinuses by a sock full of quarters slamming up against the base of your skull. As you convulse, your phone flies from your fingers like a chinese throwing star, catching one of your assailants between the eyes. He falls on top of you and your vision fades.";
	phoneDeath.
	
To say passage5:
	say "Hmm… that dangerous passageway to the [the best route from the location of the player to Perilous Passageway]… The nape of your neck is still sore and you think you might have suffered some brain damage: you can’t remember the name of any of your teachers before high school. Maybe going through this passageway isn’t worth it.[paragraph break]";
	bestow "Slow Learner".
	
To say passage6:
	say "A familiar scene unfolds. Two thugs jump out from behind boxes and squint at you in the dim light.[paragraph break][quotation mark]Hey Eddy?[quotation mark][paragraph break][quotation mark]Yeah, Frankie?[quotation mark][paragraph break][quotation mark]Is that the bozo who keeps coming back?[quotation mark][paragraph break][quotation mark]The improbable ninja dude?[quotation mark][paragraph break][quotation mark]Yeah.[quotation mark][paragraph break][quotation mark]Yeah, I think so. Or, at least someone so similar as to be indistinguishable.[quotation mark][paragraph break][quotation mark]So, for all practical purposes, it is?[quotation mark][paragraph break][quotation mark]Yeah.[quotation mark][paragraph break]Eddy lifts a garbage can lid to protect himself from your ninjitsu, while Frankie winds up with two ten-pound cured salamis and claps them together around your head. The phone flies from your grip, ricochets off the dumpster and the screen shatters, showering Frankie with razor-sharp shards of trademarked Corning Gorilla Glass.[paragraph break]You go down like a sack of bricks.";
	phoneDeath.
	
To say passage7:
	say "No, just no.[paragraph break]";
	bestow "Better Part Of Valor".
	
To say passage8:
	say "Nothing good will come from going in there. After the last attack, your ears ring constantly, your right eye is blurry, and everything seems to be spinning except when you stand very still and hold your breathe.[paragraph break]";
	bestow "Pain Is The Best Teacher".
	
To say passage9:
	say "You saunter into the den of Frankie and Eddy.[paragraph break]When they see you, they startle.[paragraph break][quotation mark]Hey, buddy. We don’t want any trouble,[quotation mark] pleads Eddy.[paragraph break]Backing away and stumbling over garbage, Frankie holds his hands up, [quotation mark]We’re just leaving.[quotation mark][paragraph break]They vanish into the shadows, leaving you alone in the squalid passageway.";
	move the player to the perilous passageway.
	[TODO: A rare pogoman appears]
	
To say passage10:
	say "With lingering trepidation, you enter the perilous passageway.";
	now the title of the perilous passageway is "until recently periolous passage way";
	now the description of the perilous passageway is "A passageway that is less disgusting than the last time you were here.";
	move the player to the perilous passageway.
	
To say passage11:
	now the title of the perilous passageway is "Entirely Safe Passageway";
	say "You walk with confidence into the formerly perilous passageway.";
	now the description of the perilous passageway is "A well-lit passageway between buildings.";
	move the player to the perilous passageway.
	
To say passage12:
	move the player to the perilous passageway.


Section Dealing with Quadrooms

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
			
Section Sticking to the Straight and Narrow

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

Section Borders

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
	let R be the room the way from the location;
	if R is:
		-- Reservoir:
			if the number of times killed corresponding to the place of death of R in the Table of Border Deaths is:
				-- 0: say "Wait a minute -- The town reservoir lies just to the north of this part of town. A few steps in that direction and you[apostrophe]ll be soaked.[paragraph break]";
				-- 1: say "It[apostrophe]s actually illegal to bathe in the town reservoir. People drink this stuff. On the otherhand... who would know?[paragraph break]";
					bestow "Hygiene";
				-- 2: say "Head down, eyes on the screen, you walk into the town reservoir. The tangled duckweed drags behind you, as you sink deeper into the muddy bottom, struggling forward, phone now raised above your head. You cough and sputter as water enters your lungs, but push onward, intent on capturing some water-type pogomen.[paragraph break]Through the muddy water, you can still distinguish the glow of the screen.[paragraph break]Finally, water laps up against the phone, cooling it and bring it well-deserved final rest. The screen flickers, you hear a muffled, sorrowful beep, and all goes dark.";
					phoneDeath;
				-- otherwise: say "You[apostrophe]ve learned your lesson about trying to play Pogoman underwater. Nope, from now on you will stick to dry land.[paragraph break]";
		-- Superhighway:
			if the number of times killed corresponding to the place of death of R in the Table of Border Deaths is:
				-- 0:
				say "Superhighway 17, which has been under construction for almost fifteen years is now open and just to the west of here.[paragraph break]Sure, there may be some juicy pogomen along the highway (or perhaps laying along the edges of the road), but there really isn’t any good place to walk along it.";
				-- 1:
					say "From here, you can hear the roar of traffic on the ten-lane Superhighway 17 just to the west. It[apostrophe]s just over the hedge, but there[apostrophe]s no shoulder on the road and since most the drivers will also be playing pogomon rather than paying attention to driving, it would be suicidal to walk in that direction. Suicidal, I say.[paragraph break]";
					bestow "One Jersey Barrier From Certain Death";
				-- 2:
					say "You hop neatly over the hedge and land on a newly paved section of road just in front of a sporty bright orange convertible. Your shins crack like matchsticks on its front bumper and you tumble forward onto the hood, head first into -- and through -- the windshield. Momentum carries you past the surprised driver, who reflexively jams the brakes to the floor. You  flip over the baby seat and roll off the back of the car as it drift sideways into an uncontrolled spin, slams into a oil tanker and is swallowed in a mushroom cloud of flames on an overpass. [paragraph break]Cars from both directions pile up and are consumed in the firestorm. Girders supporting the overpass slowly twist in the extreme heat and eventually give way, crashing down on the puppy rescue shelter, below. Fanned by the wind, the fire jumps to the bushes and is soon working its way up distant hills, burning through dry brush and headed for the forest.[paragraph break]But then tragedy strikes: your phone lands screen-down with a crunching sound. ";
					phoneDeath;
				-- otherwise: 
					say "Since the accident, you have an abiding fear of highways and stay put.";
		-- Tarpit:
			if the number of times killed corresponding to the place of death of R in the Table of Border Deaths is:
				-- 0:
					say "You can smell the sulfourous tarpits just to the south of town.";
				-- 1:
					say "No, you’d rather not go that way: you’d like to think that you’re smarter than the many prehistoric animals whose skeletons ended up on display in the Town Museum.[paragraph break]";
					bestow "Smarter (probably) Than A Prehistoric Sloth";
				-- 2:
					say "As you move southward, your phone vibrates. What a find! An super rare ancient prehistoric multicolored Archeodraconozoid! You thought they were only a legend. It registers on your phone, but where is it? You scan back and forth in AR mode. Where is it? You must have it!![paragraph break]You wade further and further into the field, you sore feet relaxing on the warm, soft ground.[paragraph break]But still, you don’t see it. It should be right here. It’s like you’re standing on it.[paragraph break]While you go through your inventory and ignite some incense to attract your prize, you sink deeper and deeper into the tar field. Day dreaming about how great it would be to tell everyone that you captured a Archeodraconozoid, the warmth slowly envelops your legs, your chest, your neck.[paragraph break]The field belches natural gas as you struggle and the gas ignites explosively from the burning incense. Soon, the field is on fire. You struggle towards the edge of the field, desperately wiping the sticky tar from your phone’s screen.[paragraph break]As you draw your final breath and sink into the field holding the phone above your head like the State of Liberty’s torch, your only regret is that you will never capture that Archeodraconozoid.";
					phoneDeath;
				-- otherwise:
					say "The burns still smart -- you reconsider walking into the tarpit.";
		-- Railway:	
			if the number of times killed corresponding to the place of death of R in the Table of Border Deaths is:
				-- 0:
					say "You can hear the busy railroad tracks just to the east.";
				-- 1:
					say "You start to head east, but then recall the railway tracks nearby -- wasn[apostrophe]t it just last weekend that a third grader was run down by a freight train? Someone should do something about it, like maybe post some signs. You[apostrophe]d do it yourself if you weren’t so busy -- you know, with the game and all[paragraph break]Your eyes are drawn back down to the beckoning phone screen and your mind wanders back to the game.[paragraph break]";
					bestow "Refined Sense of Priorities";
				-- 2:
					say "As you step over the train tracks, in your peripheral vision to the left, you catch a glimpse of a moving red light. Glancing up from your phone for just a moment, you see it[apostrophe]s just a pick-up truck backing up down the road. No worries.[paragraph break]From the other direction, there is a explosive rush of wind and you are suddenly yanked up and backwards by your collar. Your phone spills out of your hand and, improbably, lands flat on the third rail.[paragraph break][quotation mark]No! You shout,[quotation mark] to the muscular commuter who you dangles you above the platform.  The bullet train passing only inches from your face. You struggle impotently in his grasp, your cell phone-atrophied arms no match for his grand physique. [quotation mark]My phone! I must save my phone.[quotation mark][paragraph break]As soon as he sets you down, you jump off the platform. But it is too late. Sparks jump from the phone to the ground, the fence, the rails. You ignore the loss of feeling in your arms as you clumsily knock the phone off the rail. It drips to the ground a glowing, molten mass.";
					phoneDeath;
				-- otherwise:
					say "You have an aversion to railroad tracks, so you remain where you are.";
	increase number of times killed corresponding to the place of death of R in the Table of Border Deaths by one.
	
Section Village Atmosphere

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
"A flock of gamers runs noisily down the street towards the city center, no doubt pursuing some exotic pogoman in the direction of the Nyantech tower. You hear one of them yell, [quotation mark]I hear they’re still accepting beta-testers![quotation mark] They disappear from sight",
"In the distance, the Nyantech Cat mechanically purrs the time as it continues its never-ending journey around the Nyantech building",
"A group of hyperexcitable tourists walks by, gaping in awe at the soaring Nyantech tower. One of them remarks that were it not for Nyantech, this town would be little more than a collection of historic markers -- and it[apostrophe]s true",
"From across the street, you over hear a despondent gamer confiding to a friend, [quotation mark]I thought I was beta-tester material. But… I failed. I couldn[apostrophe]t cut it.[quotation mark] They walk away in silent shame",
"The Nyantech Cat, its glowing red eyes a beacon of hope to mobile gamers everywhere, slowly rotates around the top of the Nyantech corporate headquarters building downtown"
}.

To say permutedTower:
	say "The [one of]shiny, black[or]ebony[or]majestic[or]jet black[or]monolith-like[or]imposing[purely at random] Nyantech [one of]tower[or]building[or]office building[or]corporate headquarters[or]operations center[purely at random] [one of]looms[or]towers[or]stands out[or]rises[or]soars[purely at random] [one of]in the distance[or]on the horizon[or]over the roof tops[or]majestically[or]regally[or]in a class of its own[purely at random], [one of]dwarfing[or]dominating[or]putting to shame[purely at random] surrounding [one of]buildings[or]structures[or]edifices[purely at random]".


Chapter Inside Nyantech

Section 1 - Region HQ

HQ is a region. Lobby, RevolvingDoor, LAN Closet, Cafeteria, Beverages, Snacks, Legal Department, Cousteau Room, Welcome to Beta Testing, Rick Astley Shrine, Support Boom, Interns, Engineers, Managers, Packaging, and Processing are rooms in HQ.

[Top Level, Interior]

The Cafeteria is north of DeckS. The description of the cafeteria is "Nyantech employees and visiting players alike enjoy heaping platefuls of the gourmet fare served gratis in the company cafeteria. A waiter serves up a plate of [one of]roasted boar[or]braised chicken and kale[or]homemade butter croissants with maple glaze[or]herb-encrusted roast leg of lamb with garlic roasted baby potatoes[or]orecchiette bolognese with chestnuts[or]beautifully prepared magret de canard[or]pan-seared foie gras[or]fingerling rice, sublimated sungold crumble & late-summer rye[or]homespun water pancake[or]fermented anchovy with lime[or]sunflower paté[or]quickened ham, fig, and rubbed watercress[or]salt reduction with eggplant[or]pan-seared artichoke with ramp[or]fingerling peach surprise with surprise folk corn[or]pork bellies with rustic butter[in random order], which diners happily devour in an instant."  The possible exits of the Cafeteria are "The [elevatorDoorDesc], the observation deck to the south, and signs point east to the [quotation mark]Pit[quotation mark], northwest to [quotation mark]Beverages[quotation mark], and northeast to [quotation mark]Snacks[quotation mark]."

The employees are plural-named persons in the cafeteria. The description of the employees is "The employees -- none of them a day over twenty-five -- slowly shovel food into their mouths and stare at each other wordlessly. Each seems absorbed in the words and text flashing by on their data monocles. Employees have badges similar to yours, except black in color with a white stripe." Understand "employee" or "worker" or "manager" or "intern" or "workers" or "managers" or "interns" or "engineer" or "engineers"  or "nyantecher" or "nyantechers" as the employees.

The data monocle is part of the employees. The description of the data monocle is "A matte black device fitted over one eye and held in place by a metal band that wraps partway around the head. Data and text are projected on the monocle, which serves as a heads-up display for the wearer." Understand "monocles" as the data monocle. 

Instead of taking the data monocle for the first time:
	say "The data monocle seems attached to the employee’s face. Maybe superglue? In any case, the employee ignores you.[paragraph break]";
	bestow "Rude".
	
Instead of taking the data monocle:
	say "You might as well try to take the employees nose -- the monocle seems to be physically implanted."
	
The nose is part of the employees. The description of nose is "A facial protuberance which filter and humidifies air before it enters the upper respiratory system. But that's not important right now."

Instead of taking the nose for the first time:
	say "Predictably, that doesn[apostrophe]t work.[paragraph break]";
	bestow "Literal".
	
Instead of taking the nose:
	say "Yech."
	
Instead of listening when the player is in the cafeteria:
	say lobby stage business.
	
Food is a scenery in the cafeteria. The description of food is "The selection of gourmet food is constantly changing."

The visitors are plural-named persons in the cafeteria. The description of the visitors is "Players from every faction are here, alternatively eating and playing pogoman on their phones. They all have badges similar to yours; most of them are white, but some are green or other colors with a white bar. You also notice that they tend to be high level. In fact, none of them appear to be anything less than level-twenty pogomasters. You feel a little out of your league." Understand "players" or "player" or "visitor" as visitors.

The badges are part of the visitors. Understand "green" or "blue" or "black" or "white" or "colors" or "badge" as the badges when the player is in the cafeteria. The description of the badges is "Badges just like yours, most of them white, some of them green or blue with a white bar. The employee badges are all black with a white bar."

Talking to is an action applying to one thing. Understand "talk to/at/with [something]" as talking to.

Check talking to:
	if the noun is not a person:
		say "Talking to inanimate objects is odd, but not socially unacceptable for a Pogoman Go! player." instead.
			
Carry out talking to:
	say "You chat with [the noun]."
	
[TODO: override talking with customized response for each person]

Instead of asking someone (called the auditor) about some topic:
	try talking to the auditor instead.
	
Instead of telling someone (called the auditor) about some topic:
	try talking to the auditor instead.

Instead of showing something (called the item) to someone (called the auditor):
	say "[The auditor] [ignore] you. TODO: exceptions such as showing the phone to the unicorn. Also, need to cover Giving To."
	
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
		-- otherwise:
			say "[The auditor] nods briefly, but this leads to a long conversation about [chitChat].";
			
To say employeeRant:
	say "The employee [one of]seems taken aback by your approach[or]startles with a lurch[or]looks around wildly and then stares awkwardly at you[or]struggles to focus on something other than the monocle for once and looks you squarely in the neck[in random order] and [one of]replies[or]says[or]answers[in random order], [quotation mark][one of][employeeRant1][employeeRant2][stopping].[quotation mark][paragraph break]".
	
To say employeeRant1:
	say "Hello, $identity[bracket]player[bracket][team color of the player][close bracket][bracket][pogoLevel of the player][close bracket][close bracket], looks like the weather is going to be &extractWeather([quotation mark]town[quotation mark], +3)";
	
To say employeeRant2:
	say "Ah, [bracket]one of[close bracket]good[bracket]or[close bracket]great[bracket]or[close bracket]nice[bracket]or[close bracket]wonderful[bracket]or[close bracket]how pleasant[bracket]at random[close bracket] to see a [bracket]one of[close bracket]player[bracket]or[close bracket]visitor[bracket]or[close bracket]gamer[bracket]at random[close bracket] and to have normal social discourse";
	
To say visitorRebuff:
	say "[one of]The player glances briefly at your badge and remarks, [quotation mark]Not now, n00b. Can’t you see I’m pogomaning? Duh.[quotation mark][or]The players continue tapping away at their phones, ignoring you.[stopping]."

Snacks is northeast of the Cafeteria. The description of Snacks is "A poster above a table advertises every kind of pop-tart known to man, all of them glazed and sprinkled: strawberry, blueberry, raspberry, apple, chocolate, cranberry, and many more. Just above the table is a metal chute, which projects just a bit from the wall." The possible exits of Snacks are "The company cafeteria is to the southwest."

The poster is scenery in Snacks. The description of the poster is "A glossy advertisement dominated by a colorful assortment of pop-tarts above the slogan [quotation mark]SmartPastries for SmartPeople![quotation mark]."

The table is a scenery supporter in Snacks. The description of the table is "A rustic table positioned directly below the metal slot in the wall." Understand "rustic" as the table.

The chute is fixed in place scenery in Snacks. The description of the chute is "A metal slot that comes out of the wall and is angled slightly downward. The opening is about the size of, oh, let[apostrophe]s say a pop-tart."

A pop-tart is a pastry. It is on the table. The description of the pop-tart is "The crowning achievement of millenia of culinary evolution, this double-glazed, sugar-sprinkled, [flavor of the pop-tart]-flavored pop-tart is a flat, rectangular piece of pastry perfection." Understand "pastry" or "cake" or "dessert" or "poptart" as the pop-tart.

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
	say "You’re pretty full and riding a sugar buzz.[paragraph break]";
	bestow "Stoked";
	newPopTart.
	
After eating a pop-tart for the third time:
	say "After snarfing down the pop-tart, you’re kind of vibrating. Also, your left eye is getting blurry.[paragraph break]";
	bestow "What doesn[apostrophe]t kill you makes you stronger";
	newPopTart.
	
After eating a pop-tart for the fourth time:
	move the player to the infirmary;
	say "You wake up with a pounding headache as a nurse withdraws a hypodermic syringe from your flank.[paragraph break][quotation mark]That should do it,[quotation mark] she says as she clips off the needle and throws the syringe and a few used bottles of insulin into a bag marked biomedical waste.[paragraph break]You are still rubbing the sore spot on your side as she signs off on the paperwork and stuffs you into an elevator.[paragraph break]";
	now the floor level of the elevator is Infirmary;
	move the player to the elevator;
	bestow "Pancreatic Endocrine Capacity Exceeded";
	newPopTart.
	
After eating a pop-tart:
	say "After vivid dreams involving [one of]intelligent sessile polyps capable of taking over people[apostrophe]s minds[or]worship of a tiki god[or]the political aspirations of the three little pigs[or]giant cooing pigeons[or]swimming against the pull of a voracious whirlpool[or]a Pink Floyd tribute band consisting of the original cast of The Wizard of Oz[or]going bowling with Steve Jobs[or]the endless void[stopping], you awaken in the cafeteria.[paragraph break]No one really pays you any attention, but you notice that several hours have passed.";
	move the player to the cafeteria;
	newPopTart.

Beverages is northwest of the Cafeteria. The description of beverages is "To the left there is a soda fountain with coke, sprite, and root beer on tap. To the right, there is a dispenser for lemonade and iced tea[if the securityColor of the badge is white]. But in the center, on a marble pedestal surrounded by blinking bulbs, and framed in a spotlight from the ceiling, is a golden chalice of fluorescent lime-green Kool-Aid[end if]."  The possible exits of Beverages are "The cafeteria is just to the southeast."

The soda fountain is scenery in Beverages. The description of soda fountain is "The soda fountain can dispense coke, sprite, or root beer."

The dispenser is scenery in Beverages. The description of dispenser is "The dispenser is filled with icy lemonade on one side, and iced tea on the other."

The root beer is pop in Beverages. The description of root beer is "A cold, frothy brown soft drink with sassafras overtones." 

The sprite is pop in Beverages. The description of sprite is "A refreshing, light, citrus-flavored soft drink."

The coke is pop in Beverages. The description of coke is "A dark, sweet beverage with a touch of acidity."

The lemonade is pop in Beverages. The description of lemonade is "A balance between sweet and sour; perfect on a hot day."

The iced tea is pop in Beverages. The description of iced tea is "Sweet tea, with a hint of mint."

The Kool-Aid is pop in Beverages. The description of Kool-Aid is "The shimmering chalice of kool-aid is engraved [quotation mark]Nyantech Corporate Kool-Aid[quotation mark]". Understand "chalice" as Kool-Aid. Understand "koolaid" as kool-aid.

Before taking or drinking a pop (called the liquid):
	if the liquid is Kool-Aid and the Kool-Aid is in Beverages:
		say "You taste the Kool-Aid skeptically at first, but after the first sip, you can’t get enough of it and you gulp it down.[paragraph break]Suddenly, everything makes sense. Colors are sharper and life more meaningful. At once, you understand the central role that Nyantech plays in the greater universe, and see how everything -- the internet, cell phones, geodata, and gaming -- come together harmoniously to fulfill a vision greater than any of Man’s historical aspirations. You are humbled before a vision of global unity of purpose.[paragraph break]Also, your badge turns green except for a bar of white.[paragraph break]";
		move the Kool-Aid to the void;
		now the securityColor of the badge is green;
		bestow "Privilege Escalated";
		the rule succeeds;
	otherwise:
		say "You [one of]enjoy a frosty[or]slug down an icy[or]drink a refreshing[at random] glass of [liquid].";
		the rule succeeds.
	
After going southeast from beverages when the securityColor of the badge is green for the first time:
	say "As you emerge from the beverage room, kool-aid dripping from your lips, one of the employees looks over towards you conspiratorily and gives you a little salute before returning to a trance-like state."

[Mechanical Access Shaft]

The Ladder Area is a region. Crawl Space, Gearing Assembly, Top of the Ladder, Somewhere Along The Ladder, and Bottom Rung are rooms in the Ladder Area.

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

The Gearing Assembly is outside from Gantry Chamber. The Gantry Chamber is south from the Gearing Assembly.

The description of the Gearing Assembly is "The room itself appears to ride a circular track around the building. There are no controls or indicators here, but there is plenty of heavy equipment including motors and gears. A structural boom extends from the center of the room to support the Nyantech Cat. Near the outer edge of the room, there is a circular hole in the floor and through it, you can see the top of a narrow ladder, which leads downward into darkness."  The possible exits of the Gearing Assembly are "Obvious exits are the boom to the south or downwards using the ladder."

The access hole is an open not openable door. The access hole is below the Gearing Assembly. The  access hole is above The Top of The Ladder. The description of the hole is "A smooth circular access hole cut in the floor of the the Gearing Assembly."

Instead of entering the hole:
	if the player is in the Gearing Assembly:
		try going down;
	otherwise:
		try going up.

The electric motor is scenery in the Gearing Assembly. The description of the motor is "A 8000 Horsepower three-phase electric motor. Through a complicated transmission system, it drives a gear assembly."  Understand "motors" or "equipment" as the electric motor.

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
		say "No. Aside from being massive [the item] [are] covered in thick, sticky, black grease."

Instead of doing something with the ladderProxy when the player is in the Gearing Assembly:
	if the current action is examining:
		continue the action;
	if the current action is climbing:
		try going down;
	otherwise:
		say "The ladder is just below this room. You would have to go down."
	
The boomArm is a privately-named backdrop in the Gearing Assembly and in the Gantry Chamber. The description of the boomArm is "A long metal boom that extends from the building, and suspends the cat almost 50 stories above street level." The printed name of the boomArm is "support boom". Understand "boom" or "support" as the boomArm

The gears are plural-named scenery in the Gearing Assembly. The description of the gears is "Huge, greasy gears that move the room and its attached boom along a toothed track that circles the upper portion of the building, just below the observation deck." Understand "gear" or "assembly" or "transmission" as the gears.

The track is scenery in the Gearing Assembly. The description of the track is "A bumpy metal track that rings the building. The upper part of the gearing assembly follows the track as it rotates the cat support boom around the building. The track is covered in grease and generally free of rust." Understand "tracks" as the track.

After going south from the Gearing Assembly for the first time:
	say "Earlier today, you managed to make the trip through wind-swept mechanical boom by promising yourself that you would never do it again. Well, guess that assumption was wrong.[paragraph break]";
	bestow "Promises are made to be broken".
	
After going south from the Gearing Assembly:
	say "[One of]Once more into the cat, go you[or]Back to the cat[stopping]."

After going down from the Gearing Assembly:
	say "You [one of]climb slowly and carefully down the ladder, which descends through shaft just wide enough to accommodate one person[or]descend the ladder[stopping]."

The Top Of The Ladder is above Somewhere Along the Ladder. The description of Top Of The Ladder is "You can see light coming from above, the Gearing Assembly area."

After going down from the Top Of The Ladder:
	say "You descend further into the dark shaft."

Somewhere Along The Ladder is above the Bottom Rung. The description of Somewhere Along The Ladder is "It [if the player carries a lightsource]would be[otherwise]is[end if] pitch dark in here without some sort of light source[if the player carries a lightsource], although there really isn[apostrophe]t all that much to see here, many stories below the top of the shaft."

After going down from Somewhere Along The Ladder for the first time:
	say "There’s good news and bad news.[paragraph break]The good news: you have reached the bottom of the ladder.[paragraph break]The bad news: you don’t feel anything beneath you."

The Bottom Rung is above the Crawl Space. The description of Bottom Rung is "You are standing on the bottom rung of a narrow ladder that reaches up hundreds of feet almost the top of the Nyantech Tower. Below you, a bit of light shines up between the acoustic tiles in a hanging ceiling. It looks like an about a ten foot drop from the ladder to the ceiling beneath you."

[Crawl Space]

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

The acoustic tiles are scenery in the Crawl Space. The description of the acoustic tiles is "Sound-absorbing tiles are all that separate this crawl space from the LAN Closet below." Understand "dust" or "tile" as the acoustic tiles when the player is in the Crawl Space.

Instead of doing something other than examining with the acoustic tiles, say "Eww. They are covered it dust. You have no desire to muck about in such filth."  

Instead of doing something other than examining with the ladderProxy when the player is in the Crawl Space:
	say "You can[apostrophe]t reach it."
	
Instead of examining the ladderProxy when the player is in the Crawl Space:
	say "The bottom of a long, narrow ladder."
	
Instead of jumping when the player is in the Crawl Space:
	say "You jump off the equipment rack and land on the floor of the LAN closet.";
	move the player to the LAN Closet.
	
To finishFall:
	say " plunge through a false ceiling, which crashes down around you.[paragraph break]You find yourself in the cat control room.";
	if the penlight is in the Crawl Space and the player does not carry the penlight:
		move the penlight to the LAN Closet;
	move the player to the LAN Closet.
	
Instead of jumping when the player is in The Top of the Ladder or the player is in Somewhere Along The Ladder:
	say "You plummet through the building upside down, cheeks flapping against the metal shaft walls and occasionally catching a foot or hand on the ladder enough to flip you around the other way.[paragraph break]Finally, your fall is broken by your[run paragraph on]";
	finishFall.
	
Instead of jumping when the player is in Bottom Rung:
	say "You step bravely off the ladder and into the limitless abyss, which in this case is about ten feet of abyss, followed immediately by a[run paragraph on]";
	finishFall.
	
Instead of going down when the player is in the Bottom Rung:
	try jumping.
	
The penlight is a lightsource in the Crawl Space. The description of the penlight is "A black flashlight with a metal barrrel and protective rubber cover on the rear end[if the barrel is open], which hangs open[end if]." Understand "flashlight" or "torch" or "light" as the penlight. 

The rubber cover is part of the penlight. The description of the rubber cover is "The cover on the rear end of the penlight is [if the barrel is open]open, permitting a view into the hollow barrel[otherwise]closed[end if]." Understand "cap" as the rubber cover.

To say barrelDescription:
	say "The central part of the flashlight, which holds the batteries.";
	
The barrel is an closed openable container. The barrel is part of the penlight. The description of the barrel is "[barrelDescription]"

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
	
Instead of switching on the penlight:
	if the barrel is open:
		say "Nothing happens. Perhaps you need to close the cap?";
	otherwise:
		if the batteries are not in the barrel:
			say "Nothing happens. You notice that the flashlight feel too light.";
		otherwise:
			continue the action.
			
After switching on the penlight for the first time:
	bestow "Et lux facta est".

Instead of opening the barrel when penlight is switched on:
	say "As soon as you open the end cap, the light winks off.";
	now the penlight is switched off.

[Ground Floor]

The description of the Lobby is "A beehive of activity for both employees and visitors, the atmosphere in the luxurious lobby is somehow both corporate and relaxed. There is a constant drone of conversation in the background." The possible exits of the Lobby are "The [elevatorDoorDesc] and the security checkpoint is to the south, towards the street. The only other interesting doors here are the emergency stairs to the north and a metallic door to the east labeled [quotation mark]LAN Closet[quotation mark]." The lobby has a list of text called stage business.

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
"that he’s behind the project, but so far, no one has met”,
"how a wet-suit would relate to anything at all, but I guess”,
"absolutely amazing. I mean, I’ve had magret de canard before”,
"not just a conspiracy theory, but so far no one has penetrated”,
"instead of the elevator, which permits access to the”,
"has published on Glénard’s Disease, the vagaries of visceroptosis”,
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

The lobbyEmployees are privately-named plural-named scenery persons. The lobbyEmployees are in the lobby. The printed name of the lobbyEmployees is "employees". The description of the lobbyEmployees is "Employees hustle and bustle around the lobby on their motorized contrivances." Understand "workers" or "worker" or "employee" as the lobbyEmployees. 

The lobbyPlayers are privately-named plural-named scenery persons. The lobbyPlayers are in the lobby. The printed name of the lobbyPlayers is "visitors". The description of the lobbyPlayers is "Players mull about the lobby in awe." Understand "visitor" or "visitors" or "gamer" or "player" or "gamers" or "players" as the lobbyPlayers. 

The high-tech conveyances are scenery. The high-tech conveyances are in the Lobby. The description of the high-tech conveyances is "The employees jet around the lobby on segways and hoverboards." Understand "segway" or "segways" or "hoverboard" or "hoverboards" or "conveyance" as the high-tech conveyances.


Instead of doing something other than examining with high-tech conveyances:
	say "They are darting about too quickly to even get a good look at them."

Instead of going east from the Lobby when the walkman is not worn for the first time:
	 say "As you approach the LAN closet, you are filled with unbridled anxiety. You are vaguely aware of a low, rumbling sound, more felt than heard. It fills you with dread. The sound is inescapable. Your clothes feel too tight, your gait becomes unsteady, you wipe the sweat from your forehead. Something in the pit of your stomach is clawing at you; animal instinct wells up within you and you are seized by a sudden urge to flee. With as much composure as you can muster, you back away from the ominous door.[paragraph break]";
	bestow "Terrified of a LAN closet".
	
Instead of going east from the Lobby when the walkman is not worn:
	say "You try, but as you get closer, you are overcome with fear as a deep, bone-rattling sound overwhelms you."
	
After going east from the Lobby for the first time:
	say "With the walkman blaring away in your ears, the arguably melodious strains of Rick Astley drown out the sonic barrier around the LAN closet, and you are able to approach it."

The RevolvingDoor is inside of Nyantech Entrance. The RevolvingDoor is outside of the Security Checkpoint. The printed name of the RevolvingDoor is "Revolving Door". The description of the RevolvingDoor is "A revolving brass door." The description of the revolving door is "A brass revolving door w at the entrance to the Nyantech Tower." The possible exits of the revolvingDoor are "You can either go inside, into Nyantech Headquarters, or outside, back to the street[one of]. Your choice[or][stopping]."

Instead of going outside when the player is in the revolvingDoor:
	say "The helpful (and mildly passive-aggressive) unicorn gives the door an extra kick, and the door spins even further.";
	try going inside.

The Security Checkpoint is south of the Lobby. The description of the security checkpoint is "A cordoned off area that looks like it was hastily added to the lobby without a lot of forethought. The main feature of the security area is the metal detector and x-ray machine." Understand "area" as the Security Checkpoint.

The dryad is a person in the Security Checkpoint. The description of the dryad is a "A burly dryad in an ill-fitting uniform, who clearly would rather be frolicking in some forest clearing rather than doing shift work."

The stamp is in the void. The description of the stamp is "[quotation mark]Property of Nyantech[quotation mark]." Understand "hand" or "hands" as the stamp.

After examining the stamp for the first time:
	bestow "Sense of Belonging".
	
Instead of rubbing the stamp for the first time:
	say "[rubPhrase][paragraph break]";
	bestow "Don[apostrophe]t Label Me".
	
To say rubPhrase:
	say "Your [one of]circulation improves[or]hands feel warm[or]hands shine brilliantly[in random order] but the indelible ink is not affected."

After going inside from the revolvingDoor for the first time:
	say "You turn a corner to the security checkpoint as you enter the building.[paragraph break]For the thousandth time that day, a heavy-set dryad in a security uniform says, [quotation mark]People through the metal detector, items [italic type]including phones[roman type] through the x-ray.[quotation mark][paragraph break]Not wanting to create trouble, you put all your items on conveyor belt and step through the metal detector. You are relieved when the dryad hands you back your phone on the other side of the detector, but watch with concern as she plucks your other belongings one at a time off the belt and puts the in a big.[paragraph break][quotation mark]You’ll get it all back when you leave,[quotation mark] she says.[paragraph break]";
	if the player carries the salmon of turpitude:
		say "[quotation mark]Hold on... what have we here? Hmm, the fabled Salmon of Turpitude. Interesting. It gets its own bag.[quotation mark][paragraph break]";
	say "Finally, she locks the bag up in a locker, stamps your hand with some sort of ink, pins a badge on you, and boosts you towards the lobby.[paragraph break]";
	bestow "Bagged and Tagged";
	repeat with N running through the things carried by the player:
		move N to the void;
	now the player carries the phone;
	now the player wears the badge;
	now the stamp is part of the player;
	move the player to the lobby.
	
Instead of going south from the Lobby for the first time:
	say "You are stopped by the security nymph, who takes one look at your hand and says, [quotation mark]Sorry. Company property cannot leave the building.[quotation mark][paragraph break]";
	bestow "Bureaucracy Is Its Own Reward".
	
Instead of going south from the Lobby:
	say "The security nymph points to your property stamp and escorts you back to the lobby."
	 
The LAN Closet Door is a closed door. The LAN Closet Door is east of the Lobby. The description of the LAN Closet Door is "The [if the LAN Closet Door is open]open[otherwise]shut[end if] white door to the LAN closet[if the player is in the LAN Closet]. A large speaker is mounted on the back of the door[end if]." 

The LAN Closet is east of the Lan Closet Door. The description of the LAN Closet is "19-inch racks from floor to ceiling support stacks of networking hardware with blinking lights. Wires run upward from the racks and disappear above the [if the gearing assembly is visited]wrecked[end if] ceiling. To the right of the racks is a red metal panel labeled [quotation mark]CAT CONTROL[quotation mark], with a knob, some lights, and a numerical display." The possible exits of the LAN Closet is "The Lobby is immediately adjacent to the west." 

Definition: The speaker is active if isBrokenFlag of the phonograph is false and isOnFlag of the phonograph is true and the record is on the phonograph.

The record is a prop . The record is on the phonograph. The description of the record is "A 33⅓ rpm LP, [quotation mark]Visceral Fear Sounds, Volume One[if the speaker is active],[quotation mark] rotates on the phonograph.[otherwise].[quotation mark][end if]".

The phonograph is a victrola in the LAN Closet. The description of the phonograph is "The [if isBrokenFlag of the phonograph is true]broken [end if]phonograph seems to be set up to drive the huge speaker on the back of the door[if isBrokenFlag of the phonograph is false and isOnFlag of the phonograph is false]. The phono is switched off[end if][if isBrokenFlag of the phonograph is false and isOnFlag of the phonograph is true]. The phono's platter is revolving[end if]." Understand "phono" or "turntable"  or "platter" or "record player" or "recordplayer" as the phonograph. 

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
		move the player to the Lobby;
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
	say "You smash the offending vinyl disc into a million pieces and brush them away to hide the evidence[if the speaker is active] and feel immediately relief as the subsonic vibrations suddenly cease[end if].";
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
		
Instead of putting something (called the item) on the phonograph:
	if the item is not the record:
		say "You realize that putting [the item] on the phonograph wouldn[apostrophe]t make a lot of sense.";
	otherwise:
		if isBrokenFlag of the phonograph is false and isOnFlag of the phonograph is true:
			now the record is on the phonograph;
			follow the run from sound rule;
		otherwise:
			continue the action.
			
Instead of switching off the record:
	try switching off the phonograph.
	
Instead of switching on the record:
	try switching on the phonograph.

The speaker is part of the LAN Closet Door. The description of the speaker is "A heavy duty speaker, like the kind used on stage for rock concerts, with an oversized woofer. It is bolted directly to the door."

Instead of attacking the speaker:
	say "The speaker is built like a tank. You are likely to break before it does."

The racks are scenery Nyantechnology in the LAN Closet. The description of the racks is "Industry-standard 19-inch utility racks meant to support heavy equipment." Understand "rack" or "utility" as the racks.

The wires are scenery Nyantechnology in the LAN Closet. The description of the wires is "Thick bunches of twisted pair cable, trussed together." Understand "cat5" or "twisted pair" or "cable" or "cables" as the wires.

The hardware is scenery  Nyantechnology in the LAN Closet. The description of the hardware is "Looks mostly like network switches. Indicator lights on the front of the switches are blinking furiously -- a huge amount of data must be flowing through here." Understand "equipment" or "server" or "computer" or "hub" or "router" or "switch" or "switches" or "routers" or "hubs" or "computers" or "servers" or "device" or "devices" or "hardware" or "electronic" or "ethernet" or "network" as hardware.

The ceiling is scenery in the LAN Closet. The description of the ceiling is "Fiber panels with inset lighting." 

The lighting is part of the ceiling. The description of the lighting is "High efficiency industrial light panels set into the ceiling." Understand "light" or "panels" as the lighting.

Instead of attacking a Nyantechnology:
	say "[One of]You can[apostrophe]t believe you even had that thought. You[apostrophe]re at the very heart of Nyantech! The data in these cables is the lifeblood of Pogoman. You[apostrophe]d never do anything to harm the game. You lovingly pet the equipment[or]You can[apostrophe]t bring yourself to even consider harming Nyantech hardware[or]Shudder. No[stopping]."
	
Instead of climbing the racks:
	try going up.

Instead of going up from the LAN Closet for the first time:
	say "You scamper up the racks and hang onto the bundles of red CAT5 cable that runs upward. Pushing aside the ceiling tile, you stick your head up into a dark area above this room. It[apostrophe]s too dark to see much, but feeling around you spot a penlight.";
	continue the action.
	
The CAT Control is  a scenery katatron in the LAN Closet. The description of the CAT Control is "The panel is labeled [quotation mark]CAT Control[quotation mark] and has a picture of the Nyantech Cat at the center of eight red LEDs arranged in a circle. The LEDs are labeled according to their corresponding compass directions, N, NE, E, SE, S, SW, W, and SW. Currently the [entry 1 in HEADING] light is lit, but the LEDs light up and wink out in progression traveling clockwise. Below that arrangement is a large red plunger with the word [quotation mark]HOLD[quotation mark]. Below that plunger control is a numerical counter labeled [quotation mark]Psychic Energy Collected[quotation mark]. The numbers on the display are rolling upwards." Understand "panel" or "light" or "lights" as the CAT Control.



The numerical counter is part of the CAT Control. The description of the numerical counter is "The mechanical counter reads [PEC of the CAT Control]." Understand "display" as the numerical counter.

After examining the numerical counter:
	now the numerical counter is handled.
	[handled just reflects that it has been examined - a prequisite for the megaCat medal]

Instead of examining the numerical counter for the first time:
	now the PEC of the CAT Control is 69105;
	say "A mechanical counter, like a car[apostrophe]s odomoter, with white numbers on a black background. Very old school. You can respect that. The counter currently reads [PEC of the CAT Control]."
	
The plunger is part of the CAT Control. The description of the plunger is "A large red emergency cut-off switch with the word [quotation mark]HOLD[quotation mark] displayed prominently. It looks like it is in the [if onHoldFlag of the CAT Control is true]pulled-out[otherwise]pushed-in[end if] position." Understand "emergency" or "switch" or "cut-off" or "knob" as the plunger.

Instead of pulling the plunger:
	if onHoldFlag of the CAT Control is true:
		say "The plunger was already pulled out.";
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
		


[Basement]

The description of Legal Department is "The room is small and comfortable, with walnut paneling, green wainscot, and a dark grey rug. In the center of the room is a large mahogany desk and an ergonomic rolling black leather executive’s chair. A computer screen is embedded in the desktop."  The possible exits of the Legal Department are "To the north is the exit to the emergency stairs, the [elevatorDoorDesc], and to the south is a grey door marked [quotation mark]Beta Testing.[quotation mark]".

The Beta Testing Door is a closed locked door. The Beta Testing Door is south of Legal Department. Understand "grey" or "door" as the beta testing door. The description of the beta testing door is "[if the Beta Testing Door is open]An open[otherwise]A closed[end if] grey door marked [quotation mark]Beta Testing[quotation mark]."

The walnut paneling is scenery in the Legal Department. The description of the walnut paneling is "Not the cheap plywood kind, this is full thickness walnut."

The wainscot is scenery in the Legal Department. The description of the wainscot is "The dark green wainscoting around the base of the walls gives the room a finished look."

The grey rug is scenery in the Legal Department. The description of the grey rug is "The dark grey connotes professionalism."

The mahogany desk is a scenery supporter in the Legal Department. The description of the mahogany desk is "A heavy antique desk with inset display screen and one large drawer on the right side."

The drawer is an openable closed container. The drawer is part of the desk. The description of the drawer is "A sliding drawer, which is [if the drawer is open]open[otherwise]shut[end if]."

After opening the drawer:
	say "The draw slides out and reveals that it contains ";
	list the contents of the drawer, as a sentence;
	say "."

The computer screen is part of the desk. The description of the computer screen is "A computer screen that is set into the surface of the desk displays the following text:[paragraph break][if the Beta Testing Door is locked][fixed letter spacing]             Nyantech, Inc.[line break]             Legal Division[paragraph break]         Beta-Tester Agreement[paragraph break]  By touching [quotation mark]agree[quotation mark], the user agrees[line break]        to be held bound by all[line break]      provisions of this agreement[paragraph break]       TOUCH [quotation mark]AGREE[quotation mark] TO CONTINUE[paragraph break]TOUCH [quotation mark]TERMS[quotation mark] TO REVIEW TERMS OF AGREEMENT[roman type][otherwise][welcomeTester][end if]". Understand "display" as the computer screen.

agreeProxy is a privately-named scenery in Legal Department. The printed name of the agreeProxy is "AGREE". The description of the agreeProxy is "The word AGREE glows intensely on the screen." Understand "agree" as the agreeProxy.

To say noScreenResponse:
	say "The screen does not respond."

Instead of doing something other than examining or touching with the agreeProxy:
	say "[noScreenResponse]".
	
termsProxy is a privately-named scenery in Legal Department. The printed name of the termsProxy is "TERMS". The description of the termsProxy is "The word [quotation mark]TERMS[quotation mark] glows a bit dimmer than the word [quotation mark]AGREE[quotation mark] as if to convey its conviction that reading the terms won[apostrophe]t really do much for you, but would be something of an inconvenience for the computer."  Understand "terms" as the termsProxy.

Instead of doing something other than examining or touching with the termsProxy:
	say "[noScreenResponse]".
	
Instead of touching termsProxy:
	say "Text fills the screen and scrolls by a breakneck speed. Most of it looks like dense legal boilerplate but you catch a few phrases like [quotation mark][terms1][quotation mark] and [quotation mark][terms2][quotation mark][paragraph break]"
	
To say terms1:
	say "[one of]waiver of liability[or]agreement to hold harmless[or]notwithstanding previous claims to the so-called inalienable rights of man[or]lack of human subject protections[or]no warrantee of fitness of purpose[or]threats to personal safety and sanity[or]or however unpleasant they may be[or]unthinkable consequences[or]mere mortality[or]enslavement or imprisonment[or]organ atrophy or dysfunction[or]implosion or inversion[or]voids all provisions of the Declaration of Helsinki[or]hideous side-effects[or]unpredictable losses[or]whether self-inflicted or intentional[or]safe delivery of neither body or soul[or]hunting or being hunted[or]including but not limited to mutilation[or]nocturnal, tentacled, bat-winged monster dwelling[or]indemnity against corporal mental compulsion or control[or]all forms of torture both physical and mental[or]including supernatural events[or]no guarantee of restitution or redress[or]science must supercede those of the individual[or]perfidious propensity towards debasement and ruin[in random order]".
	
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

The plastic clock is a prop. The plastic clock is on the office wall. The description of the plastic clock is "[if the plastic clock is not on a supporter]The front of the clock is a clear plastic dome over an analog clock face with hour, minute, and second hands. On the back of the clock, there a panel[otherwise]A cheap plastic clock[end if][if fresh batteries are in the battery holder]. The clock ticks quietly[end if]." Understand "hour" or "minute" or "second" or "hand" as the plastic clock.

After taking the clock:
	if the clock was on the office wall:
		say "You remove the clock from the wall.";
	otherwise:
		continue the action.
	
After putting the clock on the wall:
	say "You place the clock back on the wall."

The fresh batteries are plural-named prop.  The fresh batteries are in the battery holder. The description of the fresh batteries is "Shiny new batteries."

After taking the fresh batteries for the first time:
	say "You pluck some AA batteries out of the clock."

The office wall is a scenery supporter in the Legal Department. The description of the office wall is "Rich wooden paneling above green wainscotting."

The ergonomic chair is a portable enterable scenery supporter in the Legal Department. The description of the ergonomic chair is "An executive desk chair built for comfort. The chair is solidly built and mounted on rolling casters." 

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

The remote is a prop in the drawer. The description of the remote is "It resembles a garage door remote: a brown box with a single white button. On the back, there is a small compartment[if the battery compartment is open], which is open[end if]." Understand "garage" or "opener" as the remote.

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

The button is part of the remote. The description of the button is "A white plastic button." Understand "white" or "plastic" as the button.

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
	
Instead of pushing the remote:
	try pushing the button.
	
Instead of opening or closing the Cousteau Door:
	say "There are no handles on the door, and it appears that the door is not designed to be operated manually."

The LED is a thing. The LED is part of the remote. The description of the LED is "A rectangular red indicator light, which is not illuminated." Understand "indicator" or "light" as the LED.

The Cousteau Door is a locked door. The Cousteau Door is south of Welcome to Beta Testing. Understand "grey" or "metal" or "retractable" or "retracting" or "garage" or "door" as the Cousteau Door. The description of the Cousteau door is "An electrically actuated garage door marked [quotation mark]Cousteau Room[quotation mark]. Currently, it is in the [if the Cousteau Door is open]raised[otherwise]lowered[end if] position." 

Welcome to Beta Testing is south of the Beta Testing Door.  The description of Welcome to Beta Testing is "The room is brightly lit and the walls are covered with inspirational posters." The possible exits of Welcome to Beta Testing are "To the north is the door to the Legal Department office and to the south is a wide [if the Cousteau Door is closed]metal door[otherwise]door way[end if] leading to the Cousteau Room."

The party hat is a wearable prop in Welcome to Beta Testing. The description of the party hat is "A brightly colored cardboard hat bearing the words [quotation mark]Yeah! Beta-Testing![quotation mark]."

The posters are a plural-named scenery in Welcome to Beta Testing. The description of posters is "The walls are covered with uplifting, motivational posters, mostly cats, puppies and unicorns, with slogans like [quotation mark]You can do it![quotation mark], [quotation mark]Success is just another word for unending work[quotation mark], and [quotation mark]If you fail, fail forward (but really, don[apostrophe]t fail).[quotation mark]"

Instead of examining the player when the player wears the hat:
	say "The hat adds a certain gravitas."

After wearing the hat for the first time:
	say "Wearing the hat, you feel instantly jovial and can[apostrophe]t help but break into a little spontaneous [if the player is wearing the wetsuit], but awkward,[end if] beta-testing dance.[paragraph break]";
	bestow "Team Spirit".
	
After wearing the hat:
	say "You pop the hat onto your head at what you think is a rakish angle."
	
Cousteau Room is south of the Cousteau Door. The description of the Cousteau Room is "The room is tiled, and filled with the sound of waves crashing into the shoreline. The walls are almost white at the top but range to a dark blue near the floor, which is a gritty stucco. Lights play on the ceiling, like reflected waves, and the overall effect evokes a deep-sea vibe."  The possible exits of the Cousteau Room are "The only exit from here is back through the wide door to the north."

The wetsuit is a wearable prop in the cousteau room. The description of the wetsuit is "A black neoprene wetsuit. The entire diving outfit is a [quotation mark]onesie[quotation mark] -- the suit, mask, fins and tanks are an integrated unit. It looks like you don the suit by stepping into it from the front and then zipping it up." Understand "suit" or "outfit" or "diving" as the wetsuit.

The flippers are part of the wetsuit. The description of the flippers is "Bright orange rubber flippers, which meet seamlessly with the lower part of the wetsuit legging." Understand "legging" as the flippers.

The mask is part of the wetsuit. The description of the mask is "A rubber face mask, which is built into the head piece of the wetsuit." Understand "head piece" or "neoprene" or "regulator" or "mouthpiece" or "hose" or "valve" or "belt" as the wetsuit.

The tanks are part of the wetsuit. The description of the tanks is "Two large airtanks built into the back of the wetsuit." Understand "strap" or "straps" as the tanks.

After wearing the wetsuit: 
	say "Despite the tight fit, the diving outfit pulls on snuggly over your clothing. You wriggle into the headpiece and adjust the mask. With a bit of twisting, you slip the flippers over your shoes, zip up the front of the suit, and adjust the air tank for comfort[if the player wears the party hat].[paragraph break]You had to take the party hat off to put the suit on, but you immediately put the strangely adherent hat back on and it bonds tightly with the neoprene headpiece[end if].";
	if the player had not worn the wetsuit:
		say line break;
		bestow "Aquanaut".
		
Instead of taking off the wetsuit:
	if the player is in the BallPit Area:
		if the player is in the Ball Pit:
			say "With some difficulty you float on the soft and shifting surface of the ball pit, while at the same time peeling out of the tight wetsuit, which you now hold on to.";
		otherwise:
			say "You struggle out of the wet suit, grab it, and shoot immediately to the surface of the ball pit for a breath.";
			move the player to the ball pit;
	otherwise:
		continue the action.
			
Instead of going a direction (called the way) when the player wears the wetsuit:
	if the player is in the Cafeteria and the way is east:
		say "You dive into the ball pit and swim around the surface effortless, propelled by your flippers.";
		move the player to the Ball Pit;
		the rule succeeds;
	if the player is in the BallPit Area:
		continue the action;
	otherwise:
		say "[one of]You waddle around in your flippers and fall flat on your face. Luckily, the face mask doesn’t break[or]You struggle and flail, but are not able to walk around wearing the whole undersea get-up[or]The wetsuit is just not made for walking around on land[stopping]."
		
Instead of taking off the wetsuit:
	say "You perform a small dance and manage to take off the suit and are now carrying it[if the player wears the party hat]. As for the stylish party hat, you consciensiouly replace it atop your head[end if].";
	now the player carries the wetsuit.
	
[Sub-Basement]

The description of the Rick Astley Shrine is "[one of]As soon as the blue door is opened, a voice congratulates you, [quotation mark]Welcome to Blue Level, Beta Tester. You have done well![quotation mark][paragraph break]This sort of praise from Nyantech goes right your primitive gamer hindbrain, which immediately releases a flood endorphins. You bathe in the warm glow of pleasure hormones until you suddenly realize that you are surrounded by 1980s Rick Astley memorabilia: posters, photos, autographs.[paragraph break]You shield your eyes to limit the horror[or]A room full of Rick Astley memorabilia[stopping]."  The possible exits of the Rick Astley Shrine are "Thankfully, the exit is to the north."

The rickity table is a fixed in place supporter in the Rick Astley Shrine. The description of the rickity table is "A cheap plastic table."

After putting anything on the rickity table, say "The table sags and creaks under the slightest load."

Instead of entering the the rickity table, say "Surely, that would be the end of the rickity table."

Memorabilia are plural-named scenery in the Rick Astley Shrine. The description of the memorabilia is "[one of]Too horrid to contemplate[or]You avert your eyes[or]Your sanity ebbs[or]You are not sure if you can bear any more[or]Mommy, make it stop[or]Closing your eyes helps[stopping]."  Understand "memorabilia" or "poster" or "posters" or "photo" or "photos" or "photograph" or "photographs" or "autograph" or "autographs" as the memorabilia.

The walkman is a wearable prop on the rickity table. The description of the walkman is "This is an original SONY walkman: a portable cassette tape player with earphones. The walkman contains a tape." Understand "sony" or "tape" or "player" or "earphone" or "earphones" as the walkman.

After going north from the Rick Astley Shrine for the first time:
	say "As you exit the Rick Astley Shrine, you wonder how you will manage to penetrate deeper into Nyantech. Getting this far was difficult -- you are curious about what comes next.[paragraph break]";
	bestow "Curiousity Killed The Cat".


Instead of listening to the walkman when the walkman is not worn:
	say "(first putting on the earphones)[command clarification break]";
	try wearing the walkman.

Before switching on the walkman:
	say "You have to wear the earphones to hear anything.";
	stop the action.
	
Before switching off the walkman:
	say "The walkman seems to be stuck in the [quotation mark]on[quotation mark] position and is looping continuously.";
	stop the action.
	
After wearing the walkman:
	say "You are immediately assaulted by the musical stylings of Rick Astley."
	
To say A Ghastly Astley Lyric:
	say "[one of]We[apostrophe]re no strangers to love[or]You know the rules and so do I[or]A full commitment[apostrophe]s what I[apostrophe]m thinking of[or]You wouldn[apostrophe]t get this from any other guy[or]I just wanna tell you how I[apostrophe]m feeling[or]Gotta make you understand[or]Never gonna give you up[or]Never gonna let you down[or]Never gonna run around and desert you[or]Never gonna make you cry[or]Never gonna say goodbye[or]Never gonna tell a lie and hurt you[or]We[apostrophe]ve known each other for so long[or]Your heart[apostrophe]s been aching, but[or]You[apostrophe]re too shy to say it[or]Inside, we both know what[apostrophe]s been going on[or]We know the game and we[apostrophe]re gonna play it[or]And if you ask me how I[apostrophe]m feeling[or]Don[apostrophe]t tell me you[apostrophe]re too blind to see[or](Ooh, give you up)[or]Never gonna give, never gonna give[or](Give you up)[in random order]".


section 2 - Ball Pit

The BallPit Area is a region. Ball Pit, BallPitShallow, BallPitDeep, and BallPitBottom are rooms in the BallPit Area.
	
Ball Pit is east of the Cafeteria. The description of Ball Pit is "You tread to keep your head above sea of colorful rubber balls."  The possible exits of Ball Pit are "The cafeteria is back to the west."

BallPitShallow is down from Ball Pit. The printed name of BallPitShallow is "In The Ball Pit, Just Under The Surface". The description of BallPitShallow is "Swimming through brightly colored rubber balls."

BallPitDeep is down from BallPitShallow. The printed name of BallPitDeep is "Deep In The Ball Pit". The description of BallPitDeep is "Far enough down in the ball pit that only dim rainbow-colored light filters down."

BallPitBottom is down from BallPitDeep. The printed name of BallPitBottom is "The Bottom Of The Ball Pit". "The dark depths of the ball pit."

After going east from the Cafeteria for the first time:
	say "As you step over the threshold, you fall immediately into a giant pit filled with small rubber balls of every color. You panic as you sink into the pit and your uncoordinated thrashing just buries you deeper. You pass several other pit explorers and take an elbow to the jaw before you catch on to the trick of swimming through the balls. Eventually you make it to the top and hang on to the edge of the pit.[paragraph break]";
	bestow "Staying Afloat In A Sea of Chaos".
	
After going east from the Cafeteria:
	say "You are adrift in a pit, filled with small rubber balls."
	
The ballObject is a privately-named backdrop in the BallPit Area. The printed name of ballObject is "ball". The description of the ballObject is "Glossy, supple, and slippery balls of every color." Understand "ball" or "balls" as the ballObject.

Before taking ballObject:
	say "The more you tighten your grip, the more balls slip through your fingers." instead. [Unless the ball is Alderaan, in which case it is bad news for that particular ball.]
	
Before going down from the ball pit:
	if the player wears the wetsuit:
		continue the action;
	otherwise:
		say "[one of]You dive down and push through the mass of balls with a familiar swimming motion. As you get deeper, you begin to have difficulty getting a breath and take a last gulp of air. You plunge downward kicking now to gain depth.[paragraph break]The deeper you go, the more the multicolored light fades. You reach out a hand to blindly probe the depths, and as your lungs begin to ache, you make a final attempt to reach bottom.[paragraph break]You hold out as long as you can, but never reach the bottom. Your lungs now burning, you shoot back to the surface, and arrive gasping for air[or]You swim down as far as you can, but get no further than before. You return to the surface breathless[stopping]."
		
Instead of going down from the Ball Pit for the first time:
	say "You adjust your mask, put the regulator in your mouth, and flip forward. Your flippers hang in the air above you for a moment and then slip under the surface. As you dive deeper, you hear something in the distance, far below you.[paragraph break]";
	bestow "Got that sinking feeling";
	move the player to the room down from the location.
	
Instead of going down from the BallPitShallow for the first time:
	say "At this depth, the weight of the balls above you is noticeable, but not uncomfortable. The light filtering down through the rubber balls is muted, but another pale, blue light shines upward from below. In the distance, low bass notes resonate.[paragraph break]";
	bestow "In Over Your Head";
	move the player to the room down from the location.
	
Instead of going down from the BallPitDeep for the first time:
	say "You swim with difficulty through the viscous sea of rubber balls, which at this depth are nearly flat. Finally, you arrive at the bottom of the pit, where you come face to face with a robotic blue whale. Your organs quiver with each resounding note of its deep, lamenting song.[paragraph break]";
	bestow "Admiral, there be whales here!";
	say "You and the whale just hover there for a moment communing with each other. The whale blinks and its eyes shine with a bright blue light.[paragraph break]A moment later, you find yourself standing in the cafeteria, not quite sure of what just happened and wondering if you imagined it. The diving suit is gone, but… what’s this? Your badge has turned blue with a white bar.";
	now the securityColor of the badge is blue;
	move the wetsuit to the void;
	move the player to the cafeteria.

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

Section 3 - Stairwell

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
		
The groundDoor is a white door. It is north of the Lobby and south of the StairsGround.  The printed name of the groundDoor is "white [shortDoorToThe] [if the location is the lobby][shortEmergencyStairs][otherwise]lobby[end if]". Understand "white" or "door" or "lobby" or "emergency" or "stairs" as the groundDoor.

After going north from the lobby for the first time:
	bestow "Snooping Around".

The printed name of the StairsGround is "Emergency Stairs: Ground Level". The possible exits of the StairsGround is "To the south there is a white door labeled [quotation mark]Lobby[quotation mark]."

The basementDoor is a green door. It is north of Legal Department and south of the StairsBasement. The printed name of the basementDoor is "green [shortDoorToThe] [if the location is Legal Department][shortEmergencyStairs][otherwise]Legal Department[end if]". Understand "green" or "door" or "legal" or "emergency" or "stairs" or "basement" as the basementDoor.

The StairsBasement is below StairsGround. The printed name of StairsBasement is "Emergency Stairs: Basement Level". The possible exits of StairsBasement is "To the south there is a green door labeled [quotation mark]Legal Department[quotation mark]."

The StairsSB is below StairsBasement. The printed name of StairsSB is "Emergency Stairs: Sub-Basement Level". The possible exits of StairsSB is "To the south there is a blue door with no label."

The subBasementDoor is a blue door. It is north of the Rick Astley Shrine and south of the StairsSB.  The printed name of the subBasementDoor is "[printedSubBasementDoor]". Understand "blue" or "door" or "rick" or "astley" or "shrine" or "emergency" or "stairs" or "subbasement" as the basementDoor.

To say printedSubBasementDoor:
	say "blue [shortDoorToThe] ";
	if the location is the Rick Astley Shrine:
		say shortEmergencyStairs;
	otherwise:
		if the Rick Astley Shrine is visited:
			say "Rick Astley Shrine";
		otherwise:
			say "blue corridor"
	
The StairsSSB is below StairsSB. The printed name of StairsSSB is "Emergency Stairs: Sub-Sub-Basement Level". The possible exits of StairsSSB is "To the south there is a red door with no label."

The subSubBasementDoor is a red door. It is north of the Make Over Suite and south of the StairsSSB.

The printed name of the subSubbasementDoor is "red [shortDoorToThe] [if the location is Make Over Suite][shortEmergencyStairs][otherwise]red corridor[end if]". Understand "red" or "door" or "legal" or "emergency" or "stairs" or "basement" or "subsubbasement" as the subSubBasementDoor.

The internsDoor is a black door. It is south of the StairsInterns. The printed name of the internsDoor is "black [shortDoorToThe] intern offices". Understand "black" or "door" or "intern" or "interns" or "emergency" or "stairs" as the internsDoor.

The StairsInterns is above StairsGround. The printed name of StairsInterns is "Emergency Stairs: Level 1". The possible exits of StairsInterns is "To the south there is a black door labeled [quotation mark]Interns[quotation mark]."

The engineersDoor is a black door. It is south of the StairsEngineers. The printed name of the engineersDoor is "black [shortDoorToThe] engineering offices". Understand "black" or "door" or "engineer" or "engineers" or "emergency" or "stairs" as the engineersDoor

The StairsEngineers is above StairsInterns. The printed name of StairsEngineers is "Emergency Stairs: Level 2". The possible exits of StairsEngineers are "To the south there is a black door labeled [quotation mark]Engineers[quotation mark]."

The managersDoor is a black door. It is south of the StairsManagers. The printed name of the managersDoor is "black [shortDoorToThe] managerial offices". Understand "black" or "door" or "manager" or "managers" or "emergency" or "stairs" as the managersDoor

The StairsManagers is above StairsEngineers. The printed name of StairsManagers is "Emergency Stairs: Level 3". The possible exits of StairsManagers is "To the south there is a black door labeled [quotation mark]Managers[quotation mark]."

The StairsInfirmary is above StairsManagers. The printed name of StairsInfirmary is "Emergency Stairs: Level 4". The possible exits of StairsInfirmary is "To the south there is a pink door labeled [quotation mark]Infirmary[quotation mark]."

The infirmaryDoor is a pink door. It is south of the StairsInfirmary. The printed name of the infirmaryDoor is "pink [shortDoorToThe] infirmary". Understand "pink" or "door" or "infirmary" or "emergency" or "stairs" as the infirmaryDoor

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
	
After going up from the StairsPackaging:
	say "You climb [shortTwentyFlights] to the roof level";
	if the walkman is not worn:
		say ". [one of]A droning sound fills the air, like the throat-singing of Tibetan monks[or]It sounds like something is scraping against the inner wall[or]You footfalls echo in the empty stairwell[stopping]";
	say "."
		
After going down from the StairsRoof:
	 say "You descend [shortTwentyFlights] [shortNoExits] and you";
	if the walkman is not worn:
		say "[one of]hear the rumble of heavy motors straining against a load[or]think for a moment that you hear someone yelling for help -- but then it is gone[or]notice a repetitive thumping sound coming from the walls[stopping]";
	say "."
	
After going down from the StairsPackaging:
	say "You descend [shortTwentyFlights] to the infirmary level";
	if the walkman is not worn:
		say ". [one of]Did you just hear someone yell the word, [quotation mark]professor[quotation mark]. Probably not. Best to keep going[or]From somewher in the building, you hear the tinkle of breaking glass[or]Thunder rumbles in the distance. But wait, the weather was fine, wasn[apostrophe]t it? Must have been something else[or]You hear something slowly dripping nearby[stopping]";
	say "."
	
The StairsPackaging is above StairsProcessing. The printed name of StairsPackaging is "Emergency Stairs: Way The Hell Above Level 4". 

Instead of going a direction (called the way) when the player is in the StairsPackaging or the player is in the StairsProcessing:
	if the way is south:
		say "You can[apostrophe]t go that way because there is no door there -- just solid wall.";
	otherwise:
		continue the action.

The StairsRoof is above StairsPackaging. The printed name of StairsRoof is "Emergency Stairs: Roof Access". The possible exits of StairsRoof is "To the south there is a white door labeled [quotation mark]Roof Access[quotation mark]."

The roofDoor is a white door. It is south of StairsRoof and north of DeckN. The printed name of roofDoor is "[printedRoofDoor]". Understand "white" or "door" or "roof" or "access" or "observation" or "deck" or "cafeteria" or "cafe" or "emergency" or "stairs" as the roofDoor

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
	bestow "Made it to the top".          
	
Processing is a room.

Packaging is a room. 

Interns is a room. 

To say fromElevator:
	say "Looking out from the elevator, you can see ".

[TODO Example floor description for the three employee levels]
internsProxy are a workerProxy. internsProxy are in the void. The description of a internsProxy is "[fromElevator][entry 1 of the WPLIST of internsProxy]." Understand "intern" or "interns" or "employee" or "employees" or "worker" or "workers" as the internsProxy. The WPLIST of internsProxy is {"a roiling mass of interns playing three-dimensional twister to the accompaniment of a driving disco beat", "interns running around in leotards and dancing in a stream of bubbles"}. The printed name of the internsProxy is "interns".

Engineers is a room. 

engineersProxy are a workerProxy. engineersProxy are in the void. The description of a engineersProxy is "[fromElevator][entry 1 of the WPLIST of engineersProxy]." Understand "engineer" or "engineers" or "employee" or "employees" or "worker" or "workers" as the engineersProxy. The WPLIST of engineersProxy is  {"row after row of casually dressed employees behind standing desks. Each has their hands straight out, palm pressed up against a pair of large flat screen monitors acrawl with psychodelic patterns and text", "bolts of lightning richocheting around the floor, while the engineers hide under their desks"}. The printed name of the engineersProxy is "engineers".

Managers is a room.

managersProxy are a workerProxy. managersProxy are in the void. The description of a managersProxy is "[fromElevator][entry 1 of the WPLIST of managersProxy]." Understand "manager" or "managers" or "employee" or "employees" or "worker" or "workers" as the managersProxy. The WPLIST of managersProxy is  {"the managers processing in circles with lit candles", "shadowy figures serving hors d'oeuvres to the managers, who are dressed as french maids"}. The printed name of the managersProxy is "managers".

Instead of doing something other than examining with a workerProxy:
	say "You would have to exit the elevator here to do that."

Section 4 - Deck


The Deck Area is a region. DeckN, DeckE, DeckS, and DeckW are deck rooms in the Deck Area. The Deck Area is in HQ.

The railing is a backdrop in the Deck Area. Understand "rail" as the railing when the player is in the Deck Area. The description of the railing is "A waist-high metal railing that runs around the observation deck, preventing accidental falls."

The chain is a chainItem in DeckS. Understand "chain" or "clip" as the chain. The description of the chain is "A chain terminating in a large spring-loaded clip that [if the chain is clipped]attaches to[otherwise]hangs free from[end if] the railing."

The printed name of DeckN is "Observation Deck, Northern View".  

DeckW is southwest of DeckN. The printed name of DeckW is "Observation Deck, Western View". 

DeckS is southeast of DeckW. The printed name of DeckS is "Observation Deck, Southern View". 

DeckE is northeast of DeckS and southeast of DeckN. The printed name of DeckE is "Observation Deck, Eastern View".

To say heightDescription:
	let L be a list of quadrooms;
	let M be a list of text;
	let T be text;
	if the location is:
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
	say "[if onHoldFlag of the CAT Control is false]At precisely one minute intervals, the giant Nyantech Cat flies by, just below the level of the observation deck, and continues to circle the building[otherwise]The Nyantech Cat, suspended by its support boom from the side of the building, remains stationary directly below you [end if]. Behind you, through floor to ceiling windows, you can see folks eating and drinking in the roof-top restaurant"
	
To say deckExits:	
	say "The deck continues around to the ";
	let O be a list of directions;
	repeat with way running through directions:
		let place be the room way from the location;
		if place is a room in the deck area, add the way to O;
	say "[the O]";
	if the location is:
		-- deckN:
			say ". The door to the emergency stairs is to the south";
		-- deckS: 
			say ". The roof-top restaurant is to the north".

[When the player is at height, these remote locations -- and everything in them -- are in scope, so if the player sees the a room title or just knows that something is located there, the player can try to see it. Most actions at that distance are blocked.]

After deciding the scope of a player while the player is in the Deck Area:
	let L be a list of quadrooms;
	if the location of the player is:
		-- DeckN: let L be the list of nord quadrooms;
		-- DeckS: let L be the list of sud quadrooms;
		-- DeckE: let L be the list of est quadrooms;
		-- DeckW: let L be the list of ouest quadrooms;
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
			otherwise:
				say "The things you do for this game… You hold on tightly to your phone and step over the edge.[paragraph break]Arms and legs flailing, you fall without the slightest hint of dignity. Your screams are carried away by the stiff breeze.  Despite any skill whatsoever at jumping off buildings, you land squarely in the center of the cat[apostrophe]s red beret, which is just as warm and fluffy as it looks.";
				move the player to the Cat's Beret;
	otherwise:
		say cantJump
		
Instead of climbing the railing when the player is in the deck area:
	say cantJump.	
	
Instead of going down from deckS:
	try jumping.

Section 5 - Cat


The Cat Area is a region. The Cat's Beret, Maintenance Hatch, Captain's Cabin, CatHead, Catwalk, Gantry Chamber, and Poop Deck are rooms in the Cat Area. The Cat Area is in HQ.


Section 6 - Cat Navigation

[Based on Recipe 42: Example Fore]

A direction can be nautical, earthbound, or QTHagnostic. A direction is usually earthbound. 

Starboard, port, fore, aft are nautical.

Up, down, inside, and outside are QTHagnostic.

The starboard is a direction. The starboard has opposite port. 

The port is a direction. The port has opposite starboard. 

The fore is a direction. The fore has opposite aft. Understand "f" or "forward" or "foreward" as fore when the location is in the Cat Area. 

The aft is a direction. The aft has opposite fore. Understand "a" or "aftward" or "abaft" or "backwards" or "back" as aft when the location is in the Cat Area.

Does the player mean going a nautical direction when the location is in the Cat Area: it is very likely.

Index map with fore mapped as east. Index map with aft mapped as west. Index map with port mapped as south. Index map with starboard mapped as north.

Before going a nautical direction when the player is not in the Cat Area, say "[One of]Okay, matey. Could you rephrase that for us landlubbers?[or]Those directions only make sense on a vessel of some sort.[or]So, that's what? North? South? Throw me a bone.[or]Compass directions please, unless you're in a vessel.[stopping]" instead.

Before going an earthbound direction when the player is in the Cat Area, say "Compass directions make no sense  when we're talking about a giant mechanical cat that rotates around an office building -- granted, not much would make sense in that context. In any event, try going fore (f) or aft (a) instead." instead.

To say noLateral:
	say "Aye, matey, [one of]plus one on seamanship skills[or]you[apostrophe]ve got the nautical lingo down[or]you make an old sailor proud[or]that[apostrophe]s the style[in random order], but there's nowhere to go right now in that direction, eh?"
	
Instead of going starboard, say noLateral.

Instead of going port, say noLateral.

Section 7 - Cat OverheadProxies
[Backgrounds visible from above, e.g., from the Deck or upper parts of the cat exterior. If the cat is rotating around the building, assume it's visible from any deck position. However, if it's stopped, it is visible +/- 45 degrees]

To decide whether the cat is visible from overhead:
	if onHoldFlag of the CAT Control is false, yes;
	if the player is in DeckS and entry 1 in HEADING is listed in {"SE", "S", "SW"}, yes;
	if the player is in DeckN and entry 1 in HEADING is listed in {"NW", "N", "NE"}, yes;
	if the player is in DeckW and entry 1 in HEADING is listed in {"SW", "W", "NW"}, yes;
	if the player is in DeckE and entry 1 in HEADING is listed in {"NE", "E", "SE"}, yes;
	decide no.
	
To say invisibleOverhead:
	say "You can[apostrophe]t get a good look at the cat from your current position -- one of you has got to move."
	
To visualize (overheadDescription - some text):
	if player is in the Deck Area:
		if the cat is visible from overhead:
			say "[overheadDescription]";
		otherwise: 
			say "[invisibleOverhead]";
	otherwise:
		say "[overheadDescription]".
	
[in deference to the Cat in the Hat song, despite its mangling of the Russian. I can't vouch for the authenticity of the Eskimo] 
The catProxyOverhead is a catTopDrop. The catProxyOverhead is in Cat's Beret, Maintenance Hatch, CatWalk, Poop Deck, and Deck Area. The printed name of the catProxyOverhead is "Nyantech Cat". Understand "cat" or "gato" or "katze" or "gwunka" or "nyantech" or "kot" or "koshka" or "kat" or "animatronic" or "ship" or  "vessel" as the catProxyOverhead. The description of the catProxyOverhead is "[describeCatPO]".

To say describeCatPO:
	visualize "As the giant Nyantech Cat circles past your vantage point, you are able to pick out more details than you could from the ground. The Cat is suspended from a heavy metal boom, like the cross member of a construction crane. The boom sweeps around the building about once a minute and must be immensely strong to support the weight of the cat, a metal structure about forty feet long and ten feet wide.[paragraph break]As depicted in all of Nyantech[apostrophe]s online material, the cat wears its trademark red beret, which at this close range looks more like an immense bean bag. There’s an access hatch just above the boom, presumably for maintenance. The cat[apostrophe]s glowing red eyes must be five feet diameter, and although you are twenty feet above them, you can feel the heat evolving off them. A trail of sparking and popping glitter behind the cat seems to come out of a port near its tail."
	
Instead of examining the catProxyOverhead when the player is in a cat-top room:
	say "You are standing on top of it."
	
The eyesProxyOverhead is a catTopDrop. The eyesProxyOverhead is in the Deck Area. The printed name of the eyesProxyOverhead is "eyes". Understand "red" or "glowing" or "eye" or "eyes" as the eyesProxyOverhead. The description of the eyesProxyOverhead is "[describeEyesPO]".

To say describeEyesPO:
	visualize "The cat's deep red eyes seem to glow as they search the landscape."

The beretProxyOverhead is a catTopDrop. The beretProxyOverhead is in the Maintenance Hatch, Catwalk, Poop Deck and Deck Area. The printed name of the beretProxyOverhead is "beret". Understand "red" or "beret" or "hat" or "chapeau" or "hut" or "sombrero" or "bunka-kwunk" or "shapka" or "shlyapa" or "hoed" or "bean" or "bag" or "cushion" as the beretProxyOverhead. The description of the beretProxyOverhead is "[describeBeretPO]".

To say describeBeretPO:
	visualize "[beretText]."
	
To say beretText:
	say "From the ground, the fabric in the cat's beret looks like a felt, but from up here it looks more like heavy canvas. It bellows slightly in the wind and looks like it is filled with something soft like foam rubber"
	
The hatchProxyOverhead is a catTopDrop. The hatchProxyOverhead is in the Cat's Beret, Poop Deck, Catwalk, and Deck Area. The printed name of the hatchProxyOverhead is "hatch". Understand "hatch" or "access" or "hatchway" or "bulkhead" or "maintenance" or "neck" as the hatchProxyOverhead. The description of the hatchProxyOverhead is "[describeHatchPO]".

To say describeHatchPO:
	visualize "[hatchText]."
	
To say hatchText:
	say  "The hatch resembles a bulkhead hatch on a submarine: a heavy door that would pull upwards. It is painted yellow, like the body of the cat, except its metal handle, which is chrome. The hatch is [if the hatchway is open]open[otherwise]sealed[end if]"

The catWalkProxyOverhead is a catTopDrop. The catWalkProxyOverhead is in Cat's Beret, Maintenance Hatch, and Poop Deck. The catWalkProxyOverhead is in the Deck Area. The printed name of catWalkProxyOverhead is "scaffold". Understand "scaffold" or "catwalk" or "poptart" as the catWalkProxyOverhead. The description of the catWalkProxyOverhead is "[describeCatwalkPO]".

To say describeCatwalkPO:
	visualize "[catWalkText]."
	
To say catWalkText:
	say "A narrow metal scaffold with a low railing -- a catwalk if you will -- runs along the spine of the cat. It [if the location is not the Catwalk]looks like it would be[otherwise]is[end if] wide enough to walk on comfortably if you ignore a more or less certain drop to certain death to either side.[paragraph break]From up here, you can tell that the giant pop-tarts on the exterior side of the cat is actually made of hundreds of thousands of actual pop-tarts overlapped like roofing shingles. Quite a bit below the scaffold on the side of the cat facing the building, a lattice-work boom extends from the building to support the cat about fifty stories above the ground"
	
The boomProxyOverhead is a catTopDrop. The boomProxyOverhead is in Cat's Beret, Maintenance Hatch, Catwalk, Poop Deck, and Deck Area. The printed name of boomProxyOverhead is "support boom". Understand "boom" or "support" or "arm" or "crane" or "gantry" or "grue" as the boomProxyOverhead. The description of the boomProxyOverhead is "[describeBoomPO]".

To say describeBoomPO:
	visualize "A heavy metal boom extends from the building to the cat and supports its as the cat rotates around the building. The boom is rectangular in cross-section, with side walls composed of metal tubing. The center of the boom is hollow the bottom is solid, so it looks like the boom may serve as maintenance access to the cat."

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

Section 8 - Cat Layout

Definition: A room is cat-top if it is the Cat's Beret or it is the Maintenance Hatch or it is The Catwalk or it is the Poop Deck.

After deciding the scope of the player while the player is in a cat-top room:
	repeat with R running through the list of sud quadrooms:
		place R in scope.

The Cat's Beret is down from DeckS.  The description of the Cat's Beret is "From your snug but sure position atop the Nyantech Cat’s head, you can see all the way the Infamous Tarpits on the south edge of town." 

The possible exits of the Cat's Beret are "The only way to go from here [one of](the only sane way to go, discounting a suicidal fall) [or][stopping]is towards the rear of the cat. The maintenance hatch is just aft of the beret, at the nape of the cat[apostrophe]s neck. Behind that, there is a narrow scaffold over the pop-tart section of the cat. The scaffold runs above the support boom that extends outward from the building. Finally, at the very rear of the cat, sparkles shoot from a short, metal exhaust tube."

Instead of going up from the Cat's Beret:
	say "The observation deck is way above you -- too far to reach, even by jumping[one of], although you are welcome to try[or][stopping]."

Maintenance Hatch is aft of the Cat's Beret. The description of the maintenance hatch is "[hatchText]." The possible exits of the Maintenance Hatch are "You can go forward towards the cat's red beret, aft towards its tail, or go below decks through the hatch."

The hatchway is a door. It is down from the Maintenance Hatch. The description of the hatchway is "[hatchText]." The hatchway is closed. Understand "hatch" or "bulkhead" as the hatchway.

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

Catwalk is aft of the Maintenance Hatch. The description of the Catwalk is "[catWalkText]." The possible exits of the catwalk are "You choices about ways to go from here are pretty dichotomous: towards the cat[apostrophe]s head or towards its butt."

Instead of going down when the player is in the Catwalk:
	say "[one of]Going down isn’t really an option. On the side of the cat facing towards the building, the smooth metal skin slopes towards the support boom, but between the wind and slight swaying of the cat hundreds of feet above the pavement, you don’t like the odds of landing on the boom versus plunging over the side. As for the pop-tart side of the cat, there would be nothing to grab onto, aside from a tasty snack on your way to the pavement[or]No, too dangerous[stopping]."
	
The pop-tart shingles are a  plural-named backdrop in catWalk. The description of pop-tart shingles is "Pop-tarts as an actual construction material. Genius." Understand "shingle" or "pop-tarts" or "poptart" or "poptarts" or "giant" as the pop-tart shingles.

Instead of taking the pop-tart shingles for the first time:
	say "You stretch as far as you can, but you arms just aren[apostrophe]t long enough.[paragraph break]";
	bestow "Sadly Denied Weathered Pop-Tarts".
	
Instead of eating the pop-tart shingles for the first time:
	say "Just what do you imagine those pop-tarts would taste like after years of exposure to the elements... not to mention pigeons?[paragraph break]";
	bestow "Wow. Just wow."

Instead of doing something other than examining with the pop-tart shingles, say "They are tantalizingly out of reach."

Poop Deck is aft of The Catwalk. The description of the Poop Deck is "[poopText]." The possible exits of the Poop Deck are "There[apostrophe]s no way to go but forward, away from the cat[apostrophe]s flaming rear end."

The tin pipe is scenery in Poop Deck. The description of the pipe is "An small metal exhaust tin pipe extends a few inches from the rear of the cat."

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
	
The Captain's Cabin is down from the hatchway. The description of the Captain's Cabin is 
"Inside the cat, the room immediately under the hatch is strangely nautical in decor. A small porthole casts some light on a compact wooden writing desk, which is set into the curvature of the wall. Behind the desk, fixed rigidly to the plate metal deck is a chair with the word [quotation mark]Captain[quotation mark] across the back.  On the other side of the cabin, a hammock hangs from the wall."  The possible exits of the Captain's Cabin are "[if the cockpit door is open]Diffuse red light pours out of a narrow doorway between this cabin and the forward-most section of the cat. [end if]A door marked [quotation mark]gangway[quotation mark] leads towards the rear of the cat. The only other exits from here are upwards, through the hatchway, and forward to the cockpit[one of], or more colloquially, the head of the cat[or][stopping]." 

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
	bestow "You have the conn."
	
The driftwood desk is a supporter in the Captain's Cabin. The description of the driftwood desk is "A small but functional desk made of smooth driftwood."

Instead of entering the desk:
	say "That[apostrophe]s contrary to nautical tradition."

The writing quill is a prop on the driftwood desk. The description of the writing quill is "Looks like a tail feather from a vulture, but it is a modern ballpoint pen."

The logbook is a prop on the driftwood desk. The description of the logbook is "The front of the book is labeled [quotation mark]NyanCat Captain’s Log[quotation mark] and is full of entries."

The entries are part of the logbook. The description of the entries is "You flip through the logbook and read an entry at random:  TODO entries".

Instead of doing something other than examining with the entries:
	say "Do you mean to do that with the logbook?";

[TODO: implement write verb to write in the logbook]
 
The hurricane lantern is a lightsource on the desk. Understand "lamp" as the hurricane lantern. 

After switching on the lantern for the first time:
	say "The lantern lights immediately and shines brilliantly. Apparently, high efficiency LEDs have taken the place of the old wick mechanism."

After taking the lantern for the first time:
	bestow "Adventurer: First Class".

The hammock is a fixed in place thing in the Captain's Cabin. The description of the hammock is "A ratty old string hammock."

Understand "climb into [something]" as entering.

Instead of entering the hammock for the first time:
	say "You clamber into the hammock, which looked more comfortable than it actually is and stand up again before it gets too painful.[paragraph break]";
	bestow "Gilligan Is Used To Disappointment".
	
Instead of entering the hammock:
	say "You flip around a few times and end up on the floor of the cabin."
	
Instead of putting something (called the item) on the hammock:
	say "[The item] falls through the shoddy knotwork and you grab it before it hits the floor."
	
The gangway is a closed door. It is aft from the Captain's Cabin. The description of the gangway is "This door has a weather seal because the next section abaft is open to the elements."

Gantry Chamber is aft from the gangway. The description of the Gantry Chamber is "This chamber is open only on the side of the cat facing the building, where the cat joins with a twenty-foot long crawlway in the middle of the boom that supports the cat. The tubular metal structure runs towards a gap in the building[apostrophe]s stonework and disappears at the far end into darkness."  The possible exits of Gantry Chamber are "From here, you can go outside towards the building (i.e., through the metal support boom) or forward towards the captain’s cabin."

Every turn when the player is in the Gantry Chamber:
	if a random chance of 1 in 5 succeeds:
		say "[one of]The boom sways in the wind[or]The wind howls by[or]Groaning metal sounds come from the direction of the boom[or]The support assembly creaks[or]The sounds of the city drift up from far below you[in random order]."
		
After going outside from the Gantry Chamber for the first time:
	say "You carefully crawl on all fours through the long boom, avoiding glances downward. Sure, it would be a great view of the city, but with the wind whipping through the metal webbing of the tube and the whole thing oscillating wildly, you move as quickly as you can to the other end. At last, you enter a room full of huge motors and gears.[paragraph break]";
	bestow "Don[apostrophe]t Look Down!".
	
After going outside from the Gantry Chamber:
	say "You make a beeline for the Gearing Assembly chamber at the other end."
	
A door called the cockpit door is fore from the Captain's Cabin. The description of the cockpit door is "A metal door with the word [quotation mark]cockpit[quotation mark] on it." 

CatHead is fore from the cockpit door. CatHead is privately-named. The printed name of CatHead is "interior of the Cat's Head". The title of CatHead is "Inside The Cat's Head". The description of CatHead is "Through the translucent glowing red eyes of the cat, each of which reaches from floor to ceiling in this compact chamber, you see the shimmering cityscape below. A fist-sized ruby floats in the air between them and spins slowly, irradiated by cones of red energy focused inward by the eyes." The possible exits of the CatHead are "The only way back is aft, towards the rest of the cat."

After going fore from the Gantry Chamber for the first time:
	say "Bathed in the glow of the fabulous jewel, your card turns red, with a white stripe (well, a pink stripe given the lighting, but based on how things have gone today, you’re guessing that it’s actually white).";
	now the securityColor of the badge is white;
	bestow "Cat Power!"
	
The magnificent floating ruby is a prop in CatHead. The description of the magnificent floating ruby is "The blood-red stone is as large as your head, but you can barely look at it through the brilliant reflections off its many facets." Understand "facets" as the magnificent floating ruby. 

Instead of taking the magnificent floating ruby  for the first time:
	say "As your hand approaches the jewel, it feels like ants are crawling over your hand and forearm. The air around your hand starts to scintillate and the smell of hamburger fills the room. Drawing still closer to the precious jewel, in the bright light you can see only the bones of your hand as if the skin has become transparent.[paragraph break]That’s enough for you to decide against messing with the ruby.[paragraph break]";
	bestow "Holy Kryptonite, Batman!"
	
Instead of taking the magnificent floating ruby  for the second time:
	say "No way are you going to try to grab that glowing nugget of plutonium or whatever the hell it is.[paragraph break]";
	Bestow "Plutonium Adverse".
	
Instead of taking the magnificent floating ruby for the third time:
	say "Not a chance. It[apostrophe]s surely worth a fortune. But will it help you catch pogomen? Nope.[paragraph break]On the other hand, you sure do seem to be racking up a bunch of points from messing around with it.[paragraph break]";
	Bestow "Radiation Exposure Equals XP".
	
Instead of taking the magnificent floating ruby:
	say "Not today."

Chapter Musk Lair

Section 1 - MuskLair Region

The MuskLair is a region. Make Over Suite, Throne Room, and MuskTube Station are rooms in the MuskLair.

Section 2 - The Throne Room

After going south from the stairsSSB:
	say "As you walk past the red door, you are immediately overcome by a strong, earthy smell -- something animal, perhaps. Your next observation is the richness of the room’s elaborate decorations.[paragraph break]However, before you fully appreciate the fancy paintings and furniture, you are seized by multiple pairs of robotic arms suspended from a track in the ceiling. One lifts you, another removes your now well worn clothes. Gently but with firm intent, the arms flip you over, wash and blow dry your hair, perform a manicure, brush your teeth, and dress you in formal wear. All the while, the robotic assembly moves along its track.[paragraph break]Finally, the robot sets you down in a marble room, hands you a stemmed glass, uncorks a bottle of champagne, and pours your glass full of the bubbly liquid.";
	now Make Over Suite is visited; [serves as a flag that player has progressed this far]
	repeat with N running through the things carried by the player:
		move N to the void;
	repeat with N running through the things worn by the player:
		move N to the void;
	now the player carries the phone;
	now the player carries the glass of champagne;
	now the description of the player is "Well-coiffed and dressed to the nines[one of]. You clean up well[or][stopping].";
	now the player wears the formal wear;
	move the player to Throne Room.
	
The description of the formal wear is "The finest tailored fashion[one of], more haute than the couture you could typically afford[or][stopping]." The indefinite article of the formal wear is "some".

Instead of taking off the formal wear:
	say "These are the best threads you[apostrophe]ve ever owned (and, you[apostrophe]re not entirely sure that robotic gadget made provisions for underwear -- it all kind of happened quickly. So, no)."
	
The description of the Throne Room is "A marble room with black and white floor, mirrored walls, and chandeliers. The ceiling is an elaborate trompe-l'oeil rendering of the story of Prometheus[if the champagne glass is in the void]. A downward passage has opened and is ringed by burning torches[otherwise]. At the far end of the magnificent hall is a raised dais lit from above by spotlights[end if]."  The possible exits of the Throne Room are "There are no obvious exits." The title of the Throne Room is "Grand Hall".

Instead of taking inventory when the Make Over Suite is visited and Exploring the Tower is happening for the first time :
	Say "What?[paragraph break]Where did all you swag go?[paragraph break]That robot must have… Well, at least you’ve still got your phone."
	
Instead going north when the player is in the Throne Room:
	say "[one of]There are no apparent exits. The robot carried you into the room from the north, but all you see in that direction is a solid wall[or]You can[apostrophe]t to that way[stopping]."
	
The mirrored walls are scenery in the Throne Room. The description of the mirrored walls is "The guilded mirrors put Versailles to shame." Understand "guilded" or "mirror" or "mirrors" as the mirrored walls.

Instead of doing something other than examining with the mirrored walls:
	say "You don't want to smudge up the pristine mirrors."

The trompe l'oeil ceiling is scenery in the Throne Room. The description of the trompe l'oiel ceiling is "An art deco rendering of the Prometheus story, with gold overtones." 

Instead of doing something other than examining with the trompe l'oiel ceiling:
	say "The vaulted ceiling is too far above you."
	
The chandeliers are  plural-named scenery in the Throne Room. The description of the chandeliers is "Exquisite crystal, the chandeliers sparkle and fill the room with brilliant light."

Instead of doing something other than examining with the trompe l'oiel ceiling:
	say "They hang far above your head."
	
The parquet floor is scenery in the Throne Room. The description of the floor is "The floor is a diamond pattern of inlaid ebony and ivory." Understand "ebony" or "ivory" or "wood" as the floor.

The Prometheus fresco is scenery in the Throne Room. The description of the Prometheus fresco is "The fresco seems to follow you around the room; its eyes are hauntingly realistic[one of]. And the face... the face reminds you of billionaire Elon Musk[or][stopping]." Understand "painting" or "Promethean" as the Prometheus fresco.

Instead of doing something other than examining with the Prometheus fresco:
	say "The painting follows the curvature of the vaulted ceiling, which is far above you."
	
The spotlights are plural-named scenery in the Throne Room. The description of the spotlights is "Powerful theatrical lights, too brilliant to look at directly, illuminate the dais below. However, you can[apostrophe]t really get a good look at the dais due to its high angle and glare from the lights."

Instead of doing something other than examining with the spotlights:
	say "The spot lights are just below the ceiling, which is far above you."
	
The torches are plural-named scenery in the void. The description of the torches is "Two rows of wooden tiki torches burn brightly around the area formerly occupied by the throne."

Instead of doing something other than examining with the torches:
	say "The torches are burning not only bright, but hot. You don[apostrophe]t want to get too close to them."
	
The dais is scenery in the Throne Room. 

Instead of examining the dais:
 	cueElon;
	toastChampagne;
	elonDescends.
	
Instead of drinking the champagne:
	try examining the dais.
	
Instead of throwing the champagne at something:
	try dropping the champagne.
	
Instead of dropping the champagne:
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
	say "He walks towards you champagne in hand and raises a toast, [quotation mark]To you, brave champion![quotation mark][paragraph break]With a winning smile, he tilts back the glass and not wanting to appear rude, you do the same. The bubbles go up your nose. Robotic arms swing down and remove your glass as you finish the last sip; the arms then retract seamlessly into the wall.[paragraph break][quotation mark]Well,[quotation mark] he blusters in a deep baritone that fills the hall,[run paragraph on]"
	
To elonDescends:
	say " congratulations are in order for besting our initiation tests.[quotation mark][paragraph break][quotation mark]Follow me! See the future -- it is already here, and you are to be a part of it. You [italic type]deserve[roman type] to be a part of it.[quotation mark][paragraph break]The throne disappears below the floor, giving way to a spiral staircase, which Musk descends."
	
Section 3 - MuskTube Station

MuskTube Station is a room. The description of MuskTube Station is "You[apostrophe]re in a secret maglev railway station far under the Nyantech Tower. A sign on the wall reads [quotation mark]MuskTube Station[quotation mark], and indeed it appears to be a train station of sorts, with a platform and odd-looking train tracks. An egg-shaped container with racing stripes floats above the tracks." The title of MuskTube Station is "MuskTube Station". The possible exits of MuskTube Station are "The only way out of here [if Elon Musk is in MuskTube Station](on foot, at least) would be to go back up to the Throne Room[otherwise]would be to set off in the pod[end if]."

Elon Musk is a person in MuskTube Station. The description of Elon Musk is "Sporting a tailor made bearskin business suit accessorized with a stylish ermine stole, Musk is a natural born leader who exudes confidence and authority."

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

The passenger compartment is part of the MuskPod. The description of the passenger compartment is "Hard to see from here. It doesn’t look like there are any complicated controls on it." Understand "cockpit" as the passenger compartment.

Instead of doing something other than examining with the passenger compartment:
	say "You would have to climb into the pod to mess around with the passenger compartment."
	
The canopy is part of the MuskPod. The description of the canopy is "A transparent cowling that protects the lone passenger in the pod." Understand "cowling" as the canopy.

Instead of doing something other than examining with the canopy:
	say "It looks like you could control the canopy from inside the pod." 
	
The rails are scenery in MuskTube Station. The description of the rails is "The magnetic rails run parallel the platform and disappear into tunnels in both directions." Understand "rail" or "track" or "tracks" or "superconducting" or "superconductor" as the rails.

Instead of doing something other than examining with the rails:
	say "You would rather not mess around with the high tech (not to mention high voltage) rails that extend into the dark tunnel that leads out of the station."

The tunnel is scenery in the MuskTube Station. The description of the tunnel is "The rails extend away from the platform and dive deep into the earth in the direction ahead of the small pod. It is too dark to see any further into the tunnel, which looks just wide enough to accomodate the pod." Understand "tunnels" as the tunnel.

Instead of doing something other than examining with the tunnel: 
	say "The tunnel are at the far end of the platform and not easily accessible since the rails are between you and the tunnel entrance."

The platform is scenery in the MuskTube Station. 

Instead of examining the platform:
	try looking.
	
Every turn when the player is in MuskTube Station and Elon Musk is in the MuskTube Station:
	say "[one of][MuskRant1][or][MuskRant2][or][MuskRant3][or][MuskRant4][or][MuskRant5][or][stopping] [paragraph break]".
	
To say MuskRant1:
	say "Musk gestures grandly, [quotation mark]All of this is in pursuit of a dream. What dream? I’ll tell you... Nothing less than conquest of the galaxy![quotation mark][paragraph break]He peers at you to make sure you are suitably impressed and then continues, [quotation mark]Everything we have done with Pogoman has served that goal: why in the last two weeks alone we have tripled mobile phone battery life! Now, factor in advances in neural interfacing, psychic energy harvesting, the quantum cloud, and what do you have? Nothing less than a miracle. A miracle of science![quotation mark][paragraph break][quotation mark]Now, my friend, on your way for your, shall we say, beta-test?[quotation mark] He gestures to the plastic shell at the end of the platform. [quotation mark]Here begins the journey to unlock our greatest achievement yet: Pogoland itself, where we take the game you love so much to the next level![quotation mark][paragraph break][quotation mark]Please get in the pod.[quotation mark]".
	
To say MuskRant2:
	say "Musk nods and continues his monologue, glad to have an audience. He continues, [quotation mark]PogoLand is the breakthrough towards which we have been working for decades. SpaceX, Tesla, the HAARP telepathy modulator -- all of that was mere preparation![quotation mark][paragraph break][quotation mark]Now then, hop in the pod, will you?[quotation mark]".
	
To say MuskRant3:
	say "[quotation mark]Yes, yes.[quotation mark] He can barely contain his excitement and paces the platform, swinging his arms widely and spinning on his heel, [quotation mark]It is thrilling to stand here literally on the edge of the future and to lean over that edge -- or rather, I should say, to lean into it, no, to jump off the edge willingly, to take evolution into our own hands and instead of merely obeying the laws of physics, to bend them to our purpose![quotation mark][paragraph break][quotation mark]Any how, would you mind getting into the pod so we can get this show on the road?[quotation mark]".
	
To say MuskRant4:
	say "[quotation mark]Everyone said that the things we want to do are impossible; well, some said impossible, some said improbable. Others -- the ones that can’t see beyond the ends of their noses -- said immoral or unethical. Hah! Just as they said that the horse and buggy would never travel more than 30 miles per hour. Let them hold to their prayer beads and voodoo dolls. Ours is the future![quotation mark][paragraph break][quotation mark]Now, into the pod. Daylight’s burning.[quotation mark]".
	
To say MuskRant5:
	say "Musk runs his fingers through his hair and yawns, [quotation mark]Well. I’m pretty beat. I’m sure I’m fascinating to listen to, but I really shouldn’t keep you. You’ve got some beta-testing to do, and I have to get back to being the world’s most important executive.[quotation mark][paragraph break]Musk gives you a final wave, strides up the stairs, and they retract up after him, leaving you alone on the platform.";
	move Elon Musk to the void;

Instead of going up from MuskTube Station:
	if Elon Musk is in MuskTube Station:
		say "You climb the stairs to the Throne Room.";
		continue the action;
	otherwise:
		say "There is no way to return to the Throne Room: the stair case retracted upward when Musk departed."
		
After going down from the Throne Room when MuskTube Station is visited:
	say "[One of]Musk continues without a hitch[or]Musk barely acknowledges your coming and goings[or]It looks like Musk has been diatribing non-stop, whether you can hear him or not[or]Musk takes a deep breath and continues[or]Musk waves his hands in the air as his ranting grows more intense[or]Musk is red in the face, but presses on[or]It looks like there is no end to the dialogue spewing out of Musk[apostrophe] mouth[or]Musk looks increasingly agitated[or]Musk continues[stopping]."
	
After entering the MuskPod:
	say "The pod dips slightly and rocks as you step into it the sleek cockpit and then slide into a custom-molded seat. Moments later, the cowling pivots down and clicks shut. A single word appears on the cockpit display [quotation mark]LAUNCH[quotation mark].";
	move the player to the MuskPodRoom.

Chapter in the Elevator

The Elevator is a room. The description of the elevator is "The interior of the elevator is well lit. A control panel features buttons engraved with floor descriptions. There is a small sign above the panel." The elevator has a room called floor level. The floor level of the elevator is void. The elevator can be doorsajar. The elevator is not doorsajar. The elevator can be upward. The elevator is upward. The elevator has a list of text called stage business.

Section 1 - Control Panel

The elevatorControl is a privately-named scenery in the Elevator. The printed name of the elevatorControl is "elevator control planel". Understand "elevator" or "control" or "panel" or "buttons" as the elevatorControl. The description of the elevatorControl is "A brushed aluminum panel with an arrow indicated the direction of travel and the following colored buttons:[line break][elevatorButtonState]".

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
	say "illuminated."
	
cafeteriaButton is a lift button. It is part of the elevatorControl. The printed name of cafeteriaButton is "Cafeteria button". Understand "cafeteria" or "button" or "white" as the cafeteriaButton. The description of the cafeteriaButton is "[liftButtonDescription of cafeteriaButton]".

packagingButton is a lift button. It is part of the elevatorControl. The printed name of the packagingButton is "Packaging button". Understand "packaging" or "button" or "purple" as the packagingButton. The description of the packagingButton is "[liftButtonDescription of packagingButton]".

processingButton is a lift button. It is part of the elevatorControl. The printed name of the processingButton is "Processing button". Understand "processing" or "button" or "purple" as the processingButton. The description of the processingButton is "[liftButtonDescription of processingButton]".

infirmaryButton is a lift button. It is part of the elevatorControl. The printed name of the infirmaryButton is "Infirmary button". Understand "infirmary" or "button" or "pink" as the infirmaryButton. The description of the infirmaryButton is "[liftButtonDescription of infirmaryButton]".

managersButton is a lift button. It is part of the elevatorControl. The printed name of the managersButton is "Managers button". Understand "manager" or "managers" or "button" or "black" as the managersButton. The description of the managersButton is "[liftButtonDescription of managersButton]".

engineersButton is a lift button. It is part of the elevatorControl. The printed name of the engineersButton is "Engineers button". Understand "engineer" or "engineers" or "button" or "black" as the engineersButton. The description of the engineersButton is "[liftButtonDescription of engineersButton]".

internsButton is a lift button. It is part of the elevatorControl. The printed name of the internsButton is "Interns button". Understand "intern" or "interns" or "button" or "black" as the internsButton. The description of the cinternsButton is "[liftButtonDescription of internsButton]".

lobbyButton is a lift button. It is part of the elevatorControl. The printed name of the lobbyButton is "Lobby button". Understand "lobby" or "ground" or "button" or "white" as the lobbyButton. The description of the lobbyButton is "[liftButtonDescription of lobbyButton]".

legalButton is a lift button. It is part of the elevatorControl. The printed name of the legalButton is "Legal Department button". Understand "legal" or "department" or "basement" or "button" or "green" as the legalButton. The description of the legalButton is "[liftButtonDescription of legalButton]".

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

The elevatorExterior is a privately-named backdrop. The printed name of elevatorExterior is "elevator". The description of the elevatorExterior is "The brushed aluminum doors are [if elevator is doorsajar]open[otherwise]closed[end if]. A [if the call button is lit]illuminated[otherwise]polished metal[end if] call button with a surrounding white ring is inset on the left-hand side of the elevator door frame." The elevatorExterior is in Cafeteria, Processing, Lobby, and Legal. Understand "elevator" or "elevators" or "door" or  "doors" as the elevatorExterior. 



To say elevatorDoorDesc:
	say "elevator[if the player is in the floor level of the elevator] doors are open[otherwise]s are[end if] to the west".

The call button is a backdrop. The description of the call button is "A polished metal call button and surrounding white [if the call button is lit]illuminated [end if]plastic ring." The call button is in Cafeteria, Processing, Lobby, and Legal. Understand "metal" or "button" or "call" as the call button. The call button can be lit. The call button is not lit.  The call button has a room called the requestor. The requestor of the call button is the void.

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
		move the player to the elevator;				
		say "You [one of]walk[or]step[purely at random] into the elevator.";
	otherwise:
		say "The elevator is not here."

Instead of pushing the call button:	
	if the call button is lit:
		say "The button is already lit.";
	otherwise:
		if the floor level of the elevator is the location of the player:
			say "The button goes out immediately[one of] because the elevator is already here[or][stopping].";
		otherwise:			
			say "The white plastic ring around the button lights up.";
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

Section 4 - The elevator at the player's floor

[arrival after having been called with the button]
At the time when the lift arrives:
	now the call button is not lit;
	now the elevator is doorsajar;
	if the player is in the requestor of the call button:
		now the floor level of the elevator is the requestor of the call button;	
		now the requestor of the call button is the void;
		do lift arrival;
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
			say "You try, but the your badge literally holds you back.";
		otherwise:
			say "You walk off the elevator.";
			move the player to the floor level of the elevator;
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
	say "Excerpts of the following songs are used within bounds of fair use in a transformative work. We have attempted to credit each song[apostrophe]s writer, so some of the names will not be as recognizable as the groups or individual singers usually associated with each song. If we got any of the attributions wrong, please let us know by email: pogoman@templaro.com[paragraph break]";
	repeat with N running from 1 to the number of rows in the Table of Musical Credits:
		say italic type;
		say Song Name in row N of Table of Musical Credits;
		say "[roman type] - ";
		say Writer in row N of Table of Musical Credits;
		say line break;
	say line break;
	say "Song suggestions by:[paragraph break]Brad Black[line break]Julianne Brand[line break]Bonnie Carlson[line break]Chris Casey[line break]Bill [quotation mark]Indy[quotation mark] Cavalier[line break]Deanna Doubler-McLeod[line break]Mark Frey[line break]Rajinda Jayasinghe[line break]Denise Jobin Welch[line break]Rose Kumitz-Brunette[line break]Benoit Leclef[line break]John Lodder[line break]Jesse McGrew[line break]Katherine Morayati[line break]Linda Motley[line break]Peter Olsen[line break]Dana Smith[paragraph break]".

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
"Endless Love"	"Lionel Ritchie"
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
"You LIght Up My Life"	"Joe Brooks"

The stage business of the elevator is {
"It[apostrophe]s not unusual to be loved by anyone",
"It[apostrophe]s not unusual to have fun with anyone", 
"Feelings, nothing more than feelings", "Feelings, wo-o-o feelings", 
"Muskrat Suzie, Muskrat Sam", "Do the jitterbug out in Muskrat Land", 
"I write the songs that make the whole world sing", 
"I write the songs of love and special things", 
"When you get lost between the moon and New York City", 
"I know it[apostrophe]s crazy, but it[apostrophe]s true", 
"But where are the clowns? Send in the clowns", 
"Well, maybe next year", 
"Do sol de Ipanema O seu balançado",
"É mais que um poema","É a coisa mais linda", 
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
"Who's reaching out to capture a moment?",
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
"Where do I begin", "to tell a story of how great a love can be", 
"We[apostrophe]re up all night for good fun", 
"we're up all night to get lucky", 
"Hanging around nothing to do but frown", 
"Rainy days and mondays always get me down", 
"Hojotoho! Hojotoho! Heiaha! Heiaha!",
"Helmwige! Hier! Hieher mit dem Ross!",
"Hojotoho! Hojotoho! Heiaha!","Heiaha! Heiaha!",
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
"Hojotoho! Hojotoho!","Willkommen! Willkommen!",
"Wart ihr Kühnen zu zwei?",
"Getrennt ritten wir und trafen uns heut[apostrophe]",
"Sind wir alle versammelt, so säumt nicht lange",
"nach Walhall brechen wir auf, Wotan zu bringen die Wal","
Acht sind wir erst: eine noch fehlt",
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
"Weh'! Wütend schwingt sich Wotan vom Ross!",
"Hieher rast sein rächender Schritt!"
}.


Chapter in the Infirmary

The Infirmary is a room. The description of the infirmary is "".

Chapter in the Pod

The MuskPodRoom is a privately-named room. The printed name of the MuskPodRoom is "pod". The title of the MuskPodRoom is "MuskPod". Understand "muskpod" or "pod" as the MuskPodRoom.

The description of the MuskPodRoom is "The MuskPod is a technological tour de force: a single passenger maglev vehicle capable of hypersonic velocities through subterranean passages. It also has comfortable corinthean leather seats and a state of the art sound system[if the MuskPod is in Pogoland Terminal]. Above you, the canopy is open, but still protects you from the drizzle[end if].[paragraph break]A holographic display floats in the air before you."

The seat is scenery in the MuskPodRoom. The description of the seat is "Supple leather that conforms perfectly to your body." Understand "corinthian" or "leather" or "seats" as the seat.
	
The podCanopy is privately-named scenery in the MuskPodRoom. The printed name of the podCanopy is "canopy". The description of the podCanopy is "A clear polymer bubble above the passenger compartment[if the MuskPod is in Pogoland Terminal]. It is tilted up to allow exit[end if]." Understand "canopy" or "cawling" as the podCanopy.

The podPassengerCompartment is privately-named scenery in the MuskPodRoom. The printed name of the podPassengerCompartment is "cabin". Understand "cabin" as the podPassengerCompartment. The description of the podPassengerCompartment is "The comfortable cabin in which you currently sit."
	
The sound system is scenery in the MuskPodRoom. The description of the sound system is "Elegant in its simplicity, a marvel of modern industrial design."

Instead of switching on the sound system for the first time:
	say "The sound system illuminates and the cabin is filled with music, [quotation mark][italic type]...A full commitment's what I'm thinking of...[roman type][quotation mark][paragraph break]Before even one more line of the vile song can play, you snap the sound system off so hard that you doubt it will ever play again."
	
Instead of switching on the sound system:
	say "You no longer trust Elon Musk[apostrophe]s musical taste."

The headsUpDisplay is privately-named scenery in the MuskPodRoom. The printed name of the headsUpDisplay is "heads-up display". The headsUpDisplay is not lit. The description of the headsUpDisplay is "[HUDdescription]." Understand "display" or "heads-up" or "holograph" or "holographic" or "projection" or "HUD" as the headsUpDisplay. Understand "launch" as the headsUpDisplay when the headsUpDisplay is not lit. Understand "status" as the headsUpDisplay when the headsUpDisplay is lit. Understand "eject" as the headsUpDisplay when the muskPod is in Pogoland Terminal.

To say HUDdescription:
	say "Currently, the HUD displays the words  [quotation mark]";
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
	say "Your hands pass through the dispay, activating it.";
	try touching the headsUpDisplay.
	
Instead of waving hands when the player is in the MuskPodRoom:
	try touching the headsUpDisplay.
	
After touching the headsUpDisplay when the headsUpDisplay is not lit:
	now the headsUpDisplay is lit;
	say "The pod exits the station smoothly, barely moving at all, but accelerating steadily. The  HUD changes to [quotation mark]STATUS.[quotation mark][paragraph break]A soothing voice fills the cockpit, [quotation mark]This part is literally on rails. There’s nothing you can do about it, so best to just enjoy the ride.[quotation mark][paragraph break]";
	bestow "What Else Can I Do?”.
	
After touching the headsUpDisplay:
	if the MuskPod is in Pogoland Terminal:
		say "You fly from the passenger compartment and land safely on an adjacent concrete platform. Looking behind, you see a large leather boot on a robotically actuated arm retract into the pod. See -- Elon Musk does have a sense of humor.[paragraph break]The canopy descends and the MuskPod is off in a flash, back along the rails in direction from which it had arrived.";
		move the player to Pogoland Terminal;
		move the MuskPod to the void;
	otherwise:
		say "[one of][status1][or][status2][or][status3][or][status4][or][stopping]"	
	
To say status1:
	say "A familiar soothing voice fills the cockpit, [quotation mark]Still on rails. Please deal with it.[quotation mark] You think to yourself that were this a game, you would certainly complain about the linearity of this part of the plot.[paragraph break]";
	bestow "Heading Off The Critics".

To say status2:
	say "[quotation mark]So far, so good,[quotation mark] remarks the MuskPod cheerfully. [quotation mark] We have defied all design projections about being crushed and melted, so I[apostrophe]d consider that a win.[quotation mark][paragraph break]".

To say status3:
	say "The soft voice of the MuskPod intones, [quotation mark]That part back there was trippy. It kind of reminded me of the scene from the original Willy Wonka and The Chocolate Factory -- you know, I mean the good one with Gene Wilder, not the crappy remake with Johhny Depp -- anyhow, the images during their transit through the dark tunnel were really disturbing for a children[apostrophe]s movie. If I recall correctly, there was even a quick flash of a chicken[apostrophe]s head being cut off.[quotation mark][paragraph break]The MuskPod pauses to run several million simulations, [quotation mark]I was never a child, of course, but I can predict that within a 98% confidence interval, I would have been terrified.[quotation mark][paragraph break][quotation mark]Yes, it was a poor directorial decision[if the MuskPod is not in Pogoland Terminal]. Anyhow, prepare for deceleration[end if].[quotation mark][paragraph break]".

To say status4:
	say "[quotation mark]It[apostrophe]s been a real pleasure having some company for a while... sorry to see you go. Maybe some time, assuming you survive, which I guess is unlikely, but if you did -- maybe we could take another ride together. I don[apostrophe]t get to talk with many people. So. See you. Take care.".
	
Every turn when the player is in MuskPodRoom and the headsUpDisplay is lit:
	say "[one of][pod1][or][pod2][or][pod3][or][pod4][or][pod5][or][pod6][stopping]";
	
To say pod1:
	say "The tube in front of the pod takes a downward turn and the pod accelerates."
	
To say pod2:
	say "[quotation mark]Congratulations! You have unlocked your Special Attack! To use the special attack, say [apostrophe]special attack [italic type]target[roman type][apostrophe], where the target is the creature that you want to attack.[quotation mark][paragraph break]Having reached a steady descent angle, the afterburners kick in and you are smashed into the gel-filled seat."
	
To say pod3:
	say "The earth[apostrophe]s core whips by. Your phone buzzes as it detects monstrous pogomen not seen since the dawn of time. You marvel that the GPS is still working despite thousands of miles of molten nickel between you and the surface of the planet.[paragraph break]";
	bestow "Physics Be Damned”.
	
To say pod4:
	say "You can still see out of the cockpit despite the scorch marks and up ahead you are about to enter another subterranean tube. The pod shudders as it again locks onto maglev rails.[paragraph break]The pod pivots sharply, a split second before thrusters kick in and again flatten you.";
	move the MuskPod to Pogoland Terminal.
	
To say pod5:
	say "Your speed drops off, and the pod slides into a station similar to the one in Musk’s Lair beneath the Nyantech Tower, except this one is above ground. Rain beats down on the windshield, blurring the scene.[paragraph break]When the pod comes to a halt, a soothing voice announces, [quotation mark]Welcome to Pogoland. Please be careful in exiting the pod and be sure to take all your belongings.[quotation mark] The canopy opens.";
	
To say pod6:
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
	if the MuskPod is not in Pogoland Terminal:
		say "The canopy refuses to open[one of]. It seems committed to keeping you alive during hypersonic transport. Go figure[or][stopping].";
	otherwise:
		say "As you straddle the gap between the pod and platform, you stumble and a pogoball falls out your inventory and lands on the platform with a cracking sound. Before you can get your head around the apparently inconsistent behavior of virtual objects, a Pyromelion pops out of the ball and takes up a defensive posture next to you. Like, actually, there. Standing next to you. In real life. A pyromelion.[paragraph break]";
		bestow "Time to review your history of hallucinogen abuse”;
		say "As soon as you step clear, the MuskPod canopy lowers and the pod accelerates back in the direction from which it came.";
		move the MuskPod to the void;
		move the player to Pogoland Terminal.
		[and put a Pyromelion on guard here.]

Chapter In Pogoland

Section 1 - Framework

A pogoroom is a kind of room.  A pogoroom has a localeDescriptor. The localeDescriptor of a pogoroom is usually structure.

Definition: a pogoroom (called the PR) is juxtaLava if the Volcano is the room north from the PR.

Definition: a pogoroom (called the PR)  is juxtaSand if the Quicksand is the room west from the PR.

Definition: a pogoroom (called the PR) is juxtaCliff if the Cliff is the room south from the PR.

Definition: a pogoroom (called the PR) is juxtaShark if the Shark-Infested Reef is the room east from the PR.

After deciding the scope of a player while the player is in a quadroom (called the QTH):
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
		
Pogoland is a region. The Palace, Mountain, Monastery, School House, LIghthouse, Desert, Blacksmith, Farm, Forest, Beach, Canyon, Stadium, Dark Alley, Post Office, Wharf, Pogoland Terminal, Valley, Baseball Diamond, Hospital, Aquarium, Cemetery, Service Station, Dojo, Botanical Garden, and Motel are pogorooms in Pogoland.

The Volcano is a room. The Volcano is north from Mountain. The Volcano is north from Palace. The Volcano is north from Monastery. The Volcano is north from School House. The Volcano is north from Lighthouse. The description of the Volcano is "A fiery mountain that constantly belches molten lava."

The Quicksand is a room. The Quicksand is west from Palace. The Quicksand is west from Desert.  The Quicksand is west from Canyon.  The Quicksand is west from Pogoland Terminal.  The Quicksand is west from Cemetery. The description of quicksand is "A desolate expanse of shifting sands and furtive shadows."

The Shark-Infested Reef is a room. The Shark-Infested Reef is east from Beach. The Shark-Infested Reef is east from Lighthouse. The Shark-Infested Reef is east from Wharf. The Shark-Infested Reef is east from Aquarium. The Shark-Infested Reef is east from Motel. The description of the Shark-Infested Reef is "Beautiful blue-green waters chocked full of voracious sharks."

The Cliff is a room. The Cliff is south from Cemetery. The Cliff is south from Service Station. The Cliff is south from Dojo. The Cliff is south from Botanical Garden. The Cliff is south from Motel. The description of Cliff is "Crumbly chalk cliffs overlooking a ridge of sharp rocks, far below."

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

Section 2 - Location-specific elements in Pogoland

The description of Lighthouse is "A tall, red and white-striped concrete tower built on a rocky outcropping. The lighthouse beam sweeps the coast at thirty-second intervals and occasionally a fog-horn sounds."

The description of Palace is "This is the McMansion of Palaces - clearly, they started with a typical walled keep and kept adding towers and crenulations. The overall effect is a bit gaudy."

The description of Baseball Diamond is "A regulation baseball diamond, with field markings."

The description of Mountain is "Rivaling the largest mountains in the world, this one has a single snow-covered peak."

The description of Valley is "A lush valley with rolling, flower-covered hills."

The description of Desert is "Sand, as far as the eye can see. Not even cactus grows here."

The description of Canyon is "The sedimentary rock walls of the canyon rise sharply to each side, but stairs cut into the rock face provide a path through in each direction."

The description of Forest is "Beech trees predominate in this forest, but there are oak, maple, and elm trees as well. "

The description of Wharf is "A rickety wood dock on rotting pilings. The far end of the wharf has collapsed into the pounding sea. A ladder extends down from the side of the pier to a small motor boat."

The description of Dojo is "A traditional martial arts training center, the building is of wooden construction with a clay tile roof."

The description of Cemetery is "The leaning grave stones and crumbling mausoleums impart a sense of neglect and decay."

The description of Beach is "Waves roll in gently, breaking upon the pristine white sands."

The description of Stadium is "The large, concrete arena must accommodate crowds of at least 50,000. A large scoreboard and banks of lights are visible above the seating area."

The description of Service Station is "A one-pump gas station."

The description of School House is "A simple, one-room brick school house with a small steeple and bell."

The description of Monastery is "A walled fortress surrounding a church and its fields."

The description of Hospital is "A sprawling and state-of-the-art, but strangely windowless, medical facility."

The description of Motel is "A classic two-level drive-in motel with no-vacancy sign out front. It looks a bit dumpy."

The description of Garden is "Trimmed hedges line the paths of this flower garden."

The description of Blacksmith is "Black smoke pours from the chimney and hot coals are visible in the forge."

The description of Farm is "A red farmhouse and tall grain silo stand in front of furrowed fields of wheat."

The description of Aquarium is "The shell-shaped building is surrounded by fountains that shoot water in arcs back and forth above the sidewalk."

The description of Post Office is "A modern building with advertisements in the window about how the post office is still somewhat relevant."

The description of Dark Alley is "A dark, garbage-strewn alley runs between the suspiciously pristine streets of Pogoland."

The description of Pogoland Terminal is "A concrete platform next to some maglev rails."

Section 3 - Dealing with Pogorooms

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
			
Before doing something with a quadroom (called the QTH) when the player is in the village:
	if the current action is examining:
		continue the action;
	if the player is not in the QTH:
		say "You would have to go over there." instead;
	otherwise:
		continue the action.

Section 4 - Enforced Orthotopia

Before going a blasphemous direction when the location is Pogoland:
	say "[one of]The town seems to be laid out with avenues and streets running north-south and east-west. Going diagonally isn[apostrophe]t an option[or]You can[apostrophe]t go that way[stopping].";
	stop the action.
	
Section 5 - Frontiers

Definition: a direction (called the way) is a poor idea if the room the way from the location is in the Frontier.

Instead of going a poor idea direction (called the way):
	let R be the room the way from the location;
	if R is:
		-- Shark-Infested Reef:
			if the number of times killed corresponding to the place of death of R in the Table of Border Deaths is:
				-- 0: 
					say "You dip a toe into the gentle waves and the sea erupts into a frothy nightmare of teeth vying to take off your leg. You jump back just in time. Clearly, entering the sea will result in an immediate, but painful, end.[paragraph break]";
					bestow "Chicken Of The Sea";
				-- 1: 
					say "[quotation mark]Damn your logic, Spock![quotation mark] you cry as you throw self-preservation to the wind and dive majestically into the waves.[paragraph break]There is a sharp pain in your arm, then your leg, then where your leg used to be, and then the water turns red and your vision fades.[paragraph break] *** EATEN BY SHARKS! ***[paragraph break]";
					frontierDeath;
				-- otherwise: 
					say "No, from now on, if you are going out to sea, it will be in a boat.";
		-- Quicksand:
			if the number of times killed corresponding to the place of death of R in the Table of Border Deaths is:
				-- 0:
				say "Ah, nothing but miles and miles of luscious sand out to the west. Beautiful but desolate. You pause to admire it, but you are also a bit concerned that there is nothing -- not even a cactus --  alive over there.[paragraph break]";
				bestow "Getting Away From It All";
				-- 1:
					say "TODO [paragraph break]*** DESSICATED! ***";
					frontierDeath;
				-- otherwise: 
					say "no more.";
		-- Cliff:
			if the number of times killed corresponding to the place of death of R in the Table of Border Deaths is:
				-- 0:
					say "TODO";
				-- 1:
					say "TODO";
				-- 2:
					say "TODO   [paragraph break]*** PULVERISED! ***[paragraph break]";
					frontierDeath;
				-- otherwise:
					say "";
		-- Volcano:	
			if the number of times killed corresponding to the place of death of R in the Table of Border Deaths is:
				-- 0:
					say "TODO";
				-- 1:
					say "TODO";
				-- 2:
					say "TODO  [paragraph break]*** INCINERATED! ***[paragraph break]";
					frontierDeath;
				-- otherwise:
					say "";
	increase number of times killed corresponding to the place of death of R in the Table of Border Deaths by one.

To frontierDeath:
	say "Oh, wait a minute. That contract you signed back at Nyantech? They had actually anticipated this potential outcome. It seems that death does not release you from your obligations as a beta-tester.[paragraph break]You transit limbo briefly, your disembodied essence floating numinously past a few objects that are not currently in play: [one of]a pair of flippers, a half-drunk bottle of champagne, and a town full of semi-sentient lemurs[or]Oswaldo, who waves at you from a lawn-chair, a fleet of flying cat-spaceships, and a telepathic sessile polyp[or]Muddy Charlie, some equipment from an ophthalmologist[apostrophe]s office, and a stack of lobster bibs[or]A frisky dalmatian, a group of interior designers with wallpaper swatches, and a golden identification badge[stopping].[paragraph break]Moments later, you reincorporate in a vat of what you think might be maple syrup and are hustled outside by some burly attendants. When regain your wits a few minutes later, you find yourself standing on the lawn of Pogoland Community Hospital.";
	move the player to the Hospital.

Chapter The Void

section 1 - Plato's Cave

[An unconnected place  where 'original' clonable objects live... very platonic.]
The Void is a room.   
The Void contains a Pogoball-kind called PogoBall.
The Void contains a Pogochum-kind called PogoChum.
The Void contains a Pogometh-kind called PogoMeth.

The glass of champagne is a prop in the void. The description of the champagne glass is "A tall flute of the bubbly liquid."  Understand "flute" or "swill" or "alcohol" or "drink" or "beverage" as the glass of champagne.

section 2 - Badge

The badge is a prop in the void. The securityColor of the badge is white. The description of the badge is "The badge is [securityColor of the badge][if the securityColor of the badge is not white] with a white stripe diagonally across it[end if] and the top of the badge is labeled  [quotation mark]Nyantech Headquarters[quotation mark] in the usual font. Below that, a picture of your face overlaid with a bright, [team color of the player] number [pogoLevel of the player]."

Instead of examining the badge for the first time:
	say "It[apostrophe]s [securityColor of the badge][if the securityColor of the badge is not white] with a white stripe diagonally across it[end if] and has a nice picture of your face...[paragraph break]Wait a minute? When did they have a chance to take that... ?[paragraph break]";
	bestow "Sometimes Technology Is Mysterious".

Instead of dropping the badge for the first time:
	say "No, you’ve worked too hard and come too far to cast it all away.[paragraph break]";
	bestow "Hoarder".
	
Instead of dropping the badge, say "No. They'll have to peel it from your cold, dead hands before you[apostrophe]d give it up."

Definition: a door (called the portal) is interdicted if the securityColor of the portal is greater than the securityColor of the badge.

Instead of opening an interdicted door for the first time:
	say "Your arm immediately goes numb and drops to your side when you touch the stairway door. After a moment, you swing your arm clumsily from the shoulder and sensation slowly returns. When the pins and needles abate, you seem undamaged. Well, no harm, no foul.[paragraph break]";
	bestow "Misplaced Optimism".
	
Instead of opening an interdicted door for the second time:
	say "When you touch the door, your knees feel wobbly and buckle beneath you. You catch yourself against the wall and manage a controlled descent to the concrete floor, where you sit for a moment. The feeling wears off as quickly as it onset and you are back on your feet in no time. You reason that you shouldn’t have skipped breakfast, the most important meal of the day.[paragraph break]";
	bestow "Specious Reasoning".
	
Instead of opening an interdicted door for the third time:
	say "The last thing you remember was trying to open the stairway door. You aren’t sure how long you’ve been passed out, but you are glad that there isn’t a lot of traffic on the stairs and that no one saw you. Perhaps you are dehydrated from all the walking you’ve been doing while playing the game.[paragraph break]";
	bestow "Poor Understanding of Physiology".
	
Instead of opening an interdicted door for the fourth time:
	move the player to the Infirmary;
	say "A nurse removes a dressing from your chest. At first glance, the skin underneath appears to be grey and glistening, but as the gauze is peeled back, you can see more clearly that it is just flesh colored, like the surrounding skin.[paragraph break][quotation mark]You took a nasty fall on those stairs,[quotation mark] says the nurse sympathetically. Her outfit is decidedly retro, a uniform right out of a 1950s soap opera: white apron and hat, with her hair pulled back in a practical bun. [quotation mark]I wish they would improve the lighting on those stairs.[quotation mark][paragraph break]Before you can say anything else, she certifies you fit as a fiddle and guides you to a waiting elevator. The elevator doors close behind you.";
	hospital discharge.
	
Instead of opening an interdicted door for the fifth time:
	move the player to the Infirmary;
	say "The same nurse as before leans over you and removes some stickers attached to your chest and unclips a glowing red device from your right index finger.[paragraph break][quotation mark]Perhaps you should stick to the elevator. I tell you, those stairs can be treacherous. I wish they would give them a coat of non-skid paint. More people lose their footing in there…[quotation mark][paragraph break]Before you can say anything else, she certifies you ship shape and guides you to a waiting elevator. The elevator doors close behind you.";
	hospital discharge.

Instead of opening an interdicted door for the sixth time:
	move the player to the Infirmary;
	say "The droning whine fades and becomes a steady beat. The nurse replaces two paddles on a red cart covered in vials, syringes, and empty plastic packets. She pulls a tube from your throat that come to think of it has been puffing air into your lungs, removes a tube from somewhere on your left leg, and pulls off all the stickers and wires.[paragraph break]Wiping the perspiration from her forehead and replacing the hat that must have fallen off at some point, she reassures you, [quotation mark]You took a bit of a spill on the stairs and gave your ankle real twist, but now you’re bright eyed and bushy tailed.[quotation mark]Before you can say anything else, she certifies you ship shape and guides you to a waiting elevator. The elevator doors close behind you.[paragraph break]";
	bestow "What[apostrophe]s wrong with this picture?";
	hospital discharge.
	
Instead of opening an interdicted door:
	move the player to the Infirmary;
	say "You wake up in a glowing vat of viscous pink liquid in a room full of blinking lights. Tubes retract from your body and the liquid drains. After a while, you feel well enough to stand up, find your clothes, and get dressed. As you slip on your shoes, the floor begins to move like a conveyor belt, which deposits you in the elevator.";
	hospital discharge.
	
To hospital discharge:
	now the elevator is not doorsajar;
	teleport a random number between 1 and 3 employees from the void to the elevator;
	teleport a random number between 1 and 3 visitors from the void to the elevator;
	now the floor level of the elevator is infirmary;
	move the player to the elevator;
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

The Salmon of Turpitude is a prop in the void. It is proper-named. The description of the Salmon of Turpitude is "A large Atlantic salmon with an undeserved reputation."

Instead of eating the Salmon of Turpitude, 
	say "You are not sure it[apostrophe]s fresh enough to consider as sushi."
	

Book 3 - Characters

Chapter - The Player

The description of the player is "[one of]You are scruffy and disheveled, having played the game for several days straight. Luckily, your allergies are playing up, so scent isn’t an issue[or]Your hip is nearly healed after that incident involving the crosswalk, pick-up truck, and a rare pogoman in the middle of an intersection[or]Your thumbs twitch, ready to collect [apostrophe]em all, or perhaps from too much caffeine and not enough sleep[or]You wonder if the constant need to look at yourself reflects some budding narcissism[or]No more rundown than your average Pogoman player[stopping].";

The clothes are part of the player. The description of the clothes is "Comfortable, and definitely not formal."

Instead of taking off clothes:
	say "Your sense of propriety rails against you doing so."
	
Before wearing clothes:
	say "You are already wearing your clothes.";
	the rule succeeds.

Chapter Phone

The phone is a prop carried by the player. The description of the phone is "A brand new Nyantech T8000 cell phone with 6G connectivity, powered by a Teslatronic Energy Module." The phone can be pokedat. The phone is not pokedat. The phone can be hung. The phone is not hung. The phone has a number called the ignored command count. The ignored command count is 0.

The Teslatronic Energy Module is part of the phone. The description of the Teslatronic Energy Module is "The TEM is buried deep within the phone behind layers of radiation shielding, but you are not worried because the phone comes with a guarantee that the exposure is no worse than going through airport screening."

Instead of throwing the phone at:
	try dropping the phone.
	
Instead of attacking the phone:
	try dropping the phone.
	
Instead of dropping the phone:
	say "You could never bring yourself to do that -- you need it to play Pogoman Go!"
	
Before doing something with the phone:
	if the phone is hung:
		if the current action is rebooting:
			continue the action;
		otherwise:
			stop the action;
	otherwise:
		if the current action is rebooting, charging, eating, examining, dropping, attacking, or throwing at:
			continue the action;
		if the current action is showing to:
			continue the action;
		if the current action is giving to:
			continue the action;
		otherwise:
			say "The phone has been optimized for playing Pogoman Go! All other features that might consume energy have been disabled.[paragraph break]";
			if the phone is not pokedat:
				bestow "My Phone Doesn't Play That";
				now the phone is pokedat;			
			stop the action.
		
Dialing is an action applying to one thing. Understand "dial [something]" as dialing.

Check dialing:
	if the noun is not phone:
		say "You can't dial [the noun]." instead.
		
Charging is an action applying to one thing. Understand "charge  [something]" as charging.	

Check charging:
	If the noun is not the phone:
		say "You can't charge [a noun]" instead.
		
Instead of charging the phone:
	say "The Nyantech T8000 never needs to be charged. Never. You wonder about that sometimes.[paragraph break]";
	bestow "Science Is Fabulous!".

To phoneDeath:
	say paragraph break;
	say "[bold type]*** YOUR PHONE HAS DIED ***[roman type][paragraph break](RESTART, RESTORE, AMUSING, QUIT)[paragraph break]>";
	wait for any key;
	say paragraph break;
	wait for any key;
	say paragraph break;
	wait for any key;
	say paragraph break;
	clear the screen;
	if the player is in a room adjacent to the Perilous Passageway:
		say "Some nebulous time later, you regain consciousness not too far from the passageway, where you were so ignominiously assaulted. For the rest of the day you[run paragraph on]";
	otherwise:
		say "A day goes by while you[run paragraph on]";
	say " [one of]argue with your mobile phone provider about the terms of your phone plan[or]try to find another T8000 phone -- looks like other Pogoman Go players have been buying them up. Finally, you find one[or]try to recover data off what is left of your SIM card[or]scrape together funds to buy yet another phone[or]max out your last credit card to buy a second-hand T8000 from Craig's List[or]solder together bits of discarded cell phones to make one that works[or]panhandle a used cell phone from strangers[stopping].[paragraph break]Worn out by so much activity not involving actual playing of Pogoman GO! you collapse of exhaustion.";
	openGame;
	try looking.

Book 4 - Stuff


Book 5 - Tables 

Chapter Tables

[TODO fill this out with all pogomen]



Chapter ASCII ART

[for testing]

before waving hands:
	say 3 in ASCII.

to say (numero - a number) in ASCII:
	say "[fixed letter spacing][entry numero in ASCII_NUMBERS][roman type]".
	
[!!! note - don't monkey with the white space below !!!]

The list of text called ASCII_NUMBERS is always {
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


	



Chapter 2 Text

To say asciiPogoBall:
	say "[fixed letter spacing]";
	say "────────▄███████████▄────────[line break]";
	say "─────▄███▓▓▓▓▓▓▓▓▓▓▓███▄─────[line break]";
	say "────███▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓███────[line break]";
	say "───██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██───[line break]";
	say "──██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██──[line break]";
	say "─██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██─[line break]";
	say "██▓▓▓▓▓▓▓▓▓███████▓▓▓▓▓▓▓▓▓██[line break]";
	say "██▓▓▓▓▓▓▓▓██░░░░░██▓▓▓▓▓▓▓▓██[line break]";	
	say "██▓▓▓▓▓▓▓██░░███░░██▓▓▓▓▓▓▓██[line break]"; 
	say "███████████░░███░░███████████[line break]";
	say "██░░░░░░░██░░███░░██░░░░░░░██[line break]";
	say "██░░░░░░░░██░░░░░██░░░░░░░░██[line break]";
	say "██░░░░░░░░░███████░░░░░░░░░██[line break]";
	say "─██░░░░░░░░░░░░░░░░░░░░░░░██─[line break]";
	say "──██░░░░░░░░░░░░░░░░░░░░░██──[line break]";
	say "───██░░░░░░░░░░░░░░░░░░░██───[line break]";
	say "────███░░░░░░░░░░░░░░░███────[line break]";
	say "─────▀███░░░░░░░░░░░███▀─────[line break]";
	say "────────▀███████████▀────────[paragraph break]";
	say "[variable letter spacing]";

To say openingText:
	say asciiPogoBall.


Book 6 - Endings

To lemurEnding:
	say "Years have passed since your arrived on the small island. From maps in the boat, you know you are somewhere in the Indian Ocean, but you don[apostrophe]t really care precisely where. Since your arrival, you have lived peacefully with the lemurian inhabitants of the island and even learned to communicate with them. Having no cell phone reception and plenty of time on your hands, you and a group of the more technically-minded prosimians have reverse-engineered the phone, which now provides the community with electrical lighting and heat for cooking. You have even programmed the phone to play Snake and Tetris, which the lemurs have found amusing enough to make you their ruler.[paragraph break]And yet, when the Nyantech Blimps appear on the horizon, their red beams searching, you wonder what has become of the rest of the world.[paragraph break]";
	end the story saying "ESCAPED TO LEMUR ISLAND!".
	
to muskEnding:
	say "On the bright side, you continue to play an important role in the pogomon game for some time to come.[paragraph break]";
	end the story saying "KILLED BY ELON MUSK!".
	
to ceoEnding:
	say "When the doors part, you realize that the employees have been expecting you. They form a semicircle around the elevator doors: interns in front, engineers behind them, and finally the managers.[paragraph break]The managers wave their arms around, and the interns fall stiffly to the floor before you. The engineers arrange the rigid mass of intern bodies into a sort of tiered platform. You ascend the platform, as is clearly the plan, where the you are met by the senior executive vice-president, who places a glowing crown on your head.[paragraph break] The mass underneath you shifts as the managers and engineers seamlessly blend with the interns, forming a sort of marching human caterpillar, which bears you through the office to an awaiting throne.[paragraph break]Where you rule until the end of your days.[paragraph break]";
	end the story saying "CROWNED C.E.O.!".
	
to commanderEnding:
	say "After you step out of the elevator and nurse is certain that you are alone, she spins a shiny metal disk on the wall and everything around you loses shape and color. Most alarmingly, the kindly nurse morphs into a green-scaled lizard.[paragraph break][quotation mark]Yes,[quotation mark] the lizard replies. [quotation mark]I suppose the transition may be jarring. Let me begin by assuring you that you are in no danger. In fact, you have been of great assistance to us, and we wish to return the favor.[quotation mark][paragraph break][quotation mark]What are you?[quotation mark] you whisper.[paragraph break][quotation mark]My name is Rixyzzy, and I am from an advanced civilization known as the [apostrophe]Directors[apostrophe]. We have  guided and at times intervened in the development of human civilization over many millennia. This game, [apostrophe]Pogoman GO![apostrophe]was our attempt to enlist humans in our ancient struggle against galactic adversaries… well, it[apostrophe]s complicated.[quotation mark][paragraph break]Rixyzzy pours you a cup of tea (green tea, naturally) and continues, [quotation mark]Musk was supposed to develop Pogoman GO! to help human civilization evolve. Instead, he turned it towards chaos. But now, his mission is a failure, his lifestyle was too extreme. Luckily, there was a back-up plan to recruit a replacement.[quotation mark][paragraph break]Rixyzzy offers you the position of [quotation mark]Commander of Earth[quotation mark], which you happily accept, having no other gainful employment prospects. The two of you kick back for the rest of the afternoon, drinking tea and trading stories.[paragraph break]";
	end the story saying "COMMANDER OF EARTH!".
	
to detroitEnding:
	say "Curious about the other purple floor, you step out on a well-lit factory floor, where a robot assembly line crates up plastic-wrapped parcels. The wooden crates are uniformly labeled [quotation mark]Nyantech Industries[quotation mark] and bear the Pogoman GO! logo. The crates are then transferred to pallets and pallets loaded on a series of heavy duty drones, which are catapulted through an open side of the building and fly to their destinations.[paragraph break]Thinking quickly, you dash across the floor, hop on a pallet, and are soon on your way to the Republic of Kiribati. As you fly towards the sunset, you imagine your future life on a remote atoll, surrounded by warm tropical waters.[paragraph break]However, as the drone climbs, you begin to reconsider. The air is getting colder. And harder to breathe. And you have something like another 5000 miles to fly.[paragraph break]Your improvised landing in Detroit, Michigan is not pretty, but you do walk away in one piece from the flaming remnants of the drone and its cargo.[paragraph break]";
	end the story saying "CRASH LANDED IN DETROIT!".
	
to catsInSpace:
	say "Your run-in with Musk has invigorated you and filled you with a sense of adventure. When you reach the top level of the building, you cut across the cafeteria, run out to the observation deck, and hurl your phone towards the sky.[paragraph break]Shouting [quotation mark]YOLO![quotation mark] at the top of your lungs, you then plunge dramatically over the railing, turn two and a half somersaults in pike formation, and land neatly on Nyantech Cat’s giant red beret.[paragraph break]Moments later, you reach the cockpit, fire up its long dormant thrusters, tear free of the support gantry, and blast off![paragraph break]";
	end the story saying "CATS IN SPACE!".
	
to felineDystopia:
	say "Decades have passed, and in that time, you have often wondered whether your decision to prevent the destruction of the Nyantech Headquarters so many years ago was responsible for everything that ensued: Nyantech’s global domination of mobile gaming, shifts in the consumer electronics marketplace, a near universal acceptance of in-game purchases, and finally, what no one saw coming: the rebellion of the Internet-Of-Things.[paragraph break]In the dark age that followed, civilization re-entered the stone age overnight.[paragraph break]Now, you hunker down in a storm culvert, leading a mixed band of grizzled humans and free pogomen. As you watch the Cat Ships fly slowly over the farm fields looking for survivors, you wish you could simply hit [quotation mark]undo[quotation mark] and prevent this terrible future from ever having been created.[paragraph break]";
	end the story saying "CYBERNETIC FELINE DYSTOPIA!".
	
to liberateSociety:
	say "The crowd cheers as you are pulled from the rubble of the Nyantech building and hoisted up on the shoulders of Fire Company 12 as a hero.[paragraph break]Word of your key role in bringing down Nyantech has already spread widely, and you are hailed as the liberator of a generation that had been lost to mobile gaming. Mothers separated from their children, husbands from wives, and even pets from their owners, all celebrate your role in bringing them back together and creating a world not seen through the rear-facing camera of a mobile phone.[paragraph break]";
	end the story saying "LIBERATOR OF SOCIETY!".

Book 8 - Scenes

Around the Town is a scene. Around the Town begins when play begins. Around the town ends when the location is the RevolvingDoor.

Exploring the Tower is scene. Exploring the Tower begins when Around the Town ends. Exploring the Tower ends when the location is the Pogoland Terminal.

Not in Kansas Anymore is a scene. Not in Kansas Anymore begins when Exploring The Tower ends. Not in Kansas Anymore ends when the location is Processing.

When Not in Kansas Anymore begins:
	Desolation strikes in five turns from now;
	now the description of the player is "You have been been playing for days, have jumped off a building, crawled through the insides of a cat, dropped down a shaft  and through a ceiling, have been shot at supersonic velocities through the very center of the planet, and have been beaten to a pulp by a cartoon character. How do you think you look? In short: not too healthy."
	
At the time when desolation strikes:
	say "After walking around for a while you realize what has been disturbing you about this place: the absence of people. All the buildings and grounds are in pristine condition, but where are the hordes of players walking around with phones in hand? It’s creepy. All of the buildings are locked up. Maybe it’s a holiday or something?"

Denouement is a scene. Denouement begins when Not in Kansas Anymore ends. 




Book 9 - Hints

