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


Chapter Declare Global Variables

POGOLEVEL is a number that varies.  POGOLEVEL is 3.  [TODO is this a good starting value?]

XP is a number that varies.  XP is 320.  [TODO is this a good starting value?]

Color is a kind of value. The colors are None, Teal, Chartreuse, Alizarin Crimson, Viridian, Papayawhip, and Unbleached Titanium.

TEAMCOLOR is a color that varies. TEAMCOLOR is usually None.


Chapter Kinds

Section 1 - General

A prop is a kind of thing. It is usually portable.

Section 2 - PogoThings

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


Chapter Rules Modifications


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

ShowStatus is an action out of world.
To ShowStatus:
	now the left hand status line is "PogoLevel: [POGOLEVEL],  Team [TEAMCOLOR]";
	now the right hand status line is "XP: [XP]".
	


Chapter Not Ready For Prime Time - Not for release


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
	[TODO: put player in one of a few random spots in first scene] [move the player to X]
	[TODO move the phone to player]
	now suppressMedals is false;
	now the medalCounter is zero;
	now the muteCounter is zero;
	now timesDrowned is zero;
	now timesRunOver is zero;
	now timesTarred is zero;
	now timesRailroaded is zero;
	now the player carries the phone;
	[say openingText;  - commented out to allow quick replays for testing
	pause the game;]
	ShowStatus.
	
After printing the banner text, say "[line break][italic type]Note: You may find the command [roman type][quotation mark]reboot[quotation mark][italic type] helpful.[roman type][paragraph break]"
	

Chapter Every Turn

Every turn:	
	CheckLevel; [possibly level-up the player]
	ShowStatus.  [display current level, team, XP in status bar]



Book 2 - Places

Chapter Around Town

Quadroom is a kind of room. A quadroom can be nw, ne, se, sw, or axial. A quadroom is usually axial. 
[These inform what landmarks are visible from each corner of the Nyantech Tower's observation deck. Items on cardinal axes are not mentioned.]

Dung Beetle Mural, Witch Pillory, Old Jail, Cyclorama, Flag Pole, Old Courthouse, Unfathomable Orb, Service Dog Memorial, and Spit n' Solder are nw quadrooms.

General Nelson, Church of the Orthogonal Sticks, Crystal Skull, Yummi Tummi Softserve, Giant Chicken, Telescope Nymph, The Gardens of Zarf, Welbourne Travel, and Dog Exercise Area are ne quadrooms.

Johnson's Rock, City Park, Hook & Ladder, Nyantech Entrance, Bottle Cap Wall, Krusty Kronuts, Prissy's Little Sausages, Rotary Clock Tower, Floyd Memorial Bench, The Olde Train Station, Old Town Hall, Ashwell-Lott Estate, and Found Art are axial quadrooms.

Toxicodendron radicans, Battle of Margot's Pantry, Cranberry Bog, Vuvuzelas For Freedom, Brotherhood of the Slippery Axel, Parking Lot Award, Unearthly Geometry, MarkerSeven, and Garden Gnome Without Head are sw quadrooms.

Sister City Friendship Altar, Perilous Passageway, Eagle's Sojourn, Fire Is Our Friend, Year1893, Flan Emporium, Rottweiler Art, Hank's Tavern, and Gas Station Gazebo are se quadrooms.

[Borders of the Village to trigger near-death scenes]
A quadroom can be juxtaReservoir. 
A quadroom can be juxtaTarpit.
A quadroom can be juxtaHighway.
A quadroom can be juxtaRailway.

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
Battle of Margot's Pantry is west of Cranberry Bog and north of Brotherhood of the Slippery Axel.
Toxicodendron radicans is west of Battle of Margot's Pantry and north of Vuvuzelas for Freedom.
Eagle's Sojourn is north of Flan Emporium.

Year1893 is west of Flan Emporium and north of Hank's Tavern.
Fire Is Our Friend is west of Year1893 and north of Rottweiler Art.
Ashwell-Lott Estate is west of Fire Is Our Friend and north of Found Art.
Parking Lot Award is west of Ashwell-Lott Estate and north of Garden Gnome Without Head.
Brotherhood of the Slippery Axel is west of Parking Lot Award and north of MarkerSeven. 
The printed name of MarkerSeven is "Marker 0.7".
Vuvuzelas for Freedom is west of Brotherhood of the Slippery Axel and north of Unearthly Geometry.
Flan Emporium is north of Gas Station Gazebo.

Hank's Tavern is west of Gas Station Gazebo.
Rottweiler Art is west of Hank's Tavern.
Found Art is west of Rottweiler Art.
Garden Gnome Without Head is west of Found Art.
MarkerSeven is west of Garden Gnome Without Head.
Unearthly Geometry is west of MarkerSeven.

The Village is a region. Dung Beetle Mural, Witch Pillory, Old Jail, Cyclorama, Flag Pole, Old Courthouse, Unfathomable Orb, Service Dog Memorial, Spit n' Solder, General Nelson, Church of the Orthogonal Sticks, Crystal Skull, Yummi Tummi Softserve, Giant Chicken, Telescope Nymph, The Gardens of Zarf, Welbourne Travel, Dog Exercise Area, Johnson's Rock, City Park, Hook & Ladder, Nyantech Entrance, Bottle Cap Wall, Krusty Kronuts, Prissy's Little Sausages, Rotary Clock Tower, Floyd Memorial Bench, The Olde Train Station, Old Town Hall, Ashwell-Lott Estate, Found Art, Toxicodendron radicans, Battle of Margot's Pantry, Cranberry Bog, Vuvuzelas For Freedom, Brotherhood of the Slippery Axel, Parking Lot Award, Unearthly Geometry, MarkerSeven, Garden Gnome Without Head, Sister City Friendship Altar, Perilous Passageway, Eagle's Sojourn, Fire Is Our Friend, Year1893, Flan Emporium, Rottweiler Art, Hank's Tavern, and Gas Station Gazebo are in The Village.

[Location-specific elements in The Village]
The description of City Park is "A small park, well groomed, with a few trees and hedges."  The Park contains an Edator.

The description of Old Courthouse is "A brick court house, probably of historical significance."

The description of the Old Jail is "[one of]A solidly built brick building that was once a one-room jail.[paragraph break]Annoyingly, an in-game advertisement pops up on your phone:[paragraph break][quotation mark]If you like this game, check out our single-room escape adventure comedy, Hoosegow, which is available for play online or download.[quotation mark][paragraph break]Disgusted with the blatant attempt at self-promotion, you angrily swipe the ad off your screen[or]A single-room jailhouse that once imprisoned famous outlaw Muddy Charlie[stopping]."

The description of Johnson's Rock is  "A historical marker next to a bare patch of ground describes Johnson's Rock, an object that has long puzzled local historians. The stone is also the subject of yearly high school pranks, and apparently has been stolen yet again.".  A Rock PogoSpot is a PogoSpot in Johnson's Rock. Rock PogoSign is a PogoSign in Johnson's Rock.

The description of Nyantech Entrance is "A towering edifice hewn from solid obsidian, the imposing structure is visible from miles away."

The description of Ashwell-Lott Estate is "A 19th Century manor house, now a winery."

The description of Garden Gnome Without Head is "A decapitated garden gnome pokes out from a poorly maintained lawn[one of]. This must have been a portal held over from the previous Nyantech game, Ink Grass.[or][stopping]".

The description of Parking Lot Award is "A tarnished brass plaque next to this empty and entirely unremarkable parking lot proclaims that it won a design award for some incomprehensible reason. "

The description of Old Town Hall is "A single story edifice of white-washed roughly hewn oak panels, the Old Town Hall is now used for wedding receptions, Bar Mitzvahs, and Thursday-night bear wrestling."

The description of Spit n' Solder is "The town hardware store. A sun-faded display in the windows advertises [quotation mark]free vacuum tube testing[quotation mark]."

The description of Rotary Clock Tower is "Off to one side of the park, the clock tower rotates once every twenty-four hours."

The description of Floyd Memorial Bench is "A wooden bench with an inset black nameplate with white lettering that reads [quotation mark]In Memory of Floyd[quotation mark]."

The description of Giant Chicken is "A giant chicken statue made of recycled swizzle sticks."

The description of Welbourne Travel is "Maps of various adventures fill the windows of this travel agency."

The description of Hook & Ladder is "The home of Fire Bridage Number 12."

The description of Prissy's Little Sausages is "Ninety varieties of miniature sausage, all served with Prissy’s special sauce."

The description of Yummi Tummi Softserve is "Waitresses in pink pig costumes rollerskate between tables serving up sundaes, cones, and floats."

The description of Service Dog Memorial is "[quotation mark]Scruffy, 3rd battalion, 5th regiment. Her service will be remembered.[quotation mark]".

The description of The Gardens of Zarf is "A well-curated selection of carnivorous plants. A sign warns away small children and pets."  

The description of Flan Emporium is "Flan! Flan! Flan! Everybody wants some."

The description of General Nelson is "A larger than life statue of General Bosphorus [quotation mark]Rabid Mongrel[quotation mark] Nelson."

The description of Church of the Orthogonal Sticks is "The church is constructed entirely of Lincoln Logs except for the stained glass."

The description of Witch Pillory is "This site commemorates the town’s fine tradition of witch hunts in the 1600s. [one of] Way to go founding fathers![or][stopping]".

The description of Flag Pole is "A hundred-foot flag pole lit day and night by floodlights around its base."

The description of Krusty Kronuts is "Home of the caramel-glazed toroiducken."

The description of Cyclorama is "The indoor bicycle track yields important radionuclides for pharmaceutical use."

The description of Brotherhood of the Slippery Axel is "Monastery or Biker Bar? You be the judge."

The description of Battle of Margot's Pantry is "The Daughters of Posterity have erected a plaque commemorating this turning point in western civilization. In modern times, it appears to be a pizzeria."

The description of Gas Station Gazebo is "Yet another gas station gazebo.[one of] Wht is it with gas stations and gazebos?[or][stopping]".

The description of Dung Beetle Mural is "Dark earth tones and impasto technique; you're not sure of the medium."

The description of Hank's Tavern is "Now an artist’s colony, the tavern boasts pottery wheels, arc-welding, and improvised explosive courses at night."

The description of the Olde Train Station is "Still a functioning passenger train station, since the early 19th Century, the Olde Train Station (formerly, the Newe Train Station) has been a port of call – home away from home – for diplomats, hustlers, entrepreneurs, and… wanderers."

The description of the Dog Exercise Area is "Dogs can be seen practicing yoga and synchronized barking at all hours of the day (much to the annoyance of their neighbors)."

The description of Bottle Cap Wall is "A wall made entirely of bottle caps."

The description of Porcelain Parrot is "A source of amusement for neighborhood school children."

The description of MarkerSeven is "Demonstrating the importance of relativity, the mile marker is unquestionably 0.7 miles from something -- it just doesn’t say what."

The description of Unfathomable Orb is "A lawn orb, the why of which is uncertain and, indeed,  perhaps unknowable."

The description of Rottweiler Art is "They may be good guard dogs, but they are lousy artists. The sculpture lacks subtlety."

The description of Sister City Friendship Altar is "A timeworn granite slab with furrows cut to drain towards the edges, the arcane runes at its base are illegible."

The description of Year1893 is "A sign both commemorating the failure to hire a town historian in 1893 and bemoaning the absence of other recorded events for that year."

The description of Eagle's Sojourn is "A bas relief carving of Dwight Eisenhower dressed as a cowboy and riding an eagle to the moon."

The description of Telescope Nymph is "Based on one of Shakespeare’s less known works, in this sculpture, the titular nymph searches the sky for her lost salmon."

The description of Fire Is Our Friend is "An eternal flame burns bright above a bronze brazier held aloft by the Four Horsemen of the Apocalypse. The plaque notes that the piece was donated to the town by Fire Bridge 11."

The description of Unearthly Geometry is "You can only stomach a momentary, sidelong glance at the fecund immensity of the inchoate mass of spongy protoplasm and the loathsome writhing knot of vermiculous tentacles that purports to be a kindergarten art project."

The description of Cranberry Bog is "The town’s cranberry bog, a quiet pond filled with the delectable but bitter berries. Bodies are pulled from its depths with some regularity, but at least they are well-preserved by the acidity of the bog."

The description of Found Art is "A single screw attached to a surfboard.[one of]This is what counts as art these days. Jeesh.[or][stopping]".

The description of Crystal Skull is "There isn’t much left of the Salt Skull exhibit. Occasionally, deer walk through town just to lick it."

The description of Vuvuzelas For Freedom is "A bronze plate is set into the sidewalk here to commemorate the Vuvuzela Uprising of 1893."

The description of Toxicodendron radicans is "In the middle of this field, there is a small sign, [quotation mark]Warning: Poison Ivy.[quotation mark]."

The description of Perilous Passageway is "A disgusting passageway."

TimesDrowned, TimesRunOver, TimesTarred, and TimesRailroaded are numbers that vary.

Instead of going north when the location of the player is a juxtaReservoir quadroom:
	if TimesDrowned is:
		-- 0: say "none";
		-- 1: say "1";
		-- 2: say "2";
		-- otherwise: say "more";
	increase timesDrowned by one.

Instead of going west when the location of the player is a juxtaHighway quadroom, say "Flattened!"
Instead of going south when the location of the player is a juxtaTarpit quadroom, say "Slothed!"
Instead of going east when the location of the player is a juxtaRailway quadroom, say "Railroaded!"

Chapter Inside Nyantech

HQ is a region. Lobby, RevolvingDoor, StairsGround, LAN Closet, StairsBasement, StairsSB, StairsSSB, StairsInterns, StairsEngineers, StairsManagers, StairsInfirmary, StairsProcessing, StairsPackaging, StairsRoof, Cafeteria, Ball Pit, Beverages, Snacks, DeckW, DeckN, DeckE, DeckS, Legal Department, Cousteau Room, Rick Astley Shrine, Crawl Space, Gearing Assembly, Support Boom, Top of the Ladder, Somewhere Along The Ladder, Bottom Rung, Throne Room, and MuskTube Station are rooms in HQ.

The Cat Area is a region. The Cat's Beret, Maintenance Hatch, Captain's Cabin, CatHead, Catwalk, Gantry Chamber, and Poop Deck are in the Cat Area. The Cat Area is in HQ.

The RevolvingDoor is south of the Lobby. The printed name of the RevolvingDoor is "Revolving Door".

The StairsGround is north of the Lobby. The printed name of the StairsGround is "Emergency Stairs: Ground Level".

The StairsBasement is below StairsGround. The printed name of StairsBasement is "Emergency Stairs: Basement Level".

The StairsSB is below StairsBasement. The printed name of StairsSB is "Emergency Stairs: Sub-Basement Level".

The StairsSSB is below StairsSB. The printed name of StairsSSB is "Emergency Stairs: Sub-Sub-Basement Level".

The StairsInterns is above StairsGround. The printed name of StairsInterns is "Emergency Stairs: Level 1".

The StairsEngineers is above StairsInterns. The printed name of StairsEngineers is "Emergency Stairs: Level 2".

The StairsManagers is above StairsEngineers. The printed name of StairsManagers is "Emergency Stairs: Level 3".

The StairsInfirmary is above StairsManagers. The printed name of StairsInfirmary is "Emergency Stairs: Level 4".

The StairsProcessing is above StairsInfirmary. The printed name of StairsProcessing is "Emergency Stairs: Above Level 4".

The StairsPackaging is above StairsProcessing. The printed name of StairsPackaging is "Emergency Stairs: Way The Hell Above Level 4".

The StairsRoof is above StairsPackaging. The printed name of StairsRoof is "Emergency Stairs: Roof Access".

DeckN is north of StairsRoof. The printed name of DeckN is "Observation Deck, Northern View".

DeckW is southwest of DeckN. The printed name of DeckW is "Observation Deck, Western View".

DeckS is southeast of DeckW. The printed name of DeckS is "Observation Deck, Southern View".

DeckE is northeast of DeckS and southeast of DeckN. The printed name of DeckE is "Observation Deck, Eastern View". 

The LAN Closet is east of the Lobby.

The Cafeteria is north of DeckS.

Snacks is northeast of the Cafeteria.

Beverages is northwest of the Cafeteria.

Ball Pit is east of the Cafeteria.

BallPitShallow is down from Ball Pit. The printed name of BallPitShallow is "In The Ball Pit, Just Under The Surface".

BallPitDeep is down from BallPitShallow. The printed name of BallPitDeep is "Deep In The Ball Pit".

BallPitBottom is down from BallPitDeep. The printed name of BallPitBottom is "Near The Bottom Of The Ball Pit".

Legal Department is south of StairsBasement. 

Cousteau Room is south of Legal Department.

The Rick Astley Shrine is south of StairsSB.

Throne Room is south of StairsSSB.

MuskTube Station is down from Throne Room.

The Crawl Space is above the LAN Closet.

The Bottom Rung is above the Crawl Space.

Somewhere Along The Ladder is above the Bottom Rung.

The Top Of The Ladder is above Somewhere Along the Ladder.

The Gearing Assembly is above The Top of the Ladder and outside from Support Boom.

The Support Boom is outside from Gantry Chamber.

Section 1 - Cat Navigation

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

Section 2 - Cat Layout

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

[An unconnected place  where 'original' clonable objects live... very platonic.]
The Void is a room.   
The Void contains a Pogoball-kind called PogoBall.
The Void contains a Pogochum-kind called PogoChum.
The Void contains a Pogometh-kind called PogoMeth.


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
	say asciiPogoBall;
	say "You wake up, and it’s three in the morning. You must have drifted off for a bit, but no bother. Time’s a-wasting. The world is full of Pogomen, and now that you don’t have a job or family to worry about, you might as well get back to it![paragraph break]"



Book 6 - Scenes

Around the Town is a scene. Around the Town begins when play begins. Around the town ends when the location is the lobby.



Book 7 - Hints

