function [ next_event_id, player ] = thief_starve_event( player, item_db )
%THIEF_STARVE_EVENT event id 54

    next_event_id = 55;
    incorrect_input = true;
    
    if( hasItem(player, 4, item_db) )  %if has gold
        fprintf('You are extremely tired now. But thankfully you have some\n');
        fprintf('gold on you. Do you want to use it to stay at an inn for tonight?\n');
        
        while(incorrect_input)
            fprintf('(yes or no?)\n');
            in = input('>>', 's');
            
            if( strcmpi(in,'yes') )
                incorrect_input = false;
                fprintf('You stay at an inn and have a good rest. Your energy\n');
                fprintf('is restored.\n\n');
                player.energy = 10;
                
            elseif( strcmpi(in,'no') )
                incorrect_input = false;
                fprintf('You decide to save the gold.\n');
                if( hasItem(player, 5, item_db) )
                    [~,player] = useItem(player, 5, item_db);
                elseif( hasItem(player, 6, item_db) )
                    [~,player] = useItem(player,6,item_db);
                else
                    fprintf('You simply starve for the night.\n');
                    player.energy = player.energy - 2;
                end
            else
                fprintf('Incorrect input. Please try again.\n');
            end
        end
        
    else %no gold
        fprintf('You are tired and staring this night. You decide to\n');
        fprintf('go through what you have so far.\n');
        
        if( hasItem(player, 5, item_db) )
            [~,player] = useItem(player, 5, item_db);
            elseif( hasItem(player, 6, item_db) )
                [~,player] = useItem(player,6,item_db);
            else
                fprintf('You simply starve for the night.\n');
            player.energy = player.energy - 2;
        end
        
    end

    player.energy = player.energy - 1;
    fprintf('Energy remaining: %i\n\n', player.energy);
    
end

