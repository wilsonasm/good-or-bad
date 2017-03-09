function [next_event_id, player] = kellyC_event(player, item_database)
{
fprintf('You reach Kelly Cave: a gruesome place filled with horror.\n')
fprintf('You notcied a shimmering light far into the cave and\n')
fprintf('you come o dicsover it is the gold. As you reclaim the gold\n')
fprintf('A giant slug stands in your way of your path.\n')

r= rand()*100;
if (r <50)
    
player.energy = player.enery-4;
fprintf('healthbar %s \n', player.energy)
fprintf('That fight took a great deal out of you, you are\n')
fprintf('quite lucky to still be alive\n')

else
    
fprintf('Consider yourself lucky. Most people do not\n ');
fprintf('survive against the slime, let alone come out unscathed \n');

end;
fprintf('But now that you have the gold will your eturn it to the traveler \n')
fprintf('or keep it all to yourself?\n Keep or Give \n')
dec= input('>>', 's');
chance= rand()*5

if( strcmpi(dec, 'Keep')==1 )

fprintf('I guess you do deserve the gold for the hard work \n')

elseif( strcmpi(dec, 'Give')==1)

fprintf('such a noble Knight you are \n')
if chance < 3

fprintf('For doing such a noble deed the traveler has given you half of his gold\n')

else

fprintf('The traveler thanks you for this is the only money he has to his name\n')

end;

end;



next_event_id = 12;
}
