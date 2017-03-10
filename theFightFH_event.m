function [next_event_id, player] = theFightFH_event(player, item_database)
{
fprintf('Through the woods you hear wierd yelling from a distant.\n')
fprintf('As you peel through the leaves you discover an all out brawl.\n')
fprintf('You are on your way to the mountain top but why not test your strength?\n')
fprintf('Fight or Flight')

while (1==1)
dec= input('>>', 's');
if (strcmpi(dec,'Fight')==1)
fprintf('I see you wish to test your strength\n')
if life < 25
fprintf('A strong knight you have proven to be.\n')
fprintf('I am surprise that you were ranked so low in the Chivalry School Drexel\n')
else
player.energy= player.energy -4;
fprintf('What a brutal beating that was. But I will not judge you\n')
fprintf('becasue to be honest barbarians are ruthless and unfair.\n')
end;
elseif (strcmpi(dec, 'Flight')==1)
fprintf('Well, I suggest we book it out of hear becayse i think\n')
fprintf('they hear us rustling in the leaves.\n')
else
fprintf('I am sorry, that is not a valid action.\n')
end;
next_event_id = 20;
}
