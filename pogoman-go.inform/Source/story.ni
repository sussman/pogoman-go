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

	

Chapter Rules Modifications

Instead of examining the player:
	say "You are scruffy and disheveled, having played the game for several days straight. Luckily, your allergies are playing up, so scent isn’t an issue."


Chapter Verbs

Section Spinning

[TODO:  randomize what comes out]
[TODO:  user must wait 20 turns before being allowed to spin sign again]

Spinning is an action applying to a thing. Understand "spin [thing]" as spinning.
Carry out spinning:
	if the noun is a PogoSign:
		say "The PogoSign spins around and spews out a PogoBall and a piece of PogoChum.[paragraph break]";
		let the New PogoBall be a new object cloned from the PogoBall;
		now the New PogoBall is in the location;
		let the New PogoChum be a new object cloned from the PogoChum;
		now the New PogoChum is in the location;
	otherwise:
		say "That's probably not something you should spin.[paragraph break]".


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


Chapter Initialize

When play begins:
	[TODO: put player in one of a few random spots in first scene] [move the player to X]
	move the player to Johnson's Rock;
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

The Park is a room.  "A small city park, well groomed, with a few trees and hedges."

The Old Courthouse is a room. "A brick court house, probably of historical significance."

The Old Jail is a room. "A solidly built brick building that was once a jail."

Johnson's Rock is a room. "A boulder with a commemorative plaque that relates that the rock was named after Johnson.".  A Rock PogoSpot is a PogoSpot in Johnson's Rock. Rock PogoSign is a PogoSign in Johnson's Rock.



Chapter Inside Nyantech


Chapter In Japan


Chapter The Void

[An unconnected place  where 'original' clonable objects live... very platonic.]
The Void is a room.   
The Void contains a Pogoball-kind called PogoBall.
The Void contains a Pogochum-kind called PogoChum.
The Void contains a Pogometh-kind called PogoMeth.


Book 3 - Characters



Book 4 - Tables and Boxed Text

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

