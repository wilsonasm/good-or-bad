function [next_event_id, player] = shaft_event(player, item_db)
    
    fprintf('The shaft exists in the farthest corner of the Drexel Village.\n');
    fprintf('Generally people stay away from the shaft since it is known\n');
    fprintf('that dark dealings go on there. Infact, just the term Drexel Shaft\n');
    fprintf('is subject to shady rumors and ill-humored jokes throughout the\n');
    fprintf('land. You are fully aware of these rumors but you decide to\n');
    fprintf('go on. Along the way you find a peculiar pebble in the path.\n\n');
    
    fprintf('Do you pick up the pebble?\n' 
    fprintf('(>> indicates case-insensitive string input required)\n');
    
    while( 1==1 )
        pick_up = input('>>');
        
        if( strcmpi(pick_up, 'yes') )
            [~, player] = giveItem(player, 8, item_db); 
            break;
        elseif( strcmpi(pick_up, 'no') )
            fprintf('You ignore the pebble.\n\n');
            break;
        else
            fprintf('Invalid input. Enter either yes or no.\n');
        end
    end
    fprintf('You keep walking and starve through the evening, and\n');
    fprintf('eventually reach the shaft at nightfall.\n\n');
    
    player.energy = player.energy - 1;
    fprintf('Health remaining: %i\n\n', player.energy);
    
    next_event_id = 51;

end
