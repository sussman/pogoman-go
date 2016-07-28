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

TEAMCOLOR is a text that varies. [TODO: should this be an enumerated type instead?]
TEAMCOLOR is "?".  [eventually changes as player solves puzzles]


Chapter PogoThings

[These 'kinds' each have a platonic forms in the Void which we dynamically clone as needed during run-time.]

A Pogoball-kind is a kind of thing.  The description is "It's a cheap mass-produced red and white plastic ball.".  Understand "ball" as a pogoball-kind.  The plural of pogoball-kind is PogoBalls.

A Pogochum-kind is a kind of thing.  The description is "Rancid bits of chopped up…. something. Whatever it is, Pogomen are attracted to it. Drop a bit of it, and a Pogoman will come to you!".  Understand "chum" as a pogochum-kind.  The plural of pogochum-kind is PogoChums.

A Pogometh-kind is a kind of thing.  The description is "You’re not sure what’s in it, but it seems to make pogoman feel better, at least until withdrawal sets in.".  Understand "meth" as a pogometh-kind.  The plural of pogometh-kind is PogoMeths.

[No need to dynamicallly clone these kinds-- theyre created in locations at compile-time.]

A PogoSpot is a kind of thing.  A PogoSpot is fixed in place.  Understand "spot" and "pogospot" as a PogoSpot.
The description of a PogoSpot is usually "Your phone shows a sign that can be spun."  

A PogoSign is a kind of thing.  A PogoSign is scenery. Understand "sign" as a PogoSign.  The description of a PogoSign is usually "A round, spinnable disc showing a photograph of [location].".

[The Pogomen themselves!]

A Pogoman is a kind of neuter animal.  The plural of pogoman is pogomen.  Some pogomen are defined by the Table of Creatures.

A pogoman has a number called evolutionLevel.  The evolutionLevel is usually 1.  The description of a pogoman is "A magical creature with combat powers - [description].  Like all Pogomen, it can be evolved."

Instead of taking a pogoman:
	say "You'll have to throw a Pogoball at it to capture it!".



Chapter Rules Modifications

Instead of examining the player:
	say "You are scruffy and disheveled, having played the game for several days straight. Luckily, your allergies are playing up, so scent isn’t an issue."


Chapter Verbs

Section Spinning

[TODO:  randomize what comes out]
[TODO:  user must wait 20 turns before being allowed to spin sign again]

Spinning is an action applying to a thing. Understand "spin [thing]" as spinning.
Carry out spinning:
	if the noun is a PogoSpot:
		say "You probably want to spin the PogoSpot's sign.";
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
Carry out evolving:
	if the noun is a pogoman:
		if the player carries the noun:
			let the new-pogoman be the Ev2 corresponding to Original of noun in the Table of Evolution;
			now the player carries the new-pogoman;
			move the noun to the Void;
			say "[The noun] ripples and glows with energy, shooting sparks in all directions as it hovers and spins in the air.  A moment later, you see that it has evolved into [the new-pogoman]! [paragraph break]";
		otherwise:
			say "You're not carrying [the noun].[paragraph break]";
	otherwise:
		say "Only Pogomen can evolve!".
	

Section AwardXP

[moral equivalent of a global game score -- simply "AwardXP 30" when needed, and ¡levelling will happen automatically.]
AwardXP is an action applying to a number.  
To AwardXP (award - a number):
	now XP is XP + award;
	say "You have been awarded [award] XP.[paragraph break]";
	CheckLevel.


Section Levelling

CheckLevel is an action out of world.
To CheckLevel:
	let goalXP be 100 * (POGOLEVEL + 1);
	if XP > goalXP:
		now POGOLEVEL is (XP / 100);  [TODO make this an exponential table]
		say "You glow with power as your PogoLevel rises to [POGOLEVEL].[paragraph break]"


Section Rebooting

Understand the command "reboot" as something new.
Understand "reboot" as rebooting.  Rebooting is an action applying to nothing.
Carry out rebooting:
	say "You reboot your phone." [TODO: add tons of humorous repeated attempt texts]


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
	say openingText;
	pause the game;
	ShowStatus.
	

Chapter Every Turn

Every turn:
	CheckLevel; [possibly level-up the player]
	ShowStatus.  [display current level, team, XP in status bar]



Book 2 - Places

Chapter Around Town

Quadroom is a kind of room. A quadroom can be nw, ne, se, sw, or axial. A quadroom is usually axial. 
[These inform what landmarks are visible from each corner of the Nyantech Tower's observation deck. Items on cardinal axes are not mentioned.]

Dung Beetle Mural, Witch Pillory, Old Jail, Cyclorama, Flag Pole, Old Courthouse, Unfathomable Orb, Service Dog Memorial, and Spit n' Solder are nw quadrooms.

General Nelson, Church of the Orthagonal Sticks, Crystal Skull, Yummi Tummi Softserve, Giant Chicken, Telescope Nymph, The Gardens of Zarf, Welbourne Travel, and Dog Exercise Area are ne quadrooms.

Johnson's Rock, City Park, Hook & Ladder, Nyantech Entrance, Bottle Cap Wall, Krusty Kronuts, Prissy Little Sausages, Rotary Clock Tower, Floyd Memorial Bench, The Olde Train Station, Old Town Hall, Ashwell-Lott Estate, and Found Art are axial quadrooms.

Toxicodendron radicans, Battle of Margot's Pantry, Cranberry Bog, Vuvuzelas For Freedom, Brotherhood of the Slippery Axel, Parking Lot Award, Unearthly Geometry, MarkerSeven, and Garden Gnome Without Head are sw quadrooms.

Sister City Friendship Altar, Municipal Library, Eagle's Sojourn, Fire Is Our Friend, Year1893, Flan Emporium, Rottweiler Art, Hank's Tavern, and Gas Station Gazebo are se quadrooms.

[Borders of the Village to trigger near-death scenes]
A quadroom can be juxtaReservoir. 
A quadroom can be juxtaTarpit.
A quadroom can be juxtaHighway.
A quadroom can be juxtaRailway.

The Dung Beetle Mural, Witch Pillory, Old Jail, Johnson's Rock, General Nelson, Church of the Orthagonal Sticks, and Crystal Skull are juxtaReservoir.

The Dung Beetle Mural, Cyclorama, Unfathomable Orb, Bottle Cap Wall, Toxicodendron radicans, Vuvuzelas for Freedom, and Unearthly Geometry are juxtaHighway.

Unearthly Geometry, MarkerSeven, Garden Gnome Without Head, Found Art, Rottweiler Art, Hank's Tavern, and Gas Station Gazebo are juxtaTarpit.

Crystal Skull, Telescope Nymph, Dog Exercise Area, The Olde Train Station, Eagle's Sojourn, Flan Emporium, and Gas Station Gazebo are juxtaRailway.

[Geographic Layout of the Town]
Dung Beetle Mural is west of Witch Pillory and north of Cyclorama.
Witch Pillory is west of Old Jail and north of Flag Pole.
Old Jail is west of Johnson’s Rock and north of Old Courthouse.
Johnson's Rock is west of General Nelson and north of City Park.
General Nelson is west of Church of the Orthagonal Sticks and north of Yummi Tummi Softserve.
Church of the Orthagonal Sticks is west of Crystal Skull and north of Giant Chicken.
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
Spit n' Solder is west of Hook & Ladder and north of Prissy Little Sausages.
Service Dog Memorial is west of Spit n' Solder and north of Krusty Kronuts.
Unfathomable Orb is west of Service Dog Memorial and north of Bottle Cap Wall.
Dog Exercise Area is north of The Olde Train Station.

Floyd Memorial Bench is west of The Olde Train Station and north of Municipal Library.
Rotary Clock Tower is west of Floyd Memorial Bench and north of Sister City Friendship Altar.
Nyantech Entrance is west of Rotary Clock Tower and north of Old Town Hall.
Prissy Little Sausages is west of Nyantech Entrance and north of Cranberry Bog.
Krusty Kronuts is west of Prissy Little Sausages and north of Battle of Margot's Pantry.
Bottle Cap Wall is west of Krusty Kronuts and north of Toxicodendron radicans.
The Olde Train Station is north of Eagle's Sojourn.

Municipal Library is west of Eagle's Sojourn and north of Year1893. The printed name of Year1893 is "1893".
Sister City Friendship Altar is west of Municipal Library and north of Fire Is Our Friend.
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

The Village is a region. Dung Beetle Mural, Witch Pillory, Old Jail, Cyclorama, Flag Pole, Old Courthouse, Unfathomable Orb, Service Dog Memorial, Spit n' Solder, General Nelson, Church of the Orthagonal Sticks, Crystal Skull, Yummi Tummi Softserve, Giant Chicken, Telescope Nymph, The Gardens of Zarf, Welbourne Travel, Dog Exercise Area, Johnson's Rock, City Park, Hook & Ladder, Nyantech Entrance, Bottle Cap Wall, Krusty Kronuts, Prissy Little Sausages, Rotary Clock Tower, Floyd Memorial Bench, The Olde Train Station, Old Town Hall, Ashwell-Lott Estate, Found Art, Toxicodendron radicans, Battle of Margot's Pantry, Cranberry Bog, Vuvuzelas For Freedom, Brotherhood of the Slippery Axel, Parking Lot Award, Unearthly Geometry, MarkerSeven, Garden Gnome Without Head, Sister City Friendship Altar, Municipal Library, Eagle's Sojourn, Fire Is Our Friend, Year1893, Flan Emporium, Rottweiler Art, Hank's Tavern, and Gas Station Gazebo are in The Village.

[Location-specific elements in The Village]
The description of City Park is "A small park, well groomed, with a few trees and hedges."  The Park contains an Edator.

The description of Old Courthouse is "A brick court house, probably of historical significance."

The description of Old Jail is "A solidly built brick building that was once a jail."

The description of Johnson's Rock is  "A boulder with a commemorative plaque that relates that the rock was named after Johnson.".  A Rock PogoSpot is a PogoSpot in Johnson's Rock. Rock PogoSign is a PogoSign in Johnson's Rock.


Chapter Inside Nyantech


Chapter In Pogoland


Chapter The Void

[An unconnected place  where 'original' clonable objects live... very platonic.]
The Void is a room.   
The Void contains a Pogoball-kind called PogoBall.
The Void contains a Pogochum-kind called PogoChum.
The Void contains a Pogometh-kind called PogoMeth.





Book 3 - Characters



Book 4 - Tables and Boxed Text

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
	say "────────▄███████████▄────────[line break]─────▄███▓▓▓▓▓▓▓▓▓▓▓███▄─────[line break]────███▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓███────[line break]───██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██───[line break]──██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██──[line break]";
	say "─██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██─[line break]██▓▓▓▓▓▓▓▓▓███████▓▓▓▓▓▓▓▓▓██[line break]██▓▓▓▓▓▓▓▓██░░░░░██▓▓▓▓▓▓▓▓██[line break]██▓▓▓▓▓▓▓██░░███░░██▓▓▓▓▓▓▓██[line break]███████████░░███░░███████████[line break]";
	say "██░░░░░░░██░░███░░██░░░░░░░██[line break]██░░░░░░░░██░░░░░██░░░░░░░░██[line break]██░░░░░░░░░███████░░░░░░░░░██[line break]";
	say "─██░░░░░░░░░░░░░░░░░░░░░░░██─[line break]──██░░░░░░░░░░░░░░░░░░░░░██──[line break]───██░░░░░░░░░░░░░░░░░░░██───[line break]────███░░░░░░░░░░░░░░░███────[line break]─────▀███░░░░░░░░░░░███▀─────[line break]────────▀███████████▀────────[paragraph break]";
	say "[variable letter spacing]"
	

To say openingText:
	say asciiPogoBall;
	say "You wake up, and it’s three in the morning. You must have drifted off for a bit, but no bother. Time’s a-wasting. The world is full of Pogomen, and now that you don’t have a job or family to worry about, you might as well get back to it![paragraph break]"



Book 5 - Scenes




Book 6 - Hints

