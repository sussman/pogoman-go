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

securityColor is a kind of value. The securityColors are black, red, white, green, and blue.

A door has a securityColor. The securityColor of a door is usually white.

Section 2 - Pogo-Things

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

Chapter Rules Modifications

[
 For printing a locale paragraph about a door (called the item) 
    (this is the don't mention doors in room descriptions rule): 
    set the locale priority of the item to 0; 
    continue the activity.
]

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

Section AwardXP

[moral equivalent of a global game score -- simply "AwardXP 30" when needed, and levelling will happen automatically.]

To AwardXP (award - a number):
	now XP is XP + award.
	
Section Waving

Instead of waving hands, say "You wave your cell phone around in the air, dissipating heat."

Section Medals

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


Section ShowStatus

To ShowStatus:
	now the left hand status line is "PogoLevel: [POGOLEVEL],  Team [TEAMCOLOR]";
	now the right hand status line is "XP: [XP]".

Chapter Not Ready For Prime Time - Not for release



Summarizing is an action out of world. Understand "summary" as summarizing.

Report summarizing:
	say "Summary ... more pending"

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

Every turn:	
	CheckLevel; [possibly level-up the player]
	ShowStatus.  [display current level, team, XP in status bar]



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
	if the location is unvisited, say "You are vaguely aware that something isn’t right here. Gaunt, pale forms lurch and moan as they pour out of the vaccine laboratory. There’s something wrong with them, but you can’t quite put your finger on it.[paragraph break]Oh, wait, that [italic type]is[roman type] weird - none of them have phones...[paragraph break]";
	say "The zombie horde mulls aimlessly, eyes down, faces blank, trudging their way through unlife. They don’t seem to notice folks playing pogoman.[paragraph break]";
	if the location is unvisited, bestow "Just One of the Boys".

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

HQ is a region. Lobby, RevolvingDoor, LAN Closet, Cafeteria, Ball Pit, Beverages, Snacks, Legal Department, Cousteau Room, Rick Astley Shrine, Crawl Space, Gearing Assembly, Support Boom, Top of the Ladder, Somewhere Along The Ladder, Bottom Rung, Throne Room, and MuskTube Station are rooms in HQ.

[Top Level, Interior]

The Cafeteria is north of DeckS.

Snacks is northeast of the Cafeteria.

Beverages is northwest of the Cafeteria.

Ball Pit is east of the Cafeteria.

BallPitShallow is down from Ball Pit. The printed name of BallPitShallow is "In The Ball Pit, Just Under The Surface".

BallPitDeep is down from BallPitShallow. The printed name of BallPitDeep is "Deep In The Ball Pit".

BallPitBottom is down from BallPitDeep. The printed name of BallPitBottom is "Near The Bottom Of The Ball Pit".

[Conduit Space Above Ground Floor]

The Support Boom is outside from Gantry Chamber.

The Gearing Assembly is above The Top of the Ladder and outside from Support Boom.

The Top Of The Ladder is above Somewhere Along the Ladder.

Somewhere Along The Ladder is above the Bottom Rung.

The Bottom Rung is above the Crawl Space.

The Crawl Space is above the LAN Closet.

[Ground Floor]

The description of the Lobby is "A beehive of activity for both employees and visitors, the atmosphere in the luxurious lobby is somehow both corporate and relaxed. There is a constant drone of conversation in the background."

Instead of going east from the Lobby when the walkman is not worn, say "[one of]As you approach the LAN closet, you are filled with unbridled anxiety. You are vaguely aware of a low, rumbling sound, more felt than heard. It fills you with dread. The sound is inescapable. Your clothes feel too tight, your gait becomes unsteady, you wipe the sweat from your forehead. Something in the pit of your stomach is clawing at you; animal instinct wells up within you and you are seized by a sudden urge to flee. With as much composure as you can muster, you back away from the ominous door[or]You try, but as you get closer, you are overcome with fear as a deep, bone-rattling sound overwhelms you[stopping]."

The RevolvingDoor is south of the Lobby. The printed name of the RevolvingDoor is "Revolving Door". The description of the RevolvingDoor is "A revolving brass door." 

The LAN Closet is east of the Lobby.

[Basement]

The description of Legal Department is "Legal Department placeholder text."

Cousteau Room is south of Legal Department.

[Sub-Basement]

The walkman is a prop in the Rick Astley Shrine.

[Sub-Sub-Basement]

The description of the Throne Room is "Throne Room placeholder text".

MuskTube Station is down from Throne Room.

Section 2 - Stairwell

To say shortEmergencyStairs:
	say "emergency stairs"
	
TO say shortDoorToThe:
	say "door to the"
	
[TODO: will need a proxy door object in the stirs region than can be examined and will yield the door color and description for the adjacent door - will need to refine the understand clause to get the right color recognized in each place. hope this note still makes sense to me later]

The Stairwell is a region. StairsGround, StairsBasement, StairsSB, StairsSSB, StairsInterns, StairsEngineers, StairsManagers, StairsInfirmary, StairsProcessing, StairsPackaging, StairsRoof are rooms in the Stairwell. The Stairwell is in HQ.	
		
The groundDoor is a white door. It is north of the Lobby and south of the StairsGround.  The printed name of the groundDoor is "white [shortDoorToThe] [if the location is the lobby][shortEmergencyStairs][otherwise]lobby[end if]". Understand "white" or "door" or "lobby" or "emergency" or "stairs" as the groundDoor.

The printed name of the StairsGround is "Emergency Stairs: Ground Level". 

The basementDoor is a green door. It is north of Legal Department and south of the StairsBasement. The printed name of the basementDoor is "green [shortDoorToThe][if the location is Legal Department][shortEmergencyStairs][otherwise]Legal Department[end if]". Understand "green" or "door" or "legal" or "emergency" or "stairs" or "basement" as the basementDoor.

The StairsBasement is below StairsGround. The printed name of StairsBasement is "Emergency Stairs: Basement Level".

The StairsSB is below StairsBasement. The printed name of StairsSB is "Emergency Stairs: Sub-Basement Level".

The subBasementDoor is a blue door. It is north of the Rick Astley Shrine and south of the StairsSB.  The printed name of the subBasementDoor is "[printedSubBasementDoor]".

To say printedSubBasementDoor:
	if the location is the Rick Astley Shrine:
		say shortEmergencyStairs;
	otherwise:
		say shortDoorToThe;
		if the Rick Astley Shrine is visited:
			say " the Rick Astley Shrine";
		otherwise:
			say " the blue corridor"
	

The StairsSSB is below StairsSB. The printed name of StairsSSB is "Emergency Stairs: Sub-Sub-Basement Level".

The subSubBasementDoor is a red door. It is north of the Throne Room and south of the StairsSSB.

The printed name of the subSubbasementDoor is "red [shortDoorToThe] [if the location is Throne Room][shortEmergencyStairs][otherwise]red corridor[end if]". Understand "red" or "door" or "legal" or "emergency" or "stairs" or "basement" as the subSubBasementDoor.

The internDoor is a black door. It is south of the StairsIntern. The printed name of the internDoor is "black [shortDoorToThe] interns' offices"

The StairsInterns is above StairsGround. The printed name of StairsInterns is "Emergency Stairs: Level 1".

The engineersDoor is a black door. It is south of the StairsEngineers. The printed name of the engineersDoor is "black [shortDoorToThe] engineers' offices"

The StairsEngineers is above StairsInterns. The printed name of StairsEngineers is "Emergency Stairs: Level 2".

The managersStairs is a black door. It is south of the StairsManagers. The printed name of the managersStairs is "black [shortDoorToThe] managers' offices".

The StairsManagers is above StairsEngineers. The printed name of StairsManagers is "Emergency Stairs: Level 3".

The StairsInfirmary is above StairsManagers. The printed name of StairsInfirmary is "Emergency Stairs: Level 4".

The StairsProcessing is above StairsInfirmary. The printed name of StairsProcessing is "Emergency Stairs: Above Level 4".

The StairsPackaging is above StairsProcessing. The printed name of StairsPackaging is "Emergency Stairs: Way The Hell Above Level 4".

The StairsRoof is above StairsPackaging. The printed name of StairsRoof is "Emergency Stairs: Roof Access".



Section 3 - Deck


The Deck Area is a region. DeckN, Deck E, DeckS, and DeckW are rooms in the Deck Area. The Deck Area is in HQ.

DeckN is north of StairsRoof. The printed name of DeckN is "Observation Deck, Northern View".

DeckW is southwest of DeckN. The printed name of DeckW is "Observation Deck, Western View".

DeckS is southeast of DeckW. The printed name of DeckS is "Observation Deck, Southern View".

DeckE is northeast of DeckS and southeast of DeckN. The printed name of DeckE is "Observation Deck, Eastern View". 


Section 4 - Cat


The Cat Area is a region. The Cat's Beret, Maintenance Hatch, Captain's Cabin, CatHead, Catwalk, Gantry Chamber, and Poop Deck are rooms in the Cat Area. The Cat Area is in HQ.


Section 5 - Cat Navigation

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

Section 6 - Cat Layout

The Cat's Beret is down from DeckE. 

Maintenance Hatch is aft of the Cat's Beret.

Catwalk is aft of the Maintenance Hatch.

Poop Deck is aft of The Catwalk.

The Captain's Cabin is down from Maintenance Hatch.

Gantry Chamber is aft from The Captain's Cabin. 

CatHead is fore from the Captain's Cabin. The printed name of CatHead is "Inside the Cat's Head".

Chapter in the Elevator

The Elevator is a room.

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

The badge is a prop in the void. The description of the badge is "The top of the badge is labeled  [quotation mark]Nyantech Headquarters[quotation mark] in the usual font. Below that, a picture of your face overlaid with a bright, [TEAMCOLOR] number [POGOLEVEL]. "

Instead of examining the badge for the first time, say "You are pretty sure that Annastasia, the receptionist, had that card in her hand as soon as you walked in and you don[apostrophe]t recall having seen any cameras, so you wonder how the badge was produced -- and so quickly. Ah well, best not to question the technological wizardry that is Nyantech."

Instead of dropping the badge for the first time:
	say "No, you’ve worked too hard and come too far to cast it all away.[paragraph break]";
	bestow "Hoarder".
	
Instead of dropping the badge, say "No. They'll have to peel it from your cold, dead hands before you[apostrophe]d give it up."




section 3 - The Salmon of Turpitude

The Salmon of Turpitude is a prop in the void. It is proper-named. The description of the Salmon of Turpitude is "A large Atlantic salmon with an undeserved reputation."

Instead of eating the Salmon of Turpitude, 
	say "You are not sure it[apostrophe]s fresh enough to consider as sushi."
	

	


Book 3 - Characters

Chapter - The Player

The description of the player is "[one of]You are scruffy and disheveled, having played the game for several days straight. Luckily, your allergies are playing up, so scent isn’t an issue[or]Your hip is nearly healed after that incident involving the crosswalk, pick-up truck, and a rare pogoman in the middle of an intersection[or]Your thumbs twitch, ready to collect [apostrophe]em all, or perhaps from too much caffeine and not enough sleep[or]You wonder if the constant need to look at yourself reflects some budding narcissism[or]No more rundown than your average Pogoman player[stopping].";

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

Book 7 - Hints

