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

Quadroom is a kind of room. A quadroom can be nw, ne, se, sw, or midline. A quadroom is usually midline. A quadroom can be juxtaReservoir, juxtaHighway, juxtaTarpit, or juxtaRailway. A quadroom is usually juxtaRailway.

Dung Beetle Mural, Witch Pillory, Old Jail, Cyclorama, Flag Pole, and Old Courthouse are nw quadrooms.

General Nelson, Church of the Orthagonal Sticks, Crystal Skull, Yummi Tummi Softserve, Giant Chicken, and Telescope Nymph are ne quadrooms.

Johnson's Rock and City Park are quadrooms.

Dung Beetle Mural is west of Witch Pillory and north of Cyclorama.
Witch Pillory is west of Old Jail and north of Flag Pole.
Old Jail is west of Johnson’s Rock and north of Old Courthouse.
Johnson's Rock is west of General Nelson and north of City Park.
General Nelson is west of Church of the Orthagonal Sticks and north of Yummi Tummi Softserve.
Church of the Orthagonal Sticks is west of Crystal Skull and north of Giant Chicken.
Crystal Skull is north of Telescope Nymph. 
Giant Chicken is west of Telescope Nymph.
Giant Chicken is east of Yummi Tummi Softserve.
Yummi Tummi Softserve is east of City Park.
City Park is east of Old Courthouse.
Old Courthouse is east of Flag Pole.
Flag Pole is east of Cyclorama.

The Dung Beetle Mural, Witch Pillory, Old Jail, Johnson's Rock, General Nelson, Church of the Orthagonal Sticks, and Crystal Skull are juxtaReservoir.



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

