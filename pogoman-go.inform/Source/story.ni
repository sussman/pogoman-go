"Pogoman Go!" by Jack Welch and Ben Collins-Sussman


The story headline is "An interactive satire".
The release number is 1.
The story creation year is 2016.
The story description is "The world is full of Pogomen, and now that you don’t have a job or family to worry about, you might as well get back to it!"

Use full-length room descriptions, american dialect and the serial comma.

[TODO:  Release along with cover art.]

Include Basic Screen Effects by Emily Short.


Book 1 - Mechanics


Chapter Declare Global Variables

POGOLEVEL is a number that varies.  POGOLEVEL is 3.  [TODO is this a good starting value?]

XP is a number that varies.  XP is 320.  [TODO is this a good starting value?]

TEAMCOLOR is a text that varies. [TODO: should this be an enumerated type instead?]
TEAMCOLOR is "?".  [eventually changes as player solves puzzles]


Chapter Rules Modifications



Chapter Verbs

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
		now POGOLEVEL is (XP / 100);
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
	[TODO move the phone to player]
	say openingText;
	pause the game;
	ShowStatus.
	

Chapter Every Turn

Every turn:
	CheckLevel; [possibly level-up the player]
	ShowStatus.  [display current level, team, XP in status bar]



Book 2 - Places

The Park is a room. 




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

