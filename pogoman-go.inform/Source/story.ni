"Pogoman Go!" by Jack Welch and Ben Collins-Sussman


The story headline is "An interactive satire".
The release number is 1.
The story creation year is 2016.
The story description is "The world is full of Pogomen, and now that you don’t have a job or family to worry about, you might as well get back to it!"

Use MAX_STATIC_DATA of 200000.
[Use MAX_OBJECTS of 700.
Use Max_DICT_ENTRIES of 1500.]

Use full-length room descriptions, american dialect and the serial comma.

[TODO:  Release along with cover art.]

Include Basic Screen Effects by Emily Short.  [allows us to 'pause the game']
Include Dynamic Objects by Jesse McGrew. [allows runtime creation of pogoballs, &c.]

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

A lift is a kind of room. A lift has a number called currentFloor.

A Katatron is a kind of thing. A katatron has a number called PEC.  The PEC of a katatron is usually 0.
A katatron has a number called MegaCats. The MegaCats of a katatron is usually 0.
A katatron has a truth state called the onHoldFlag. The onHoldFlag of a katatron is usually true.

A victrola is a kind of supporter. 
A victrola has a truth state called isBrokenFlag. The isBrokenFlag of a victrola is usually false.
A victrola has a truth state called isOnFlag. The isOnFlag of a victrola is usually true.

[Note- there is probably only one katatron in existence - the one in Nyantech Tower]

Section 2 - Player properties

The player has a number called pogoLevel.

The player has a number called XP.

The player has a number called distance walked. Distance walked is 0.

The player has a color called team color. The team color of the player is usually none.

[  
   Places - Outside areas like parks
   Structures - Buildings, places with an interior that would have to be entered
   Artifacts - Specific items in outside locations, like a bench, sculpture, etc. 
]


[
  7 Roof
  6 Processing 
  5 Packaging
  4 Infirmary
  3 Managers
  2 Engineers
  1 Interns
  0 Ground
-1 Legal
-2 Rick Astley Shrine
-3 Throne Room
]

Section 3 - Pogo-Things

[These 'kinds' each have a platonic forms in the Void which we dynamically clone as needed during run-time.]

A Pogoball-kind is a kind of thing.  The description is "It's a cheap mass-produced red and white plastic ball.".  Understand "ball" as a pogoball-kind.  The plural of pogoball-kind is PogoBalls.

A Pogochum-kind is a kind of thing.  The description is "Rancid bits of chopped up…. something. Whatever it is, Pogomen are attracted to it. Drop a bit of it, and a Pogoman will come to you!".  Understand "chum" as a pogochum-kind.  The plural of pogochum-kind is PogoChums.

A Pogometh-kind is a kind of thing.  The description is "You’re not sure what’s in it, but it seems to make pogoman feel better, at least until withdrawal sets in.".  Understand "meth" as a pogometh-kind.  The plural of pogometh-kind is PogoMeths.

[No need to dynamicallly clone these kinds-- theyre created in locations at compile-time.]

The pogostop is a backdrop. Understand "stop" as the pogostop.  The description of pogostop is "On your phone, a cartoon signpost with a picture of [the location][one of]. To get goodies from the pogostop, spin it[or][stopping]."

Definition: a quadroom is an okayInitialPogostopLocation if it is not Nyantech Entrance and it is not listed in POGOSTOPLIST and it is not in the Borderlands.

Definition: a room is pogoStopTargeted if it is listed in POGOSTOPLIST.

To distributeTownPogostops:
	repeat with N running from 1 to a random number between MIN_TOWN_POGOSTOPS  and MAX_TOWN_POGOSTOPS:
		add a random okayInitialPogostopLocation to POGOSTOPLIST;
	move the pogostop backdrop to all the pogoStopTargeted rooms.
	
Instead of taking the pogostop for the first time:
	say "The pogostops are just pictures on your phone.[paragraph break]";
	bestow "Get Real".
	
Instead of taking a pogostop:
	say "You can[apostrophe]t."

[The Pogomen themselves!]

A Pogoman is a kind of neuter animal.  The plural of pogoman is pogomen.  Some pogomen are defined by the Table of Creatures.

A pogoman has a number called evolutionLevel.  The evolutionLevel is usually 1.  The description of a pogoman is "A magical creature with combat powers - [description].  Like all Pogomen, it can be evolved."

Instead of taking a pogoman:
	say "You'll have to throw a Pogoball at it to capture it!".


Chapter Declare Constants

INITIAL_POGOLEVEL is always 3.
INITIAL_XP is always 320.

MIN_TOWN_POGOSTOPS is always 10.
MAX_TOWN_POGOSTOPS is always 15.

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

[additional settings TODO: related to random chances of various actions, like pogomen showing up in  a given room]


Chapter Declare Global Variables

[booleans]

SUPPRESSMEDALS is a truth state that varies.

[lists - because Jack loves lists]

POGOSTOPLIST is a list of rooms that varies.
MEDALLIST is a list of text that varies.
HEADING is a list of text that varies. HEADING is {"N", "NE", "E", "SE", "S", "SW", "W", "NW"}.

Chapter Rules Modifications

 For printing a locale paragraph about a door (called the item) 
    (this is the don't mention doors in room descriptions rule): 
    set the locale priority of the item to 0; 
    continue the activity.

[
if a title isn't specified, the printed name will be used. If the printed name isn't specified, the printed name is automatically based on what ever name was used in declaring the object. Most locations are flagged as improper-named so the printed name will work correctly, i.e., "the object" instead of "object", when "the" is a phrase option.
]

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

This is the list exits rule:
	if the possible exits of the location is not "":
		say "[the possible exits of the location][paragraph break]".
		
This is the run from sound rule:
	if the speaker is active and the walkman is not worn:
		say "You run screaming from the LAN closet back into the Lobby, slamming the LAN Closet Door behind you.";
		now the LAN Closet Door is closed;
		move the player to the Lobby.
		
After going from somewhere:
	if the distance walked of the player is listed in PEDOMETER_AWARD_DISTANCES:
		bestow "Traveler: [distance walked of the player] turns spent moving";
	continue the action.
	
After printing the locale description of a room (called the locale):
	if the pogostop is in the locale:
		say "The ";
		say header of the locale;
		say " pogostop is here."

Chapter Activities

Section ShowStatus

To ShowStatus:
	now the left hand status line is "PogoLevel:[pogoLevel of the player],  Team: [team color of the player][if the player carries the badge], Badge: [securityColor of the badge]";
	now the right hand status line is "XP: [XP]".
	

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
		say "The PogoSign spins around and spews out a PogoBall and a piece of PogoChum.[paragraph break][one of]You gain [POGOSTOP_XP_VALUE] XP![or][stopping]";
		awardXP POGOSTOP_XP_VALUE;
		let the New PogoBall be a new object cloned from the PogoBall;
		now the New PogoBall is in the location;
		let the New PogoChum be a new object cloned from the PogoChum;
		now the New PogoChum is in the location;
	otherwise:
		say "That's probably not something you should spin.[paragraph break]".

Section Amusing

[TODO - this should be an out of world action after end of game, but enabled now for testing]
Amusing is an action applying to nothing. Understand "amusing" as amusing.

Carry out amusing:
	say "You reached level [pogoLevel of the player] and obtained [the number of entries in MEDALLIST] medals:[paragraph break]";
	repeat with L running through the MEDALLIST:
		say "     * [L][line break]".
	
Section Evolving

Evolving is an action applying to a thing.  Understand "evolve [thing]" as evolving.

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
	say "[The noun] ripples and glows with energy, shooting sparks in all directions as it hovers and spins in the air.  A moment later, you see that it has evolved into [a new-pogoman]! [paragraph break][one of]You gain [EVOLUTION_XP_VALUE] XP![or][stopping]".
	
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
	say "Credit Roll.... TBD[paragraph break]";
	bestow "So, who is to blame?".
	
Section Waving

Instead of waving hands, say "You wave your cell phone around in the air, dissipating heat."
	
Section Levelling

CheckLevel is an action out of world.
To CheckLevel:
	let goalXP be 100 * (pogoLevel of the player + 1);
	if XP of the player > goalXP:
		now pogoLevel of the player is (XP of the player / 100);  [TODO make this an exponential table]
		say "You glow with power as your PogoLevel rises to [pogoLevel of the player].[paragraph break]".

Section Rebooting

PhoneBooting is an action applying to nothing. Understand "reboot"  or "reinitialize" or "initialize" or "IPL" as phoneBooting.

Carry out phoneBooting:
	try rebooting the phone.

Rebooting is an action applying to one thing. Understand "reboot [something]" as rebooting.

Check rebooting:
	if the noun is not the phone, say "You can't reboot that.[paragraph break]" instead.
	
Carry out rebooting:
	now the phone is not hung;
	say "You reboot your phone."	
	
Instead of doing something when the phone is hung:
	if the current action is phoneBooting or rebooting:
		continue the action;
	otherwise:
		do nothing.
		
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

Before doing something with medals for the first time:
	say "The medals aren’t really tangible. It’s not like you are walking around like Marley’s Ghost, weighed down by medals around your neck. They are just part of the Pogoman Go! game on your phone.[paragraph break]Congratulations! You have earned the [quotation mark]medal self-reference[quotation mark] medal.[paragraph break]Earning that medal, however, creates some sort of recursive loop, which immediately depletes your phone’s resources and locks it up. Sorry.";
	now the phone is hung;
	stop the action.
	
Instead of doing something with the medals:
	say "The medals [one of]aren’t tangible.[or]are a metaphor.[or]only exist on your phone -- they're not real.[or]are like the cake, a lie.[or]are not physically present. Think of them as a data structure within a program running on a computer. That shouldn't be too hard to visualize, right?[stopping][paragraph break]". 
	
To Bestow (medallion - some text):
	let L be text;
	now L is medallion;
	add L to MEDALLIST;
	if SUPPRESSMEDALS is false:
		say "Congratulations! You have earned the [quotation mark][medallion][quotation mark] medal! You gain [MEDAL_XP_VALUE] XP![paragraph break]";		
	awardXP MEDAL_XP_VALUE;
	if the number of entries in MEDALLIST is 3:
		say "([quotation mark]By the way,[quotation mark] your phone mentions parenthetically, [quotation mark]when you get tired of hearing about medals -- and mark my words, you will -- type [quotation mark]mute[quotation mark] to toggle notification about them. Don’t say I never did anything for you. You’re welcome.[quotation mark])[paragraph break]";
		bestow "Now Your Phone Is Talking To You".
		
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

After taking inventory for the first time, bestow "Taking Stock".

After examining a pogoball for the first time, bestow "Attention To Detail".

After examining the phone for the first time, bestow "Technology Explorer".

After examining the Teslatronic Energy Module for the first time, bestow "Awfully Trusting".

After examining a pogochum for the first time, bestow "Suppressed further thought about it because you probably wouldn’t like the truth".

After evolving a pogoman for the first time, bestow "Turned something into something else!".

After evolving a pogoman for the second time, bestow "Did something before and it worked, so I did it again".

After powerUpping a pogoman for the first time, bestow "Made something even bigger".

After transferring a pogoman for the first time, bestow "Practicality in managing resources".

After waiting for the first time, bestow "Loitering Around".


Chapter Not Ready For Prime Time - Not for release

Summarizing is an action out of world. Understand "summary" as summarizing.

Report summarizing:
	say "Summary ... more pending"
	
Badgifying is an action applying to nothing. Understand "badgify" as badgifying.

Carry out badgifying:
	let L be the list of securityColors;
	while entry 1 of L is not the securityColor of the badge:
		rotate L backwards;
	rotate L backwards;
	now the securityColor of the badge is entry 1 of L.

Report badgifying:
	say "Badge color: [securityColor of the badge]."

Section GettingXP

[let player manually increase their own XP for testing]
GettingXP is an action applying to a number.
Understand "getXP [a number]" as gettingXP.
Carry out gettingXP the number understood:
	AwardXP the number understood.

Section GettingPogoman

[forcibly grab a Pogoman without using a pogoball]
GettingPogoman is an action applying to a thing.  Understand "getPogoman [thing]" as gettingPogoman.
Carry out gettingPogoman:
	if the noun is a pogoman:
		now the player carries the noun;
		say "You forcibly grab [the noun].[paragraph break]";
	otherwise:
		say "That's not a pogoman.[paragraph break]".
	
Chapter Initialize

When play begins:
	now SUPPRESSMEDALS is false;
	now pogoLevel of the player is INITIAL_POGOLEVEL;
	now the XP of the player is INITIAL_XP;
	now the player carries the phone;
	now the flavor of the pop-tart is a random flavor;
	ShowStatus;
	distributeTownPogostops;
	move the player to a random okayStartLocation, without printing a room description;
	openGame.
	
To openGame:
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
	say ". You must have drifted off for a bit, but no bother. Time’s a-wasting. The world is full of Pogomen, and now that you don’t have a job or family to worry about, you might as well get back to it![paragraph break]".
	[TODO - uncomment for production - now disabled to allow replays -- >wait for any key]
	
After printing the banner text:
	say "[line break][italic type]Note: You may find the command [roman type][quotation mark]reboot[quotation mark][italic type] helpful.[roman type][paragraph break]"
	

Chapter Every Turn 


Every turn:	
	if the walkman is worn by the player:
		say "[italic type][A Ghastly Astley Lyric][roman type][paragraph break]";
	if the current action is looking or going, follow the list exits rule;
	CheckLevel; [possibly level-up the player]
	ShowStatus;  [display current level, team, XP in status bar]
	
Every turn when Exploring the Tower is happening:
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

Quadroom is a kind of room. A quadroom has a localeDescriptor. The localeDescriptor of a quadroom is usually structure. 

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

Definition: a quadroom (called the QR) is juxtaReservoir if the Reservoir is the room north from the QR.

Definition: a quadroom (called the QR)  is juxtaHighway if the Superhighway is the room west from the QR.

Definition: a quadroom (called the QR) is juxtaTarpit if Tarpit is the room south from the QR.

Definition: a quadroom (called the QR) is juxtaRailway if the Railway is the room east from the QR.

Definition: a direction (called the way) is a bad idea if the room the way from the location is in the Borderlands.

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
		say "Just west of here, cars and trucks roar by at breakneck speeds along Superhighway 17.";
	otherwise:
		if the place is juxtaRailway:
			say "Trains rattle up and down the tracks noisily.";
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

City Park contains an Edator.

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

The description of Nyantech Entrance is "A towering edifice hewn from solid obsidian, the imposing structure is visible from miles away. The entrance beckons to you." Nyantech Entrance is an improper-named structure. The printed name of Nyantech Entrance is "entrance to the Nyantech Tower". Understand "tower" or "obsidian" as Nyantech Entrance. Understand "building" as Nyantech Entrance when the location is Nyantech Entrance. The title of Nyantech Entrance is "Nyantech Tower (outside)".

Instead of entering Nyantech Entrance:
	say "TODO: Scenes within Nyantech[paragraph break]".

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

The description of Spit n' Solder is "The town hardware store. A sun-faded display in the windows advertises [quotation mark]free vacuum tube testing[quotation mark]." Spit n' Solder is an improper-named structure. Understand "hardware" as Spit n' Solder. Understand "building" or "store" as Spit n' Solder when the location is Spit n' Solder. The title of Spit n' Solder is "Spit n[apostrophe] Solder". The printed name of Spit n' Solder is "hardware store".

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

Section Dealing with Quadrooms

Instead of taking a quadroom (called the QTH):
	say "[The QTH] [are] not something you can take."
	
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
	say "No can do. The City Fathers were Ultra-Orthogonalists.[paragraph break]";
	if the player is untainted:
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


Instead of listening when the location is a juxtaRailway quadroom:
	say "[one of]Locomotives scream by[or]A steam engine chugs away[or]A commuter train thunders through[or]A freight train rumbles along the tracks[in random order]."
	
Instead of listening when the location is a juxtaHighway quadroom:
	say "[one of]Cars scream by at breakneck speed[or]A tractor trailer blasts its horn[or]Sounds like traffic on the highway is particularly heavy today[or]A heavy truck rumbles by[in random order]."

Chapter Inside Nyantech

Section 1 - Region HQ

HQ is a region. Lobby, RevolvingDoor, LAN Closet, Cafeteria, Beverages, Snacks, Legal Department, Cousteau Room, Welcome to Beta Testing, Rick Astley Shrine, Support Boom are rooms in HQ.

[Top Level, Interior]

The Cafeteria is north of DeckS. The description of the cafeteria is "Nyantech employees and visiting players alike enjoy heaping platefuls of the gourmet fare served gratis in the company cafeteria. A waiter serves up a plate of [one of]roasted boar[or]braised chicken and kale[or]homemade butter croissants with maple glaze[or]herb-encrusted roast leg of lamb with garlic roasted baby potatoes[or]orecchiette bolognese with chestnuts[or]beautifully prepared magret de canard[or]pan-seared foie gras[or]fingerling rice, sublimated sungold crumble & late-summer rye[or]homespun water pancake[or]fermented anchovy with lime[or]sunflower paté[or]quickened ham, fig, and rubbed watercress[or]salt reduction with eggplant[or]pan-seared artichoke with ramp[or]fingerling peach surprise with surprise folk corn[or]pork bellies with rustic butter[in random order], which diners happily devour in an instant."  The possible exits of the Cafeteria are "The elevator is to the west, the observation deck to the south, and signs point east to the [quotation mark]Pit[quotation mark], northwest to [quotation mark]Beverages[quotation mark], and northeast to [quotation mark]Snacks[quotation mark]."

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
	
To ignore is a verb.

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
		-- otherwise:
			say "TODO: dialogue for unicorn and others".
			
To say employeeRant:
	say "The employee [one of]seems taken aback by your approach[or]startles with a lurch[or]looks around wildly and then stares awkwardly at you[or]struggles to focus on something other than the monocle for once and looks you squarely in the neck[in random order] and [one of]replies[or]says[or]answers[in random order], [quotation mark][one of]Hello, $identity[bracket]player[bracket][team color of the player][close bracket][bracket][pogoLevel of the player][close bracket][close bracket], looks like the weather is going to be &extractWeather([quotation mark]town[quotation mark], +3)[or]Ah, [bracket]one of[close bracket]good[bracket]or[close bracket]great[bracket]or[close bracket]nice[bracket]or[close bracket]wonderful[bracket]or[close bracket]how pleasant[bracket]at random[close bracket] to see a [bracket]one of[close bracket]player[bracket]or[close bracket]visitor[bracket]or[close bracket]gamer[bracket]at random[close bracket] and to have normal social discourse[or]TODO: Expand[stopping].[quotation mark][paragraph break]".
		
	
To say visitorRebuff:
	say "[one of]The player glances briefly at your badge and remarks, [quotation mark]Not now, n00b. Can’t you see I’m pogomaning? Duh[quotation mark][or]The players continue tapping away at their phones, ignoring you[stopping]."

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
	now the CURRENTFLOOR is 4;
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

The description of the Lobby is "A beehive of activity for both employees and visitors, the atmosphere in the luxurious lobby is somehow both corporate and relaxed. There is a constant drone of conversation in the background.[paragraph break]A silvery reception desk hovers in the middle of the lobby." The possible exits of the Lobby are "The elevators are to the west and the revolving door back to the street is to the south. The only other interesting doors here are the emergency stairs to the north and a metallic door to the east labeled [quotation mark]LAN Closet[quotation mark]."

Instead of going east from the Lobby when the walkman is not worn for the first time:
	 say "As you approach the LAN closet, you are filled with unbridled anxiety. You are vaguely aware of a low, rumbling sound, more felt than heard. It fills you with dread. The sound is inescapable. Your clothes feel too tight, your gait becomes unsteady, you wipe the sweat from your forehead. Something in the pit of your stomach is clawing at you; animal instinct wells up within you and you are seized by a sudden urge to flee. With as much composure as you can muster, you back away from the ominous door.[paragraph break]";
	bestow "Terrified of a LAN closet".
	
Instead of going east from the Lobby when the walkman is not worn:
	say "You try, but as you get closer, you are overcome with fear as a deep, bone-rattling sound overwhelms you."
	
After going east from the Lobby for the first time:
	say "With the walkman blaring away in your ears, the arguably melodious strains of Rick Astley drown out the sonic barrier around the LAN closet, and you are able to approach it."

The RevolvingDoor is south of the Lobby. The printed name of the RevolvingDoor is "Revolving Door". The description of the RevolvingDoor is "A revolving brass door." 

The LAN Closet Door is a closed door. The LAN Closet Door is east of the Lobby. The description of the LAN Closet Door is "The [if the LAN Closet Door is open]open[otherwise]shut[end if] white door to the LAN closet[if the player is in the LAN Closet]. A large speaker is mounted on the back of the door[end if]." 

The LAN Closet is east of the Lan Closet Door. The description of the LAN Closet is "19-inch racks from floor to ceiling support stacks of networking hardware with blinking lights. Wires run upward from the racks and disappear above the [if the gearing assembly is visited]wrecked[end if] ceiling. To the right of the racks is a metal panel labeled [quotation mark]CAT CONTROL[quotation mark], with a knob, some lights, and a numerical display." The possible exits of the LAN Closet is "The Lobby is immediately adjacent to the west." 

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
	say "You scamper up the racks and hang onto the bundles of CAT5 cable that runs upward. Pushing aside the ceiling tile, you stick your head up into a dark area above this room. It[apostrophe]s too dark to see much, but feeling around you spot a penlight.";
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

The description of Legal Department is "The room is small and comfortable, with walnut paneling, green wainscot, and a dark grey rug. In the center of the room is a large mahogany desk and an ergonomic rolling black leather executive’s chair. A computer screen is embedded in the desktop."  The possible exits of the Legal Department are "To the north is the exit to the emergency stairs, the elevator is to the west, and to the south is a grey door marked [quotation mark]Beta Testing.[quotation mark]".

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
	say "Text fills the screen and scrolls by a breakneck speed. Most of it looks like dense legal boilerplate but you catch a few phrases like [quotation mark][terms1][quotation mark] and [quotation mark][terms2].[quotation mark][paragraph break]"
	
To say terms1:
	say "[one of]waiver of liability[or]agreement to hold harmless[or]notwithstanding previous claims to the so-called inalienable rights of man[or]lack of human subject protections[or]no warrantee of fitness of purpose[or]threats to personal safety and sanity[or]or however unpleasant they may be[or]unthinkable consequences[or]mere mortality[or]enslavement or imprisonment[or]organ atrophy or dysfunction[or]implosion or inversion[or]voids all provisions of the Declaration of Helsinki[or]hideous side-effects[or]unpredictable losses[or]whether self-inflicted or intentional[or]safe delivery of neither body or soul[or]hunting or being hunted[or]including but not limited to mutilation[or]nocturnal, tentacled, bat-winged monster dwelling[or]indemnity against corporal mental compulsion or control[or]all forms of torture both physical and mental[or]including supernatural events[or]no guarantee of restitution or redress[or]science must supercede those of the individual[or]perfidious propensity towards debasement and ruin[in random order]".
	
To say terms2:
	say "[one of]repatriation of remains (if they can be located)[or]despite all reasonable precautions[or]so-called supernatural forces[or]surviving assets will be conceded to Nyantech[or]implicit lack of good faith[or]or bearing the mark upon its forehead[or]exclusive and perpetual powers over the subject[or]unjustly or indecently committed against the wishes of the accused[or]through such agents as may be conjured[or]without expectation of compensation for mental or physical duress[or]entirely volunteer basis without expectation of remuneration[or]against all foreseeable loss or injury[or]breach will be punishable by excruciating[or]inflicted in the case of violation of any of these terms[or]under no obligation to protect the subject[or]such penalties including evisceration[or]specimens including bodily fluids[or]agrees not to transfer, copy, disclose, provide or otherwise make available[or]to make, use, copy, modify, sell, distribute[or]disciplined in the event of failure[or]in the unfortunate event of failure[or]the mewling pleas of the masses[or]much like an ant might be crushed beneath the heel[in random order]".
	
To say welcomeTester:
	say "[quotation mark]You have been provisionally accepted as beta-tester for the next generation of Nyantech technology. Successful completion of a series of tests of ingenuity and character are required to graduate from probationary status to full beta-tester. These tests have now begun.[quotation mark]".

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

The description of the Rick Astley Shrine is "[one of]You are assaulted by an overwhelming urge to flee: the walls of the room are covered in Rick Astley memorabilia from the 1980s: posters, photos, autographs[or]A room full of Rick Astley memorabilia[stopping]."  The possible exits of the Rick Astley Shrine are "Thankfully, the exit is to the north."

The rickity table is a fixed in place supporter in the Rick Astley Shrine. The description of the rickity table is "A cheap plastic table."

After putting anything on the rickity table, say "The table sags and creaks under the slightest load."

Instead of entering the the rickity table, say "Surely, that would be the end of the rickity table."

Memorabilia are plural-named scenery in the Rick Astley Shrine. The description of the memorabilia is "[one of]Too horrid to contemplate[or]You avert your eyes[or]Your sanity ebbs[or]You are not sure if you can bear any more[or]Mommy, make it stop[or]Closing your eyes helps[stopping]."  Understand "memorabilia" or "poster" or "posters" or "photo" or "photos" or "photograph" or "photographs" or "autograph" or "autographs" as the memorabilia.

The walkman is a wearable prop on the rickity table. The description of the walkman is "This is an original SONY walkman: a portable cassette tape player with earphones. The walkman contains a tape." Understand "sony" or "tape" or "player" or "earphone" or "earphones" as the walkman.

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

The MuskLair is a region. Make Over Suite, Throne Room, and MuskTube Station are rooms in the MuskLair.

MuskTube Station is down from Throne Room.

After going south from the stairsSSB:
	say "As you walk past the red door, you are immediately overcome by a strong, earthy smell -- something animal, perhaps. Your next observation is the richness of the room’s elaborate decorations.[paragraph break]However, before you fully appreciate the fancy paintings and furniture, you are seized by multiple pairs of robotic arms suspended from a track in the ceiling. One lifts you, another removes your now well worn clothes. Gently but with firm intent, the arms flip you over, wash and blow dry your hair, perform a manicure, brush your teeth, and dress you in formal wear. All the while, the robotic assembly moves along its track.[paragraph break]Finally, the robot sets you down in a marble room, hands you a stemmed glass, uncorks a bottle of champagne, and pours your glass full of the bubbly liquid.";
	move the player to Throne Room.
	
The description of the Throne Room is "A marble room with black and white parquet floor, mirrored walls, and chandeliers. The ceiling is an elaborate trompe-l'oeil rendering of the story of Prometheus. At the far end of the magnificent hall is a raised platform lit from above by spotlights."
	

Chapter in the Elevator

The Elevator is a lift. The currentFloor of the Elevator is 0.

Chapter in the Infirmary

The Infirmary is a room. The description of the infirmary is "".

Chapter in the Pod

The MuskPod is a room.

Instead of going a direction (called thataway) when the location is MuskPod, say "At this speed? That would be ludicrous!"

Chapter In Pogoland

A pogoroom is a kind of room.  
A pogoroom can be juxtaLava.
A pogoroom can be juxtaSand.
A pogoroom can be juxtaShark.
A pogoroom can be juxtaCliff.

Pogoland is a region. The Palace, Mountain, Monastery, School House, LIghthouse, Desert, Blacksmith, Farm, Forest, Beach, Canyon, Stadium, Dark Alley, Post Office, Wharf, Pogoland Terminal, Valley, Baseball Diamond, Walmart, Aquarium, Cemetery, Service Station, Dojo, Botanical Garden, and Motel are pogorooms in Pogoland.

The Volcano is a room. The Volcano is north from Mountain. The Volcano is north from Palace. The Volcano is north from Monastery. The Volcano is north from School House. The Volcano is north from Lighthouse. The description of the Volcano is "A fiery mountain that constantly belches molten lava."

The Quicksand is a room. The Quicksand is west from Palace. The Quicksand is west from Desert.  The Quicksand is west from Canyon.  The Quicksand is west from Pogoland Terminal.  The Quicksand is west from Cemetery. The description of quicksand is "A desolate expanse of shifting sands and furtive shadows."

The Shark-Infested Reef is a room. The Shark-Infested Reef is east from Beach. The Shark-Infested Reef is east from Lighthouse. The Shark-Infested Reef is east from Wharf. The Shark-Infested Reef is east from Aquarium. The Shark-Infested Reef is east from Motel. The description of the Shark-Infested Reef is "Beautiful blue-green waters chocked full of voracious sharks."

The Cliff is a room. The Cliff is south from Cemetery. The Cliff is south from Service Station. The Cliff is south from Dojo. The Cliff is south from Botanical Garden. The Cliff is south from Motel. The description of Cliff is "Crumbly chalk cliffs overlooking a ridge of sharp rocks, far below."

Mountain, Palace, Monastery, School House, and Lighthouse are juxtaLava.
Palace, Desert, Canyon, Pogoland Terminal, and Cemetery are juxtaSand.
Beach, Lighthouse, Wharf, Aquarium, and Motel are juxtaShark.
Cemetery, Service Station, Dojo, Botanical Garden, and Motel are juxtaCliff.

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
Post Office is west of Wharf and north of Walmart.
Wharf is north of Aquarium.

Pogoland Terminal is west of Valley and north of Cemetery.
Valley is west of Baseball Diamond and north of Service Station.
Baseball Diamond is west of Walmart and north of Dojo.
Walmart is west of Aquarium and north of Botanical Garden.
Aquarium is north of Motel.

Cemetery is west of Service Station.
Service Station is west of Dojo.
Dojo is west of Botanical Garden.
Botanical Garden is west of Motel.

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

The description of Walmart is "Yes, even in Pogoland, there is a Walmart."

The description of Motel is "A classic two-level drive-in motel with no-vacancy sign out front. It looks a bit dumpy."

The description of Garden is "Trimmed hedges line the paths of this flower garden."

The description of Blacksmith is "Black smoke pours from the chimney and hot coals are visible in the forge."

The description of Farm is "A red farmhouse and tall grain silo stand in front of furrowed fields of wheat."

The description of Aquarium is "The shell-shaped building is surrounded by fountains that shoot water in arcs back and forth above the sidewalk."

The description of Post Office is "A modern building with advertisements in the window about how the post office is still somewhat relevant."

The description of Dark Alley is "A dark, garbage-strewn alley runs between the suspiciously pristine streets of Pogoland."

The description of Pogoland Terminal is "The MuskPod floats next to the platform."

Chapter The Void

section 1 - Plato's Cave

[An unconnected place  where 'original' clonable objects live... very platonic.]
The Void is a room.   
The Void contains a Pogoball-kind called PogoBall.
The Void contains a Pogochum-kind called PogoChum.
The Void contains a Pogometh-kind called PogoMeth.

section 2 - Badge

The badge is a prop in the void. The securityColor of the badge is white.The description of the badge is "The badge is [securityColor of the badge][if the securityColor of the badge is not white] with a white stripe diagonally across it[end if] and the top of the badge is labeled  [quotation mark]Nyantech Headquarters[quotation mark] in the usual font. Below that, a picture of your face overlaid with a bright, [team color of the player] number [pogoLevel of the player]."

Instead of examining the badge for the first time, say "You are pretty sure that Annastasia, the receptionist, had that card in her hand as soon as you walked in and you don[apostrophe]t recall having seen any cameras, so you wonder how the badge was produced -- and so quickly. Ah well, best not to question the technological wizardry that is Nyantech."

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
	now the CURRENTFLOOR is 4;
	move the player to the elevator.
	
Instead of opening an interdicted door for the fifth time:
	move the player to the Infirmary;
	say "The same nurse as before leans over you and removes some stickers attached to your chest and unclips a glowing red device from your right index finger.[paragraph break][quotation mark]Perhaps you should stick to the elevator. I tell you, those stairs can be treacherous. I wish they would give them a coat of non-skid paint. More people lose their footing in there…[quotation mark][paragraph break]Before you can say anything else, she certifies you ship shape and guides you to a waiting elevator. The elevator doors close behind you.";
	now the CURRENTFLOOR is 4;
	move the player to the elevator.

Instead of opening an interdicted door for the sixth time:
	move the player to the Infirmary;
	say "The droning whine fades and becomes a steady beat. The nurse replaces two paddles on a red cart covered in vials, syringes, and empty plastic packets. She pulls a tube from your throat that come to think of it has been puffing air into your lungs, removes a tube from somewhere on your left leg, and pulls off all the stickers and wires.[paragraph break]Wiping the perspiration from her forehead and replacing the hat that must have fallen off at some point, she reassures you, [quotation mark]You took a bit of a spill on the stairs and gave your ankle real twist, but now you’re bright eyed and bushy tailed.[quotation mark]Before you can say anything else, she certifies you ship shape and guides you to a waiting elevator. The elevator doors close behind you.[paragraph break]";
	bestow "What[apostrophe]s wrong with this picture?";
	now the CURRENTFLOOR is 4;
	move the player to the elevator.
	
Instead of opening an interdicted door:
	move the player to the Infirmary;
	say "You wake up in a glowing vat of viscous pink liquid in a room full of blinking lights. Tubes retract from your body and the liquid drains. After a while, you feel well enough to stand up, find your clothes, and get dressed. As you slip on your shoes, the floor begins to move like a conveyor belt, which deposits you in the elevator.";
	now the CURRENTFLOOR is 4;
	move the player to the elevator.
	

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

The phone is a prop carried by the player. The description of the phone is "A brand new Nyantech T8000 cell phone with 6G connectivity, powered by a Teslatronic Energy Module." The phone can be pokedat. The phone is not pokedat. The phone can be hung. The phone is not hung.

The Teslatronic Energy Module is part of the phone. The description of the Teslatronic Energy Module is "The TEM is buried deep within the phone behind layers of radiation shielding, but you are not worried because the phone comes with a guarantee that the exposure is no worse than going through airport screening."

Instead of throwing the phone at:
	try dropping the phone.
	
Instead of attacking the phone:
	try dropping the phone.
	
Instead of dropping the phone:
	say "You could never bring yourself to do that -- you need it to play Pogoman Go!"
	
Before doing something with the phone:
	if the current action is rebooting, charging, eating, examining, dropping, attacking, or throwing at:
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
	say "After beating your head against the ground a few times, you realize... you could just buy a new phone.[paragraph break]A day goes by while you [one of]argue with your mobile phone provider about the terms of your phone plan[or]try to find another T8000 phone -- looks like other Pogoman Go players have been buying them up. Finally, you find one[or]try to recover data off what is left of your SIM card[or]scrape together funds to buy yet another phone[or]max out your last credit card to buy a second-hand T8000 from Craig's List[or]solder together bits of discarded cell phones to make one that works[or]panhandle a used cell phone from strangers[stopping].[paragraph break]";
	openGame;
	try looking.

Book 4 - Stuff


Book 5 - Tables and Boxed Text

Chapter Tables

[TODO fill this out with all pogomen]

Table of Creatures
Name	Description
an Edator	"A creature of note."
a Vicore	"Simple and clean, covered with lines."
an Emaks	"A buffed and buffered creature."
a Plague Rhat	"A mysterious rodent of a vermininous nature."
a Plague Vermin	"A rodent with extra poison."
a Rodentikor	"Too much rodent for mortals to handle."

Table of Evolution
Original	Ev2	Ev3
an Edator	a Vicore	an Emaks
a Plague Rhat	a Plague Vermin	a Rodentikor





Chapter Boxed Text

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


Book 6 - Scenes

Around the Town is a scene. Around the Town begins when play begins. Around the town ends when the location is the lobby.

Exploring the Tower is scene. Exploring the Tower begins when Around the Town ends. Exploring the Tower ends when the location is the MuskPod.




Book 7 - Hints

