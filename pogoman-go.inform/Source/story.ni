"Pogoman Go!" by Jack Welch and Ben Collins-Sussman


The story headline is "An interactive satire".
The release number is 1.
The story creation year is 2016.
The story description is "The world is full of Pogomen, and now that you don’t have a job or family to worry about, you might as well get back to it!"

Use full-length room descriptions, american dialect and the serial comma.

[TODO:  Release along with cover art.]

Include Basic Screen Effects by Emily Short.  [allows us to 'pause the game']
Include Dynamic Objects by Jesse McGrew. [allows runtime creation of pogoballs, &c.]


Book 1 - Mechanics

Chapter Kinds

Section 1 - General

A prop is a kind of thing. It is usually portable.

 Color is a kind of value. The colors are None, Teal, Chartreuse, Alizarin Crimson, Viridian, Papayawhip, and Unbleached Titanium.

securityColor is a kind of value. The securityColors are white, green, blue, red, black, pink, purple, gold.

A door has a securityColor. The securityColor of a door is usually white.

A prop has a securityColor. The securityColor of a prop is usually white.

A chainItem is a kind of thing. A chainItem can be clipped or unclipped. A chainItem is usually clipped, fixed in place scenery.

Flavor is a kind of value. The flavors are strawberry, blueberry, raspberry, apple, cranberry, chocolate, licorice, pumpkin, pine-nut, pesto, liver, watermelon, apricot, teriyaki, chutney, fudge, tiramisu, and cinnamon.

A pastry is a kind of edible prop. A pastry has a flavor. The flavor of a pastry is usually blueberry. [because I like blueberry pastries.]

The saveur du jour is a flavor that varies. 

A pop is a kind of thing. It is usually scenery.

Current floor is a number that varies.

A room has a text called possible exits.

Deck rooms are a kind of room. The description of deck rooms is "[deckDescription]." The possible exits of deck rooms is "[deckExits]."

Staircase rooms are a kind of room. The description of staircase rooms is "[stairwellDescription]."

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

A PogoSpot is a kind of thing.  A PogoSpot is fixed in place.  Understand "spot" and "pogospot" as a PogoSpot.
The description of a PogoSpot is usually "On your phone, a cartoon sign that can be spun."  

A PogoSign is a kind of thing.  A PogoSign is scenery. Understand "sign" as a PogoSign.  The description of a PogoSign is usually "A round, spinnable disc showing a photograph of [location].".

[The Pogomen themselves!]

A Pogoman is a kind of neuter animal.  The plural of pogoman is pogomen.  Some pogomen are defined by the Table of Creatures.

A pogoman has a number called evolutionLevel.  The evolutionLevel is usually 1.  The description of a pogoman is "A magical creature with combat powers - [description].  Like all Pogomen, it can be evolved."

Instead of taking a pogoman:
	say "You'll have to throw a Pogoball at it to capture it!".


Chapter  Declare Global Variables

POGOLEVEL is a number that varies.  POGOLEVEL is 3.  [TODO is this a good starting value?]

XP is a number that varies.  XP is 320.  [TODO is this a good starting value?]

TEAMCOLOR is a color that varies. TEAMCOLOR is usually None.

theTime is a number that varies. theTime is 5.

medalList is a list of text that varies.

pedometer is a number that varies. The pedometer is 0.

Chapter Rules Modifications

 For printing a locale paragraph about a door (called the item) 
    (this is the don't mention doors in room descriptions rule): 
    set the locale priority of the item to 0; 
    continue the activity.

This is the list exits rule:
	if the possible exits of the location is not "":
		say "[the possible exits of the location][paragraph break]".
		
This is the pedometer rule:
	if the current action is going:
		increase the pedometer by one;		
	if the pedometer is listed in {10, 30, 100, 300, 1000, 3000, 10000, 30000}:
		bestow "Traveler: [pedometer] turns spent moving".

Chapter Activities

Section ShowStatus

To ShowStatus:
	now the left hand status line is "PogoLevel: [POGOLEVEL],  Team [TEAMCOLOR]";
	now the right hand status line is "XP: [XP]".
	

Section AwardXP

[moral equivalent of a global game score -- simply "AwardXP 30" when needed, and levelling will happen automatically.]

To AwardXP (award - a number):
	now XP is XP + award.

Chapter Verbs

Section Spinning

[TODO:  randomize what comes out]
[TODO:  user must wait 20 turns before being allowed to spin sign again]

Spinning is an action applying to a thing. Understand "spin [thing]" as spinning.
Carry out spinning:
	if the noun is a PogoSpot:
		say "You probably want to spin the PogoSpot's sign." instead;
	if the noun is a PogoSign:
		say "The PogoSign spins around and spews out a PogoBall and a piece of PogoChum.[paragraph break]";
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
	say "You reached level [POGOLEVEL] and obtained [the number of entries in medalList] medals:[paragraph break]";
	repeat with L running through the medalList:
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
	say "[The noun] ripples and glows with energy, shooting sparks in all directions as it hovers and spins in the air.  A moment later, you see that it has evolved into [a new-pogoman]! [paragraph break]".
	
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

Report helping:
	say "That[apostrophe]s what the internet is for. This had to be cranked out immediately due to market demand. Quality control be damned! Our beta-tester, dear Aunt Grimspackle, seemed reasonably happy without a help feature, so apparently it[apostrophe]s not really important.[paragraph break]";
	bestow "Here, Let me Google that for you".
	
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
	let goalXP be 100 * (POGOLEVEL + 1);
	if XP > goalXP:
		now POGOLEVEL is (XP / 100);  [TODO make this an exponential table]
		say "You glow with power as your PogoLevel rises to [POGOLEVEL].[paragraph break]".

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

Chapter Medals

MEDALVALUE is always 10.
suppressMedals is a truth state that varies.
medalCounter is a number that varies.

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
	add L to medalList;
	if suppressMedals is false:
		say "Congratulations! You have earned the [quotation mark][medallion][quotation mark] medal! You gain [MEDALVALUE] XP![paragraph break]";		
	awardXP MEDALVALUE;
	increment the medalCounter; 
	if the medalCounter is 3:
		say "([quotation mark]By the way,[quotation mark] your phone mentions parenthetically, [quotation mark]when you get tired of hearing about medals -- and mark my words, you will -- type [quotation mark]mute[quotation mark] to toggle notification about them. Don’t say I never did anything for you. You’re welcome.[quotation mark])[paragraph break]";
		bestow "Now Your Phone Is Talking To You".
		
Muting is an action applying to nothing. Understand "mute" as muting.
The muteCounter is a number that varies. 

Check muting:
	If the medalCounter is less than 3:
		say "The phone refuses, [quotation mark]Nah, you have to put up with at least three awards. It builds character.[quotation mark][paragraph break]" instead.
		
Carry out muting:
	increment the muteCounter;
	if suppressMedals is false:
		now suppressMedals is true;
		if the muteCounter is 1:
			say "You phone gushes, [quotation mark]Congratulations! You have earned the [apostrophe]Muted further notifications about medals[apostrophe] medal, which will kick in after this notification. When your ego cries out again for constant affirmation, you can again use the [quotation mark]mute[quotation mark] command to turn it back on. You gain 10 XP!";
			awardXP 10;
		otherwise:
			say "Medals muted!";
	otherwise:
		now suppressMedals is false;
		if the muteCounter is 2:
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
		say "That's not a pogoman".
	
Chapter Initialize

When play begins:
	now suppressMedals is false;
	now the medalCounter is zero;
	now the muteCounter is zero;
	now timesDrowned is zero;
	now timesRunOver is zero;
	now timesTarred is zero;
	now timesRailroaded is zero;
	now the player carries the phone;
	now the saveur du jour is a random flavor;
	ShowStatus;
	move the player to a random okayStartLocation, without printing a room description;
	openGame.
	
To openGame:
	say "You wake up, and it[apostrophe]s ";
	now theTime is a random number from 1 to 24;
	if theTime is less than 12:
		 say "[theTime in words] in the morning";
	otherwise if theTime is 24:
		say "midnight";
	otherwise if theTime is greater than 16:
		say "[theTime minus 12 in words] in the evening";
	otherwise if theTime is greater than 12:
		say "[theTime minus 12 in words] in the afternoon";
	otherwise:
		say "noon";
	say ". You must have drifted off for a bit, but no bother. Time’s a-wasting. The world is full of Pogomen, and now that you don’t have a job or family to worry about, you might as well get back to it![paragraph break]";
	wait for any key.
	
After printing the banner text:
	say "[line break][italic type]Note: You may find the command [roman type][quotation mark]reboot[quotation mark][italic type] helpful.[roman type][paragraph break]"
	

Chapter Every Turn 
[also see scene-specific every turns under Scenes]

Every turn:	
	if the current action is looking or going, follow the list exits rule;
	follow the pedometer rule;
	CheckLevel; [possibly level-up the player]
	ShowStatus;  [display current level, team, XP in status bar]



Book 2 - Places

Chapter Around Town

Section 1 - Framework

Quadroom is a kind of room. 
A quadroom can be nord.
A quadroom can be sud.
A quadroom can be est.
A quadroom can be ouest.

Dung Beetle Mural, Witch Pillory, Old Jail, Cyclorama, Flag Pole, Old Courthouse, Unfathomable Orb, Service Dog Memorial, Spit n' Solder, General Nelson, Church of the Orthogonal Sticks, Crystal Skull, Yummi Tummi Softserve, Giant Chicken, Telescope Nymph, The Gardens of Zarf, Welbourne Travel, Dog Exercise Area, Johnson's Rock, City Park, and Hook & Ladder are nord quadrooms. 

Toxicodendron radicans, Battle of Margot's Pantry, Cranberry Bog, Vuvuzelas For Freedom, Biocontainment Facility, Parking Lot Award, Unearthly Geometry, MarkerSeven, Garden Gnome Without Head, Sister City Friendship Altar, Perilous Passageway, Eagle's Sojourn, Fire Is Our Friend, Year1893, Flan Emporium, Rottweiler Art, Hank's Tavern, Gas Station Gazebo, Old Town Hall, Ashwell-Lott Estate, and Found Art are sud quadrooms.


Dung Beetle Mural, Witch Pillory, Old Jail, Cyclorama, Flag Pole, Old Courthouse, Unfathomable Orb, Service Dog Memorial, Spit n' Solder, Toxicodendron radicans, Battle of Margot's Pantry, Cranberry Bog, Vuvuzelas For Freedom, Biocontainment Facility, Parking Lot Award, Unearthly Geometry, MarkerSeven, Garden Gnome Without Head, Bottle Cap Wall, Krusty Kronuts, and Prissy's Little Sausages are ouest quadrooms.

General Nelson, Church of the Orthogonal Sticks, Crystal Skull, Yummi Tummi Softserve, Giant Chicken, Telescope Nymph, The Gardens of Zarf, Welbourne Travel, Dog Exercise Area, Sister City Friendship Altar, Perilous Passageway, Eagle's Sojourn, Fire Is Our Friend, Year1893, Flan Emporium, Rottweiler Art, Hank's Tavern, Gas Station Gazebo, Old Town Hall, Ashwell-Lott Estate, Found Art, Rotary Clock Tower, Floyd Memorial Bench, and The Olde Train Station are est quadrooms. 

[Borders of the Village to trigger near-death scenes]
A quadroom can be juxtaReservoir. 
A quadroom can be juxtaTarpit.
A quadroom can be juxtaHighway.
A quadroom can be juxtaRailway.

Definition: a quadroom is okayStartLocation if it is not JuxtaReservoir and it is not JuxtaHighway and it is not JuxtaTarpit and it is not JuxtaRailway, and it is not Nyantech Entrance.

The Dung Beetle Mural, Witch Pillory, Old Jail, Johnson's Rock, General Nelson, Church of the Orthogonal Sticks, and Crystal Skull are juxtaReservoir.

The Dung Beetle Mural, Cyclorama, Unfathomable Orb, Bottle Cap Wall, Toxicodendron radicans, Vuvuzelas for Freedom, and Unearthly Geometry are juxtaHighway.

Unearthly Geometry, MarkerSeven, Garden Gnome Without Head, Found Art, Rottweiler Art, Hank's Tavern, and Gas Station Gazebo are juxtaTarpit.

Crystal Skull, Telescope Nymph, Dog Exercise Area, The Olde Train Station, Eagle's Sojourn, Flan Emporium, and Gas Station Gazebo are juxtaRailway.

[Geographic Layout of the Town]
Dung Beetle Mural is west of Witch Pillory and north of Cyclorama.
Witch Pillory is west of Old Jail and north of Flag Pole.
Old Jail is west of Johnson’s Rock and north of Old Courthouse.
Johnson's Rock is west of General Nelson and north of City Park.
General Nelson is west of Church of the Orthogonal Sticks and north of Yummi Tummi Softserve.
Church of the Orthogonal Sticks is west of Crystal Skull and north of Giant Chicken.
Crystal Skull is north of Telescope Nymph.  The printed name of Telescope Nymph is "Nymph with Telescope".

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
The printed name of Nyantech Entrance is "Nyantech Tower (outside)".
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

Perilous Passageway is west of Eagle's Sojourn and north of Year1893. The printed name of Year1893 is "1893".
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
The printed name of MarkerSeven is "Marker 0.7".
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

LocaleDescriptor is a kind of value. The LocaleDescriptors are place, structure, and artifact.

[  
   Places - Outside areas like parks
   Structures - Buildings, places with an interior that would have to be entered
   Artifacts - Specific items in outside locations, like a bench, sculpture, etc. 
]

A proxy-scenery is a kind of backdrop.  A proxy-scenery has a localeDescriptor.  The localeDescriptor of a proxy-scenery is usually structure.

[
   Proxy objects allow the player to use the place name, which often refers to the main feature in the location.
   I wanted to create it as a kind of scenery, but for some reason, I don't seem to be able to sub-class scenery.
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
 
The description of City Park is "A small park, well groomed, with a few trees and hedges."  The Park contains an Edator. 

proxy-cityPark is a privately-named place proxy-scenery in City Park. The printed name of proxy-cityPark is  "City Park". Understand "city" or "park" as proxy-cityPark. 

The trees are scenery in City Park. The description of the trees is "A variety of trees are scattered throughout the park to provide shade for picnickers.". Understand "tree" as trees.

Instead of climbing the trees, say "That would be a waste of your time: there are no pogomen in the trees. You can catch them just as easily from the ground."

The hedges are scenery in City Park. The description of the hedges is "Tall, thorny shrubs surround the park." Understand "hedge" or "shrub" or "shrubs" or "bush" or "bushes" or "shrubbery" or "shrubberies" as hedges.

Instead of entering or climbing the hedges, say "Ow. No thanks."

[Old Courthouse]

The description of Old Courthouse is "A brick court house, probably of historical significance."

proxy-OldCourthouse is a privately-named proxy-scenery in Old CourtHouse. The printed name of proxy-OldCourthouse is "Old Court House". Understand "old" or "courthouse" or "court" as proxy-OldCourthouse. Understand "building" or "brick"  as proxy-OldCourthouse when the location is Old Courthouse.

[Old Jail]

The description of the Old Jail is "[one of]A solidly built brick building that was once a one-room jail.[paragraph break]Annoyingly, an in-game advertisement pops up on your phone:[paragraph break][quotation mark]If you like this game, check out our single-room escape adventure comedy, Hoosegow, which is available for online for play or download.[quotation mark][paragraph break]Disgusted with [if the dog exercise area is unvisited]the[otherwise]yet another[end if] blatant attempt at self-promotion, you angrily swipe the ad off your screen[or]A single-room jailhouse that once imprisoned famous outlaw Muddy Charlie[stopping]."

proxy-OldJail is a privately-named proxy-scenery in Old Jail. The printed name of proxy-OldJail is "Old Jail". Understand "old" or "jail" or "clink" or "lock-up" or "lock up" or "hoosegow" as proxy-OldJail. Understand "building" or "brick"  as proxy-OldJail when the location is Old Jail.

Instead of entering proxy-OldJail, say "You aren[apostrophe]t sure whether the Old Jail is still in business or not. Given that, you[apostrophe]d just as soon stay on this side of the bars."

[Johnson's Rock]

The description of Johnson's Rock is  "A historical marker next to a bare patch of ground describes Johnson's Rock, an object that has long puzzled local historians. The stone is also the subject of yearly high school pranks, and apparently has been stolen yet again.".  A Rock PogoSpot is a PogoSpot in Johnson's Rock. Rock PogoSign is a PogoSign in Johnson's Rock.

proxy-JohnsonsRock is a privately-named artifact proxy-scenery in Johnson's Rock. The printed name of proxy-JohnsonsRock is "Johnson's Rock". Understand "johnson" or "johnsons" or "johnson's" or "rock" or "Johnson's rock" or "Johnsons Rock" as proxy-JohnsonsRock. Understand "rock"  or "stone" or "ground" as proxy-JohnsonsRock when the location is Johnson's Rock.

Instead of taking proxy-JohnsonsRock, say "Too late. Some kids already got to it."

[Nyantech Entrance]

The description of Nyantech Entrance is "A towering edifice hewn from solid obsidian, the imposing structure is visible from miles away. The entrance beckons to you."

proxy-Nyantech is a privately-named structure proxy-scenery in Nyantech Entrance. The printed name of proxy-Nyantech is "Entrance to the Nyantech Tower". Understand "nyantech" or "entrance" or "tower" or "obsidian" or "nyantech tower" or "entrance to nyantech tower" or "tower entrance" as proxy-Nyantech. Understand "building"   as proxy-Nyantech when the location is Nyantech Entrance.

Instead of entering proxy-Nyantech:
	say "TODO: Scenes within Nyantech[paragraph break]".

[Ashwell-Lott Estate]

The description of Ashwell-Lott Estate is "A 19th Century manor house, now a winery."

proxy-AshwellLott is a privately-named structure proxy-scenery in Ashwell-Lott Estate. The printed name of proxy-AshwellLott is "Ashwell-Lott Estate". Understand "ashwell" or "ashwell-lott" or "lott" or "estate" or "ashwell-lott estate" as proxy-AshwellLott. Understand "building" as proxy-AshwellLott when the location is Ashwell-Lott Estate.

[Garden Gnome]

The description of Garden Gnome Without Head is "A decapitated garden gnome pokes out from a poorly maintained lawn.[one of] This must have been a portal held over from the previous Nyantech game, Ink Grass.[or][stopping]".

proxy-GardenGnome is a privately-named artifact proxy-scenery in Garden Gnome Without Head. The printed name of proxy-GardenGnome is "Garden Gnome Without Head". Understand "gnome" or "without" or "head" or "decapitated" or "decapitated gnome" or "gnome sculpture" or "gnome statue" or "garden gnome without head" or "garden gnome" as proxy-GardenGnome. Understand "sculpture" or "art" as proxy-GardenGnome when the location is Garden Gnome Without Head.

Instead of attacking the proxy-GardenGnome, say "Have some pity -- it[apostrophe]s already missing it[apostrophe]s head."  

The lawn is a scenery in the Garden Gnome Without Head. The description of the lawn is "A real disgrace for the neighborhood, it is overgrown with high weeds." Understand "weed" or "weeds" or "grass" as the lawn. 

Instead of entering the lawn, say "No thanks. Ticks!"

The severed head is a prop. It is in the void. The description of the severed head is "An absurdly happy little face with a saccharine smile -- everytime you see, you are filled with rage. No wonder someone knocked it off."

Instead of searching the lawn:
	say "You poke carefully through the weeds.[paragraph break]What's this?[paragraph break]Ah! You've found the gnome's head! It must have been laying there for years.";
	move the severed head to the player;
	bestow "Found A Garden Gnome's Severed Head".
	
[Parking Lot]

The description of Parking Lot Award is "A tarnished brass plaque next to this empty and entirely unremarkable parking lot proclaims that it won a design award for some incomprehensible reason. "

proxy-ParkingLot is a privately-named place proxy-scenery in Parking Lot Award. The printed name of proxy-ParkingLot is "Parking Lot Award". Understand "parking" or "lot" or "award" or "parking lot" or "parking lot award" as proxy-ParkingLot. Understand "plaque" or "brass" as proxy-ParkingLot when the location is Parking Lot Award.

[Old Town Hall]

The description of Old Town Hall is "A single story edifice of white-washed roughly hewn oak panels, the Old Town Hall is now used for wedding receptions, Bar Mitzvahs, and Thursday-night bear wrestling."

proxy-OTH is a privately-named structure proxy-scenery in Old Town Hall. The printed name of proxy-OTH  is "Old Town Hall". Understand "old" or "town" or "hall" or "old town hall" as proxy-OTH . Understand "building" as proxy-OTH  when the location is Old Town Hall.

[Spit n' Solder Hardware]

The description of Spit n' Solder is "The town hardware store. A sun-faded display in the windows advertises [quotation mark]free vacuum tube testing[quotation mark]."

proxy-SnS is a privately-named structure proxy-scenery in Spit n' Solder. The printed name of proxy-SnS is "Spit n' Solder". Understand "spit" or "solder" or "hardware" or "spit n' solder" or "spit and solder" as proxy-SnS. Understand "building" as proxy-SNS when the location is Spit n' Solder.

[Rotary Clock Tower]

The description of Rotary Clock Tower is "Off to one side of the park, the clock tower rotates once every twenty-four hours."

proxy-RCT is a privately-named artifact proxy-scenery in Rotary Clock Tower. The printed name of proxy-RCT is "Rotary Clock Tower". Understand "rotary" or "clock" or "tower" or "rotary clock" or "clock tower" or "rotary clock tower" as proxy-RCT. 

[Floyd Memorial]

The description of Floyd Memorial Bench is "A wooden bench with an inset black nameplate."

The floydBench is a privately-named enterable scenery supporter in Floyd Memorial Bench. The printed name of the floydBench is "bench". The description of the floydBench is "The  white lettering of the nameplate reads [quotation mark]In Memory of Floyd[quotation mark]." Understand "chair" or "bench" or "wood" or "wooden" or "name" or "plate" or "floyd" or "floyd bench" or "memorial bench" or "floyd memorial bench" or "nameplate" as floydBench.

[Giant Chicken]

The description of Giant Chicken is "A giant chicken statue made of recycled swizzle sticks."

proxy-GiantChicken is a privately-named artifact proxy-scenery in Giant Chicken. The printed name of proxy-GiantChicken is "Giant Chicken Statue". Understand "giant" or "chick" or "giant chicken" or "chicken statue" or "giant chicken statue" as proxy-GiantChicken. Understand "sculpture" or "statue" or [even, liberally] "art" as proxy-GiantChicken when the location is Giant Chicken.

The swizzle sticks are part of the proxy-GiantChicken. The description of the swizzle-sticks is "How many drinks must have been stirred in this effort?"

[Welbourne Travel]

The description of Welbourne Travel is "Maps of various adventures fill the windows of this travel agency."

proxy-Welbourne is a privately-named structure proxy-scenery in Welbourne Travel. The printed name of proxy-Welbourne is "Welbourne Travel Agency". Understand "welbourne" or "travel" or "agency" or "travel agency" or "welbourne travel" as proxy-Welbourne. Understand "building" or "store" as proxy-Welbourne when the location is Welbourne Travel.

[Hook & Ladder]

The description of Hook & Ladder is "The home of Fire Bridage Number 12."

proxy-H&L is a privately-named structure proxy-scenery in Hook & Ladder. The printed name of proxy-H&L is the "Firehouse". Understand "hook" or "ladder" or "hook and ladder"  or "hook & ladder" as proxy-H&L. Understand "building" as proxy-H&L when the location is Hook & Ladder.

[Prissy's Little Sausages]

The description of Prissy's Little Sausages is "Ninety varieties of miniature sausage, all served with Prissy’s special sauce."

proxy-PLS is a privately-named structure proxy-scenery in Prissy's Little Sausages. The printed name of proxy-PLS is "Prissy's Little Sausages". Understand "prissy" or "prissy's" or "little" or "sausages" or "prissy's little sausages" or "prissy's little" or "little sausages" as proxy-PLS. Understand "building" or "store" or "restaurant" as proxy-PLS when the location is Prissy's Little Sausages.

[Yummi Tummi Softserve]

The description of Yummi Tummi Softserve is "Pink robotic pigs rollerskate between tables serving up sundaes, cones, and floats."

proxy-YummiTummi is a privately-named artifact proxy-scenery in Yummi Tummi Softserve. The printed name of proxy-YummiTummi is "Yummi Tummi Softserve". Understand "ice" or "cream" or "soft" or "serve" or "softserve" or "yummi" or "tummi" or "parlor" as proxy-YummiTummi. Understand "building" or "restaurant" as proxy-YummiTummi when the location is Yummi Tummi Softserve.

[TODO: implement robots, tables, ice cream?]

[Service Dog Memorial]

The description of Service Dog Memorial is "[quotation mark]Scruffy, 3rd battalion, 5th regiment. Her service will be remembered.[quotation mark]".

proxy-ServiceDog is a privately-named artifact proxy-scenery in Service Dog Memorial. The printed name of proxy-ServiceDog is "Service Dog Memorial". Understand "service" as proxy-ServiceDog. Understand "statue" or "sculpture" or "memorial" or "dog" as proxy-ServiceDog when the location is Service Dog Memorial.

[The Gardens of Zarf]

The description of The Gardens of Zarf is "A well-curated selection of carnivorous plants. A sign warns away small children and pets."  

The gardenObject is a privately-named scenery in The Gardens of Zarf. The printed name of the gardenObject is "garden". Understand "garden" or "flowers" or "marigolds" or "Zarf" as the gardenObject. The description of the gardenObject is "A bright and cheery assortment of well-tended flowers. Nothing ominous about them at all.".

The sign is scenery in The Gardens of Zarf. The description of the sign is "[zarfSign]". 

To say zarfSign:
	say "The fine print on the sign reads: [quotation mark]Warning: Rated Relatively Cruel[quotation mark][paragraph break]";
	bestow "Eye for Detail".

Instead of entering the gardenObject:
	say "Weeds grab at your feet and a sunflower nearly slices your head off. While struggling free, the azalias grab your wrist and shake the phone free. It falls into a horde of marigolds that rip it to pieces.";
	phoneDeath.

[Flan Emporium]

The description of Flan Emporium is "Flan! Flan! Flan! Everybody wants some."

FlanEmporiumProxy is a privately-named proxy-scenery in Flan Emporium. The printed name of FlanEmporiumProxy is "Flan Emporium". Understand "flan" or "emporium" as FlanEmporiumProxy. Understand "building" or "store" as FlanEmporiumProxy when the location is Flan Emporium.

Instead of eating FlanEmporiumProxy, say "Unfortunately, there is no tasty flan laying about."
Instead of drinking FlanEmporiumProxy, say "Flan is more a solid than a liquid, and in any event, there isn't any here."

[General Nelson]
	
The description of General Nelson is "A larger than life statue of General Bosphorus [quotation mark]Rabid Mongrel[quotation mark] Nelson."

proxy-Nelson is a privately-named artifact proxy-scenery in General Nelson. The printed name of proxy-Nelson is the "Statue of General Nelson". Understand "statue" or "general" or "nelson"  as proxy-Nelson. Understand "scultpure" or "art" as proxy-Nelson when the location is General Nelson.

[Church of the Orthogonal Sticks]

The description of Church of the Orthogonal Sticks is "The church is constructed entirely of Lincoln Logs except for the stained glass."

proxy-COS is a privately-named proxy-scenery in Church of the Orthogonal Sticks. The printed name of proxy-COS is "Church of the Orthogonal Sticks". Understand "church" or "orthogonal" or "sticks" or "church of the orthogonal sticks" or "lincoln" or "logs" as proxy-COS. Understand "building" as proxy-COS when the location is Church of the Orthogonal Sticks.

The stained glass is scenery in the Church of the Orthogonal Sticks. The description of the stained glass is "The ornate windows cast right-angled reflections everywhere." Understand "stained" or "glass" or "window" or "windows" as the stained glass.

Instead of doing something other than examining with the stained glass, say "You can't, the windows are too high up."

[Witch Pillory]

The description of Witch Pillory is "This site commemorates the town’s fine tradition of witch hunts in the 1600s. [one of] Way to go founding fathers![or][stopping]".

proxy-Pillory is a privately-named artifact proxy-scenery in Witch Pillory. The printed name of proxy-Pillory is "Witch Pillory". Understand "witch" or "pillory" as proxy-Pillory. 

Instead of entering the proxy-Pillory, say "The pillory is only for convicted witches. All other unauthorized use is prohibited."

[Flag Pole]

The description of Flag Pole is "A hundred-foot flag pole lit day and night by floodlights around its base."

proxy-FlagPole is a privately-named artifact proxy-scenery in Flag Pole. The printed name of proxy-FlagPole is "flag pole". Understand "pole" or "flag pole" as proxy-FlagPole. 

The flagProxy is privately-named scenery in Flag Pole.  The printed name of the flagProxy is "flag". The description of the flagProxy is "It waves proudly in the slight breeze." Understand "flag" or "banner" as flagProxy.

Instead of climbing the proxy-FlagPole, say "Inadvisable. The location is way too public, particularly with all those lights shining on it."

Instead of going up when the player is in Flag Pole:
	try climbing the proxy-Flagpole.

Instead of doing something other than examining or flagging with the flagProxy, say "It is up to high."

Flagging is an action applying to one thing. Understand "raise [something]" or "lower [something]" as flagging when the player is in Flag Pole.

Check Flagging:
	if the noun is the flagProxy:
		say "There are no ropes to raise or lower the flag. The flag pole was installed by an expensive contractor more than two decades ago, but the plans provided did not call for any mechanism to raise or lower the flag. The best the town has managed is to put lights all around it. When that flag wears out, they'll just have to replace the entire thing.";
	otherwise:
		say "You don't see how that would help the situation."

[Krusty Kronuts]

The description of Krusty Kronuts is "Home of the caramel-glazed toroiducken."

proxy-KK is a privately-named structure proxy-scenery in Krusty Kronuts. The printed name of proxy-KK is "Krusty Kronuts". Understand "krusty" or "kronuts" or "krusty kronuts" as proxy-KK. Understand "building" or "store" or "restaurant" as proxy-KK when the location is Krusty Kronuts.

[Cyclorama]

The description of Cyclorama is "The indoor bicycle track yields important radionuclides for pharmaceutical use."

proxy-Cyclorama is a privately-named structure proxy-scenery in Cyclorama. The printed name of proxy-Cyclorama is "Cyclorama". Understand "cyclorama" as proxy-Cyclorama. Understand "building" as proxy-Cyclorama when the location is Cyclorama.

[Biocontainment Facility]

The description of Biocontainment Facility is "[bioConDescription]".

To say bioConDescription:
	if the Biocontainment Facility is unvisited, say "You are vaguely aware that something isn’t right here. Gaunt, pale forms lurch and moan as they pour out of the vaccine laboratory. There’s something wrong with them, but you can’t quite put your finger on it.[paragraph break]Oh, wait, that [italic type]is[roman type] weird - none of them have phones...[paragraph break]";
	say "The zombie horde mulls aimlessly, eyes down, faces blank, trudging their way through unlife. They don’t seem to notice folks playing pogoman.";
	if the Biocontainment Facility is unvisited:
		say line break;
		bestow "Just One of the Boys".

proxy-zombie is a privately-named structure proxy-scenery in Biocontainment Facility. The printed name of proxy-zombie is "Biocontainment Facility". Understand "biocontainment" or "facility" or "bioweapons"  or "laboratory" or "lab" or "vaccine" or "hospital"  as proxy-zombie. Understand "building" as proxy-zombie when the location is Biocontainment Facility.

[Battle of Margot's Pantry]

The description of Battle of Margot's Pantry is "The Descendants of Posterity have erected a plaque commemorating this turning point in western civilization. In modern times, it appears to be a pizzeria."

proxy-Pantry is a privately-named structure proxy-scenery in Krusty Kronuts. The printed name of proxy-Pantry is "Dino's Pizza". Understand "dino's pizza" or "pizzeria" or "dino" or "pizza" or "margot" or "margot's" or "pantry" or "Margot's pantry" or "dinos pizza" or "margots pantry" or "battle" or "battle of margots pantry" or "battle of margot's pantry" as proxy-Pantry. Understand "building" or "store" or "restaurant"  or "plaque" as proxy-Pantry when the location is Battle of Margot's Pantry.

[Gas Station Gazebo]

The description of Gas Station Gazebo is "Yet another gas station gazebo.[one of] Wht is it with gas stations and gazebos?[or][stopping]".

proxy-GSG is a privately-named artifact proxy-scenery in Gas Station Gazebo. The printed name of proxy-GSG is "gas station gazebo". Understand "gas" or "station" or "gas station" or "gazebo" or "gas station gazebo" as proxy-GSG. Understand "building"  as proxy-GSG when the location is Gas Station Gazebo.

[Dung Beetle Mural]

The description of Dung Beetle Mural is "Dark earth tones and impasto technique; you're not sure of the medium."

proxy-Dung is a privately-named artifact proxy-scenery in Dung Beetle Mural. The printed name of proxy-Dung is "dung beetle mural". Understand "dung" or "beetle" or "mural" or "dung beetle" or "beetle mural" or "dung beetle mural" as proxy-Dung. Understand "sculpture" or "statue" or [even, liberally] "art" as proxy-Dung when the location is Dung Beetle Mural.

[Hank's Tavern]

The description of Hank's Tavern is "Now an artist’s colony, the tavern boasts pottery wheels, arc-welding, and improvised explosive courses at night."

proxy-Hank is a privately-named structure proxy-scenery in Hank's Tavern. The printed name of proxy-Hank is "Hank's Tavern". Understand "hank" or "hanks" or "hank's" or "hank's tarvern" or "tavern" or "hanks tarvern" as proxy-Hank. Understand "building" or "store" or "restaurant"  or "bar" or "pub" or "club" as proxy-Hank when the location is Hank's Tavern.

[Olde Train Station]

The description of the Olde Train Station is "Still a functioning passenger train station, since the early 19th Century, the Olde Train Station (formerly, the Newe Train Station) has been a port of call – home away from home – for diplomats, hustlers, entrepreneurs, and… wanderers."

proxy-TrainStation is a privately-named structure proxy-scenery in Olde Train Station. The printed name of proxy-TrainStation is "train station". Understand "old" or "train" or "station" or "olde" or "Olde Train Station" or "Train Station" as proxy-TrainStation. Understand "building" as proxy-TrainStation when the location is Olde Train Station.

[Dog Exercise Area]

The description of the Dog Exercise Area is "[one of]Dogs can be seen practicing yoga and synchronized barking at all hours of the day (much to the annoyance of their neighbors).[paragraph break]An[if the Old Jail is visited]other[end if] in-game advertisement pops up on your phone:[paragraph break][quotation mark]If you like like dogs, check out our canine-centric sci fi game, Rover[apostrophe]s Day Out, which is available online for play or download.[quotation mark][paragraph break]You hastily swipe the shameless advertisement from your phone[or]A large, open field where dogs and owners play[stopping]."

proxy-DogExercise is a privately-named place proxy-scenery in Dog Exercise Area. The printed name of proxy-DogExercise is "dog exercise area". Understand "dog" or "exercise" or "area" or "exercise area" or "dog exercise area" or "dog area" or "field" as proxy-DogExercise. Understand "park" as proxy-DogExercise when the location is Dog Exercise Area.

[Bottle Cap Wall]

The description of Bottle Cap Wall is "A wall made entirely of bottle caps."

proxy-BCW is a privately-named artifact proxy-scenery in Bottle Cap Wall. The printed name of proxy-BCW is "bottle cap wall". Understand "bottle" or "cap" or "wall" or "bottle cap" or "botttle cap mural" as proxy-BCW. Understand "sculpture" or "statue" or [even, liberally] "art" as proxy-BCW when the location is Bottle Cap Wall.

[Porcelain Parrot]

The description of Porcelain Parrot is "A source of amusement for neighborhood school children."

proxy-Parrot is a privately-named artifact proxy-scenery in Porcelain Parrot. The printed name of proxy-Parrot is "porcelain parrot". Understand "porcelain" or "parrot" or "porcelain parrot" as proxy-Parrot. Understand "sculpture" or "statue" or [even, liberally] "art" as proxy-Parrot when the location is Porcelain Parrot.

[Mile Marker 0,7]

The description of MarkerSeven is "Demonstrating the importance of relativity, the mile marker is unquestionably 0.7 miles from something -- it just doesn’t say what."

proxy-MarkerSeven is a privately-named artifact proxy-scenery in MarkerSeven. The printed name of proxy-MarkerSeven is "mile marker 0.7". Understand "mile" or "marker" or "post" as proxy-MarkerSeven. 

[Unfathomable Orb]

The description of Unfathomable Orb is "[one of]A lawn orb, the why of which is uncertain and, indeed,  perhaps unknowable.[or]An epistemiologically indeterminate orb[or]An orb. Or is it?[or]A spherical tesseract.[or]An equi-improbable arrangement of uncertainties about a central point.[or]An unusual piece of lawn furniture.[stopping]".

proxy-Orb is a privately-named artifact proxy-scenery in Unfathomable Orb. The printed name of proxy-Orb is "unfathomable orb". Understand "unfathomable" or "orb" or "unfathomable orb" as proxy-Orb. Understand "lawn" or "furniture" or "lawn furniture" or "sculpture" or "statue" or [even, liberally] "art" as proxy-Orb when the location is Unfathomable Orb.

[Rottweiler Art]

The description of Rottweiler Art is "They may be good guard dogs, but they are lousy artists. The sculpture lacks subtlety."

proxy-Rottweiler is a privately-named artifact proxy-scenery in Rottweiler Art. The printed name of proxy-Rottweiler is "unfathomable orb". Understand "rottweiler" or "rottweiler art" as proxy-Rottweiler. Understand "sculpture" or "statue" or "art" as proxy-Rottweiler when the location is Rottweiler Art.

[Sister City Friendship Altar]

The description of Sister City Friendship Altar is "A timeworn granite slab with furrows cut to drain towards the edges, the arcane runes at its base are illegible."

proxy-Altar is a privately-named artifact proxy-scenery in Sister City Friendship Altar. The printed name of proxy-Altar is "Sister City Friendship Altar". Understand "sister" or "friendship" or "alter" or "sister city friendship altar" as proxy-Altar. Understand "city"  or [questionably] "art" as proxy-Altar when the location is Sister City Friendship Altar.

[1893]

The description of Year1893 is "A plaque both commemorating the failure to hire a town historian in 1893 and bemoaning the absence of other recorded events for that year." The printed name of Year1893 is "1893".

proxy-Year1893 is a privately-named artifact proxy-scenery in Year1893. The printed name of proxy-Year1893 is "plaque commemorating the year 1893". Understand "1893" as proxy-Year1893. Understand "plaque" as proxy-Year1893 when the location is Year1893.

[Eagle's Sojourn]

The description of Eagle's Sojourn is "A bas relief carving of Dwight Eisenhower dressed as a cowboy and riding an eagle to the moon."

proxy-Ike is a privately-named artifact proxy-scenery in Eagle's Sojourn. The printed name of proxy-Ike is "Eagle's Sojourn". Understand "eagles" or "eagle's" or "sojourn" or "eagles sojourn" or "eagle's sojourn"  or "carving" or "moon" or "cowboy" as proxy-Ike. Understand "sculpture" or "statue" or "art" as proxy-Ike when the location is Eagle's Sojourn.

[Nymph with Telescope]

The description of Telescope Nymph is "Based on one of Shakespeare’s less known works, in this sculpture, the titular nymph searches the sky for her lost salmon." 

proxy-Nymph is a privately-named artifact proxy-scenery in Telescope Nymph. The printed name of proxy-Nymph is "Nymph With Telescope". Understand "nymph" or "telescope" or "nymph with telescope" as proxy-Nymph. Understand "sculpture" or "statue" or "art" as proxy-Nymph when the location is Telescope Nymph.

[Fire is our Friend]

The description of Fire Is Our Friend is "An eternal flame burns bright above a bronze brazier held aloft by the Four Horsemen of the Apocalypse. The plaque notes that the piece was donated to the town by Fire Bridge 11."

proxy-FOF is a privately-named artifact proxy-scenery in Fire Is Our Friend. The printed name of proxy-FOF is "Fire is our Friend". Understand "fire" or "friend" or "fire is our friend" or "eternal" or "flame" or "eternal flame" or "brazier" or "horsemen" or "four horsemen of the apocalpyse" as proxy-FOF. Understand "sculpture" or "statue" or "art" as proxy-FOF when the location is Fire Is Our Friend.

[Unearthly Geometry]

The description of Unearthly Geometry is "You can only stomach a momentary, sidelong glance at the fecund immensity of the inchoate mass of spongy protoplasm and the loathsome writhing knot of vermiculous tentacles that purports to be a kindergarten art project."

proxy-FOF is a privately-named artifact proxy-scenery in Fire Is Our Friend. The printed name of proxy-FOF is "Fire is our Friend". Understand "fire" or "friend" or "fire is our friend" or "eternal" or "flame" or "eternal flame" or "brazier" or "horsemen" or "four horsemen of the apocalpyse" as proxy-FOF. Understand "sculpture" or "statue" or "art" as proxy-FOF when the location is Fire Is Our Friend.

[Cranberry Bog]

The description of Cranberry Bog is "The town’s cranberry bog, a quiet pond filled with the delectable but bitter berries. Bodies are pulled from its depths with some regularity, but at least they are well-preserved by the acidity of the bog."

proxy-Bog is a privately-named place proxy-scenery in Cranberry Bog. The printed name of proxy-Bog is "cranberry bog". Understand "cranberry" or "bog" or "cranberry bog" or "pond" as proxy-Bog. 

Instead of searching the proxy-bog:
	say "[one of]You find nobody. Get it? No body[or]You find nobody[stopping]."

[Found Art]

The description of Found Art is "A single screw attached to a surfboard.[one of] This is what counts as art these days. Jeesh.[or][stopping]".

proxy-FoundArt is a privately-named artifact proxy-scenery in Found Art. The printed name of proxy-FoundArt is "Found Art". Understand "found" or "surfboard" or "screw" or "found art" as proxy-FoundArt. Understand "sculpture" or "statue" or "art" as proxy-FoundArt when the location is Found Art.

Instead of searching the proxy-FoundArt:
	say "It is right in front of you."
	
[Crystal Skull]

The description of Crystal Skull is "There isn’t much left of the Salt Skull exhibit. Occasionally, deer walk through town just to lick it."

proxy-Skull is a privately-named artifact proxy-scenery in Crystal Skull. The printed name of proxy-Skull is "crystal skull". Understand "crystal" or "skull" or "crystal skull" or "exhibit" as proxy-Skull. Understand "sculpture" or "statue" or "art" as proxy-Skull when the location is Crystal Skull.

Instead of tasting proxy-skull:
	say "It tastes like deer spittle."

[Vuvuzelas]

The description of Vuvuzelas For Freedom is "A bronze plate is set into the sidewalk here to commemorate the Vuvuzela Uprising of 1893."

proxy-Vuvuzela is a privately-named artifact proxy-scenery in Vuvuzelas For Freedom. The printed name of proxy-Vuvuzela is "commemorative plaque about the Vulvuzela Uprising of 1893". Understand "vuvuzela" or "uprising" or "bronze" or "plate" or "sidewalk" as proxy-Vuvuzela. Understand "commemorative" or "plaque" as proxy-Vuvuzela when the location is Vuvuzelas For Freedom.

[Poison Ivy]

The description of Toxicodendron radicans is "In the middle of this field, there is a small sign, [quotation mark]Warning: Poison Ivy.[quotation mark]."

proxy-PoisonIvy is a privately-named artifact proxy-scenery in Toxicodendron radicans. The printed name of proxy-PoisonIvy is "field of poison ivy". Understand "poison" or "ivy" or "poison ivy" or "sign" as proxy-PoisonIvy. Understand "field" as proxy-PoisonIvy when the location is Toxicodendron radicans.

[Perilous Passageway]

The description of Perilous Passageway is "A disgusting passageway."

Section Dealing with Proxy-Scenery

Instead of examining a proxy-scenery:
	try looking.
	
Instead of entering a proxy-scenery (called the place):
	if the localeDescriptor of the place is:
		-- structure:
			say "No time to explore every building in town. Must catch pogomen!";
		-- place:
			say "You[apostrophe]re already in the [location].";
		-- artifact:
			say "You can[apostrophe]t, but you are standing right next to it."
			
Section Sticking to the Straight and Narrow

A direction can be blasphemous or orthodox. A direction is usually orthodox. Northeast, northwest, southeast, and southwest are blasphemous.

A person can be untainted or sinful. The player is untainted.

Before going a blasphemous direction when the location is in The Village:
	say "No can do. The City Fathers were Ultra-Orthogonalists.[paragraph break]";
	if the player is untainted:
		now the player is sinful;
		bestow "No-cutting-corners";
		stop the action.

Section Town Borders

timesDrowned, timesRunOver, timesTarred, and timesRailroaded are numbers that vary.

Instead of going north when the location of the player is a juxtaReservoir quadroom:
	if timesDrowned is:
		-- 0: say "Wait a minute -- The town reservoir lies just to the north of this part of town. A few steps in that direction and you[apostrophe]ll be soaked.[paragraph break]";
		-- 1: say "It[apostrophe]s actually illegal to bathe in the town reservoir. People drink this stuff. On the otherhand... who would know?[paragraph break]";
			bestow "Hygiene";
		-- 2: say "Head down, eyes on the screen, you walk into the town reservoir. The tangled duckweed drags behind you, as you sink deeper into the muddy bottom, struggling forward, phone now raised above your head. You cough and sputter as water enters your lungs, but push onward, intent on capturing some water-type pogomen.[paragraph break]Through the muddy water, you can still distinguish the glow of the screen.[paragraph break]Finally, water laps up against the phone, cooling it and bring it well-deserved final rest. The screen flickers, you hear a muffled, sorrowful beep, and all goes dark.";
		phoneDeath;
		-- otherwise: say "You[apostrophe]ve learned your lesson about trying to play Pogoman underwater. Nope, from now on you will stick to dry land.[paragraph break]";
	increase timesDrowned by one.

Instead of going west when the location of the player is a juxtaHighway quadroom:
	if timesRunOver is:
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
	increase timesRunOver by one.
	
Instead of listening when the location is a juxtaHighway quadroom:
	say "[one of]Cars scream by at breakneck speed[or]A tractor trailer blasts its horn[or]Sounds like traffic on the highway is particularly heavy today[or]A heavy truck rumbles by[in random order]."

Instead of going south when the location of the player is a juxtaTarpit quadroom:
	if TimesTarred is:
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
	increase timesTarred by one.
			
Instead of smelling when the location is a juxtaTarpit quadroom:
	say "[one of]Okay, who let one go?[or]Mmm... Sulfur.[or]There is a hint of petroleum in the area.[or]Smells like someone is paving a road near by.[in random order]"

Instead of going east when the location of the player is a juxtaRailway quadroom:
	if timesRailRoaded is:
		-- 0:
			say "You can hear the busy railroad tracks just to the east.";
		-- 1:
			say "You start to head east, but then recall the railway tracks nearby -- wasn[apostrophe]t it just last weekend that a third grader was run down by a freight train? Someone should do something about it, like maybe post some signs. You[apostrophe]d do it yourself if you weren’t so busy.[paragraph break]Your eyes are drawn back down to the beckoning phone screen and your mind wanders back to the game.[paragraph break]";
			bestow "Refined Sense of Priorities";
		-- 2:
			say "As you step over the train tracks, in your peripheral vision to the left, you catch a glimpse of a moving red light. Glancing up from your phone for just a moment, you see it[apostrophe]s just a pick-up truck backing up down the road. No worries.[paragraph break]From the other direction, there is a explosive rush of wind and you are suddenly yanked up and backwards by your collar. Your phone spills out of your hand and, improbably, lands flat on the third rail.[paragraph break][quotation mark]No! You shout,[quotation mark] to the muscular commuter who you dangles you above the platform.  The bullet train passing only inches from your face. You struggle impotently in his grasp, your cell phone-atrophied arms no match for his grand physique. [quotation mark]My phone! I must save my phone.[quotation mark][paragraph break]As soon as he sets you down, you jump off the platform. But it is too late. Sparks jump from the phone to the ground, the fence, the rails. You ignore the loss of feeling in your arms as you clumsily knock the phone off the rail. It drips to the ground a glowing, molten mass.";
			phoneDeath;
		-- otherwise:
			say "You have an aversion to railroad tracks, so you remain where you are.";
	increase timesRailRoaded by one.

Instead of listening when the location is a juxtaRailway quadroom:
	say "[one of]Locomotives scream by[or]A steam engine chugs away[or]A commuter train thunders through[or]A freight train rumbles along the tracks[in random order]."

Chapter Inside Nyantech

Section 1 - Region HQ

HQ is a region. Lobby, RevolvingDoor, LAN Closet, Cafeteria, Beverages, Snacks, Legal Department, Cousteau Room, Rick Astley Shrine, Crawl Space, Gearing Assembly, Support Boom, Top of the Ladder, Somewhere Along The Ladder, Bottom Rung, Throne Room, and MuskTube Station are rooms in HQ.

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
	say "The employee [one of]seems taken aback by your approach[or]startles with a lurch[or]looks around wildly and then stares awkwardly at you[or]struggles to focus on something other than the monocle for once and looks you squarely in the neck[in random order] and [one of]replies[or]says[or]answers[in random order], [quotation mark][one of]Hello, $identity[bracket]player[bracket][TEAMCOLOR][close bracket][bracket][POGOLEVEL][close bracket][close bracket], looks like the weather is going to be &extractWeather([quotation mark]town[quotation mark], +3)[or]Ah, [bracket]one of[close bracket]good[bracket]or[close bracket]great[bracket]or[close bracket]nice[bracket]or[close bracket]wonderful[bracket]or[close bracket]how pleasant[bracket]at random[close bracket] to see a [bracket]one of[close bracket]player[bracket]or[close bracket]visitor[bracket]or[close bracket]gamer[bracket]at random[close bracket] and to have normal social discourse[or]TODO: Expand[stopping].[quotation mark][paragraph break]".
		
	
To say visitorRebuff:
	say "[one of]The player glances briefly at your badge and remarks, [quotation mark]Not now, n00b. Can’t you see I’m pogomaning? Duh[quotation mark][or]The players continue tapping away at their phones, ignoring you[stopping]."

Snacks is northeast of the Cafeteria. The description of Snacks is "A poster above a table advertises every kind of pop-tart known to man, all of them glazed and sprinkled: strawberry, blueberry, raspberry, apple, chocolate, cranberry, and many more. Just above the table is a metal chute, which projects just a bit from the wall." The possible exits of Snacks are "The company cafeteria is to the southwest."

The poster is scenery in Snacks. The description of the poster is "A glossy advertisement dominated by a colorful assortment of pop-tarts above the slogan [quotation mark]SmartPastries for SmartPeople![quotation mark]."

The table is a scenery supporter in Snacks. The description of the table is "A rustic table positioned directly below the metal slot in the wall." Understand "rustic" as the table.

The chute is fixed in place scenery in Snacks. The description of the chute is "A metal slot that comes out of the wall and is angled slightly downward. The opening is about the size of, oh, let[apostrophe]s say a pop-tart."

A pop-tart is a pastry. It is on the table. The description of the pop-tart is "The crowning achievement of millenia of culinary evolution, this double-glazed, sugar-sprinkled, [saveur du jour]-flavored pop-tart is a flat, rectangular piece of pastry perfection." Understand "pastry" or "cake" or "dessert" or "poptart" as the pop-tart.

Understand "strawberry" as the pop-tart when the saveur du jour is strawberry.
Understand "blueberry" as the pop-tart when the saveur du jour is blueberry.
Understand "raspberry" as the pop-tart when the saveur du jour is raspberry.
Understand "apple" as the pop-tart when the saveur du jour is apple.
Understand "cranberry" as the pop-tart when the saveur du jour is cranberry.
Understand "chocolate" as the pop-tart when the saveur du jour is chocolate.
Understand "licorice" as the pop-tart when the saveur du jour is licorice.
Understand "pumpkin" as the pop-tart when the saveur du jour is pumpkin.
Understand "pine-nut" as the pop-tart when the saveur du jour is pine-nut.
Understand "pesto" as the pop-tart when the saveur du jour is pesto.
Understand "liver" as the pop-tart when the saveur du jour is liver.
Understand "watermelon" as the pop-tart when the saveur du jour is watermelon.
Understand "apricot" as the pop-tart when the saveur du jour is apricot.
Understand "teriyaki" as the pop-tart when the saveur du jour is teriyaki.
Understand "chutney" as the pop-tart when the saveur du jour is chutney.
Understand "fudge" as the pop-tart when the saveur du jour is fudge.
Understand "tiramisu" as the pop-tart when the saveur du jour is tiramisu.
Understand "cinnamon" as the pop-tart when the saveur du jour is cinnamon.
		
Instead of pushing the pop-tart, say "Futile. You push, it pops back immediately."

To newPopTart:
	now the saveur du jour is a random flavor;
	move the pop-tart to the table;
	if the player is in Snacks:
		say "A piping hot, fresh [saveur du jour]-flavored pop-tart drops from the chute onto the table."

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
	now the current floor is 4;
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

[Conduit Space Above Ground Floor]

The Support Boom is outside from Gantry Chamber.

The Gearing Assembly is above The Top of the Ladder and outside from Support Boom.

The Top Of The Ladder is above Somewhere Along the Ladder.

Somewhere Along The Ladder is above the Bottom Rung.

The Bottom Rung is above the Crawl Space.

The Crawl Space is above the LAN Closet.

[Ground Floor]

The description of the Lobby is "A beehive of activity for both employees and visitors, the atmosphere in the luxurious lobby is somehow both corporate and relaxed. There is a constant drone of conversation in the background.[paragraph break]A silvery reception desk hovers in the middle of the lobby." The possible exits of the Lobby are "The elevators are to the west and the revolving door back to the street is to the south. The only other interesting doors here are the emergency stairs to the north and a metallic door to the east labeled [quotation mark]LAN Closet[quotation mark]."

Instead of going east from the Lobby when the walkman is not worn:
	 say "[one of]As you approach the LAN closet, you are filled with unbridled anxiety. You are vaguely aware of a low, rumbling sound, more felt than heard. It fills you with dread. The sound is inescapable. Your clothes feel too tight, your gait becomes unsteady, you wipe the sweat from your forehead. Something in the pit of your stomach is clawing at you; animal instinct wells up within you and you are seized by a sudden urge to flee. With as much composure as you can muster, you back away from the ominous door[or]You try, but as you get closer, you are overcome with fear as a deep, bone-rattling sound overwhelms you[stopping].";
	bestow "Terrified of a LAN closet".


The RevolvingDoor is south of the Lobby. The printed name of the RevolvingDoor is "Revolving Door". The description of the RevolvingDoor is "A revolving brass door." 

The LAN Closet is east of the Lobby.

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

The computer screen is part of the desk. The description of the computer screen is "A computer screen that is set into the surface of the desk displays the following text:[paragraph break][if the Beta Testing Door is locked]Nyantech, Inc.[line break]Legal Division[paragraph break]Beta-Tester Agreement[paragraph break]By touching [quotation mark]agree[quotation mark], the user agrees to be held bound by all provisions of this agreement.[paragraph break]TOUCH [quotation mark]AGREE[quotation mark] TO CONTINUE[paragraph break]TOUCH [quotation mark]TERMS[quotation mark] TO REVIEW TERMS OF AGREEMENT[otherwise][welcomeTester][end if]". Understand "display" as the computer screen.

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

The walkman is a prop in the Rick Astley Shrine. The walkman is wearable.

[Sub-Sub-Basement]

The description of the Throne Room is "Throne Room placeholder text".
  
MuskTube Station is down from Throne Room.

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
	
Swimming is an action applying to nothing. Understand "swim" as swimming.

Check swimming:
	if the player is not in the BallPit Area:
		say "You make vaguely swimming motions, but don[apostrophe]t seem to be getting anywhere." instead.
		
Report swimming:
	if the player is in the Ball Pit:
		say "You swim around in the sea of rubber balls. You [one of ]are getting quite good at it, in fact[or]seem to be a natural[or]find it relaxing[or]consider having one of these installed in your own house[or]take a few laps around the pit[in random order].";
	otherwise:
		say "You swim through a mass of rubber balls."
	
The ballObject is a privately-named backdrop in the BallPit Area. The printed name of ballObject is "ball". The description of the ballObject is "Glossy, supple, and slippery balls of every color." Understand "ball" or "balls" as the ballObject.

Before taking ballObject:
	say "The more you tighten your grip, the more balls slip through your fingers." instead. [Unless the ball is Alderaan, in which case it is bad news for that particular ball.]

Diving is an action applying to nothing. Understand "dive" or "sink" or "descend" or "submerge" as diving.

Check Diving:
	try going down instead.
	
Before going down from the ball pit:
	if the player wears the wetsuit:
		continue the action;
	otherwise:
		say "You hold your breath and dive down, swimming until your lungs are on the verge of bursting, but still don’t reach the bottom. Now panicking for air, you shoot back to the surface, gasping.";
		stop the action.
		
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

The subSubBasementDoor is a red door. It is north of the Throne Room and south of the StairsSSB.

The printed name of the subSubbasementDoor is "red [shortDoorToThe] [if the location is Throne Room][shortEmergencyStairs][otherwise]red corridor[end if]". Understand "red" or "door" or "legal" or "emergency" or "stairs" or "basement" or "subsubbasement" as the subSubBasementDoor.

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
	say "You climb [shortTwentyFlights] [shortNoExits] and ";
	if the walkman is not worn:
		say "[one of]notice a heavy, grinding noise punctuated by sounds of liquids sloshing and slurping[or]from the walls you hear the sound of industrial machinery -- maybe a tree mulcher[or]you hear maniacal laughter coming from deep within the building. Or maybe it just the plumbing[or]you notice the vibration of heavy machinery[stopping]";
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

[in deference to the Cat in the Hat song, despite its mangling of the Russian. I can't vouch for the authenticity of the Eskimo] 

The catProxyOverhead is a privately-named backdrop in the Deck Area. The printed name of the catProxyOverhead is "Nyantech Cat". Understand "cat" or "gato" or "katze" or "gwunka" or "nyantech" or "kot" or "koshka" or "kat" or "animatronic" or "ship" or "gantry" or "boom" or "vessel" or "eyes" or "tail" as the catProxyOverhead when the player is in the Deck Area. The description of the catProxyOverhead is "As the giant Nyantech Cat circles past your vantage point, you are able to pick out more details than you could from the ground. The Cat is suspended from a heavy metal boom, like the cross member of a construction crane. The boom sweeps around the building about once a minute and must be immensely strong to support the weight of the cat, a metal structure about forty feet long and ten feet wide.[paragraph break]As depicted in all of Nyantech[apostrophe]s online material, the cat wears its trademark red beret, which at this close range looks more like an immense bean bag. There’s an access hatch just above the boom, presumably for maintenance. The cat[apostrophe]s glowing red eyes must be five feet diameter, and although you are twenty feet above them, you can feel the heat evolving off them. A trail of sparking and popping glitter behind the cat seems to come out of a port near its tail."

The beretProxyOverhead is a privately-named backdrop in the Deck Area. The printed name of the beretProxyOverhead is "beret". Understand "beret" or "hat" or "chapeau" or "hut" or "sombrero" or "bunka-kwunk" or "shapka" or "shlyapa" or "hoed" or "bean" or "bag" or "cushion" as the beretProxyOverhead when the player is in the Deck Area. The description of the beretProxyOverhead is "From the ground, it looks like a felt beret, but from up here the fabric looks more like heavy canvas. It bellows slightly in the wind and looks like it is filled with something soft like foam rubber."

The hatchProxyOverhead is a privately-named backdrop in the Deck Area. The printed name of the hatchProxyOverhead is "hatch". Understand "hatch" or "access" as the hatchProxyOverhead when the player is in the Deck Area. The description of the hatchProxyOverhead is "[hatchDescription]".

The railing is a backdrop in the Deck Area. Understand "rail" as the railing when the player is in the Deck Area. The description of the railing is "A waist-high metal railing that runs around the observation deck, preventing accidental falls."

The chain is a chainItem in DeckS. Understand "chain" or "clip" as the chain. The description of the chain is "A chain terminating in a large spring-loaded clip that [if the chain is clipped]attaches to[otherwise]hangs free from[end if] the railing."

The printed name of DeckN is "Observation Deck, Northern View".  

DeckW is southwest of DeckN. The printed name of DeckW is "Observation Deck, Western View". 

DeckS is southeast of DeckW. The printed name of DeckS is "Observation Deck, Southern View". 

DeckE is northeast of DeckS and southeast of DeckN. The printed name of DeckE is "Observation Deck, Eastern View".

To say deckDescription:
	let L be a list of quadrooms;
	let M be a list of quadrooms;
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
		add entry N of L to M;
	say "From your godlike perspective, you pick out a few recognizable locations below: [M].[paragraph break]";
	if the location is DeckS:
		if the chain is clipped:
			say "The safety rail that runs around the observation deck is replaced here by a heavy chain that clips to the railing -- you assume that it is for maintenance and shudder as you contemplate how dangerous it would be to remove the chain.[paragraph break]";
		otherwise:
			say "There is a gap in the safety rail here, and the chain that is normally stretched across the gap has been unfastened; there is nothing between you and a plunge off the platform -- it is enough to give you vertigo.[paragraph break]";
	say "At precisely one minute intervals, the giant Nyantech Cat flies by, just below the level of the observation deck, and continues to circle the building. Behind you, through floor to ceiling windows, you can see folks eating and drinking in the roof-top restaurant"
	
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
			if the  securityColor of the badge is less than blue:
				say "The idea seems crazy, but you prepare to the jump. You carefully gauge the timing of the cat[apostrophe]s rotation around the building while you work up the nerve, all the while being sure not to be observed. However, this time, as the cat approaches, you draw back from the edge having realized that the cat is rotating around the building too quickly for you to reliably nail the landing. Still quivering with fear, you replace the chain, which is there for a good reason.";
				now the chain is clipped;
			otherwise:
				say "TODO - jump to CAT";
	otherwise:
		say cantJump
		
Instead of climbing the railing when the player is in the deck area:
	say cantJump.	


Section 5 - Cat


The Cat Area is a region. The Cat's Beret, Maintenance Hatch, Captain's Cabin, CatHead, Catwalk, Gantry Chamber, and Poop Deck are rooms in the Cat Area. The Cat Area is in HQ.

To say hatchDescription:
	say "The hatch resembles a bulkhead hatch on a submarine: a heavy door that would pull upwards. It is painted yellow, like the body of the cat, except its metal handle, which is chrome. The hatch is [if the hatchway is open]open[otherwise]sealed[end if]."


Section 6 - Cat Navigation

[Based on Recipe 42: Example Fore]

A direction can be nautical, earthbound, or QTHagnostic. A direction is usually earthbound. 

Starboard, port, fore, aft are nautical.

Up, down, inside, and outside are QTHagnostic.

The starboard is a direction. The starboard has opposite port. Understand "s" as starboard when the location is in the Cat Area.

The port is a direction. The port has opposite starboard. Understand "p" as port when the location is in the Cat Area.

The fore is a direction. The fore has opposite aft. Understand "f" as fore when the location is in the Cat Area.

The aft is a direction. The aft has opposite fore. Understand "a" as aft when the location is in the Cat Area.

Does the player mean going a nautical direction when the location is in the Cat Area: it is very likely.

Index map with fore mapped as east. Index map with aft mapped as west. Index map with port mapped as south. Index map with starboard mapped as north.

Instead of going a nautical direction when the location is not in the Cat Area, say "[One of]Okay, matey. Could you rephrase that for us landlubbers?[or]Those directions only make sense on a vessel of some sort.[or]So, that's what? North? South? Throw me a bone.[or]Compass directions please, unless you're in a vessel.[stopping]".

Instead of going an earthbound direction when the location is in the Cat Area, say "Compass directions make no sense  when we're talking about a giant mechanical cat that rotates around an office building -- granted, not much would make sense in that context. In any event, try some of these directions instead: [list of nautical directions]."

Section 7 - Cat Layout

The Cat's Beret is down from DeckS. 

Maintenance Hatch is aft of the Cat's Beret.

The hatchway is a door. It is down from the Maintenance Hatch. Understand "hatch" as the hatchway when the player is in the Cat Area. The description of the hatchway is "[hatchDescription]". The hatchway is closed.

Catwalk is aft of the Maintenance Hatch.

Poop Deck is aft of The Catwalk.

The Captain's Cabin is down from the hatchway.

Gantry Chamber is aft from The Captain's Cabin. 

CatHead is fore from the Captain's Cabin. The printed name of CatHead is "Inside the Cat's Head".

Chapter in the Elevator

The Elevator is a room.

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

The badge is a prop in the void. The securityColor of the badge is white.The description of the badge is "The badge is [securityColor of the badge][if the securityColor of the badge is not white] with a white stripe diagonally across it[end if] and the top of the badge is labeled  [quotation mark]Nyantech Headquarters[quotation mark] in the usual font. Below that, a picture of your face overlaid with a bright, [TEAMCOLOR] number [POGOLEVEL]."

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
	now the current floor is 4;
	move the player to the elevator.
	
Instead of opening an interdicted door for the fifth time:
	move the player to the Infirmary;
	say "The same nurse as before leans over you and removes some stickers attached to your chest and unclips a glowing red device from your right index finger.[paragraph break][quotation mark]Perhaps you should stick to the elevator. I tell you, those stairs can be treacherous. I wish they would give them a coat of non-skid paint. More people lose their footing in there…[quotation mark][paragraph break]Before you can say anything else, she certifies you ship shape and guides you to a waiting elevator. The elevator doors close behind you.";
	now the current floor is 4;
	move the player to the elevator.

Instead of opening an interdicted door for the sixth time:
	move the player to the Infirmary;
	say "The droning whine fades and becomes a steady beat. The nurse replaces two paddles on a red cart covered in vials, syringes, and empty plastic packets. She pulls a tube from your throat that come to think of it has been puffing air into your lungs, removes a tube from somewhere on your left leg, and pulls off all the stickers and wires.[paragraph break]Wiping the perspiration from her forehead and replacing the hat that must have fallen off at some point, she reassures you, [quotation mark]You took a bit of a spill on the stairs and gave your ankle real twist, but now you’re bright eyed and bushy tailed.[quotation mark]Before you can say anything else, she certifies you ship shape and guides you to a waiting elevator. The elevator doors close behind you.[paragraph break]";
	bestow "What[apostrophe]s wrong with this picture?";
	now the current floor is 4;
	move the player to the elevator.
	
Instead of opening an interdicted door:
	move the player to the Infirmary;
	say "You wake up in a glowing vat of viscous pink liquid in a room full of blinking lights. Tubes retract from your body and the liquid drains. After a while, you feel well enough to stand up, find your clothes, and get dressed. As you slip on your shoes, the floor begins to move like a conveyor belt, which deposits you in the elevator.";
	now the current floor is 4;
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
		say "You can't dial [a noun]" instead.
		
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
	say "After beating your head against the ground a few times, you realize... you could just buy a new phone.[paragraph break]A day goes by while you [one of]argue with your mobile phone provider about the terms of your phone plan[or]try to find another T8000 phone -- looks like other Pogoman Go players have been buying them up. Finally, you find one[or]try to recover data off what is left of your SIM card[or]scrape together funds to buy another yet another phone[or]max out your last credit card to buy a second-hand T8000 from Craig's List[stopping].[paragraph break]";
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

