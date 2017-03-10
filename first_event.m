%first_event

function [next_event_id, player] = first_event(player, item_database)

    player.energy = 10;

    fprintf('%s, welcome to Drexel Village\n', player.name);
    fprintf('You just graduated from the Drexel School of Chivalry\n');
    fprintf('... at the bottom of your class.\n');
    [~, player] = giveItem(player, 7, item_database);  %giv sword
    [~, player] = giveItem(player, 6, item_database);  %giv food
    fprintf('You only have a sword as your diploma and some leftovers.\n');
    fprintf('They will be a useful tools for fending off enemies,\n');
    fprintf('but will not fill an empty stomach forever. You need to get a job.\n');
    fprintf('You remember your instructor told you that you can always\n');
    fprintf('get further training as a recruit in Drexel School of Mastery\n');
    fprintf('at Disque or Randell, or you could freelance quests at Curtis\n');
    fprintf('You also remember your friend telling you about how the\n');
    fprintf('underground always needs a few hands, and that you could\n');
    fprintf('sometimes find them at the Shaft or Kelly.\n\n');
    
    player.energy = player.energy - 1;
    fprintf('You spent too much time thinking, you are already losing energy\n');
    fprintf('Just remember that your choices determine who you are.\n\n');
    
    fprintf('Where do you want to go?\n');
    fprintf('Disque\n');
    fprintf('Curtis\n');
    fprintf('Shaft\n');

    
    incorrect = true;
    while( incorrect )
        in = input('>>','s');
        if( strcmpi(in, 'Disque') )
            next_event_id = 10;
            incorrect = false;
        elseif( strcmpi(in, 'Curtis') )
            next_event_id = 30;
            incorrect = false;
        elseif( strcmpi(in, 'Shaft') )
            next_event_id = 50;
            incorrect = false;
        elseif( strcmpi(in, 'Secret') )
            next_event_id = 80;
            incorrect = false;
        else
            fprintf('%s unrecognized, try again.', in);
            incorrect = true;
        end
        
    end
end