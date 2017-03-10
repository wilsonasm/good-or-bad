function [next_event_id, player] = randell_event(player, item_database)
{
fprintf('Your walk to the Kingdom of Randell came to an abrupt stop as\n')
fprintf('you find the kindgom taken hostage by the greed Temple King.\n')
fprintf('IT is up to you, fair Knight, you you wish to relanquish the kingdom\n')
fprintf('from their grasp or continue to walk away.\n')
fprintf('Free or Walk\n')

dec= input('>>', 's');

life= rand()*50;

if (strcmpi(dec,'Free')==1)
fprintf('I see you wish to test your skills\n')
if life < 25
fprintf('I am quite surprised of you, not only did you free them but you managed\n')
fprintf('to show your rank amognst the greats\n')
else
player.energy= player.energy -5;
fprintf('What a shame. I expected more of you. Not only did you make a fool of yourself\n')
fprintf('But no you have to run for your life.\n')
end;
elseif (strcmpi(dec, 'Walk')==1)
fprintf('Well, hero moments are not made for everyone. Lets continue on\n')
else
fprintf(
next_event_id = 21;
}
