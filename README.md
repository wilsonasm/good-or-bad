#good-or-bad

MATLAB text-interface rpg

##To Use
Open good_or_bad.m in MATLAB and run script (may need to add folder to path)

##Authors
 - Shaumik Ashraf
 - Markus Wilson
 - Quan Nguyen

##Storyline
Setting: Medieval Times/ Fantasy

Gameplay: includes items and autoresolved battles (through pseudorandom generator)

Player: Judged on morality counter (good/bad), influenced by decisions


##Description
Have an energy bar, for every event you take, the enrgy bar goes down. You 
can replenish with energy with food or certain items. Energy also decreases 
when injured in battle. As player makes decisions he or she must balance
between a good choice, bad choice, and energy. If energy hits zero player
dies. 

##Design
Each major scenario in the game will be its own function, dubbed event. A
function handle in the main code will point to the current event and will
update the next event in each loop. Each team member will be assigned their
own series of events to code.

A player struct will hold information about the player, and will be passed
on to events, as well as updated by events. 

A struct array for items will also exist, that will effectively serve as a
table for all possible items in the game.

##Technical Aspects
Utilizes:
 - Structs (and struct arrays)
 - Function handles
 - Random number generator
 - Loops
 - String manipulation


##How to git

(https link: https://github.com/wilsonasm/good-or-bad.git )

git pull

<EDIT YOUR STUFF>

git pull <AGAIN>

git add --all

git commit -m "<PUT MESSAGE HERE>"

git push

<DONE>
