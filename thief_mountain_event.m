function [next_event_id, player] = thief_mountain_event(player, item_db)

    next_event_id = 90;
    incorrect = true;
    dead = false;
    
    fprintf('The next day that same mysterious man comes to you. ''Alright,\n');
    fprintf('I got a new job for you. Some rich merchants are going to be\n');
    fprintf('traveling through the mountains today. You should ambush them''.\n');
    fprintf('Before you get a chance to reply, the mysterious man has already\n');
    fprintf('vanished. Do you go to ambush the merchants or no?\n\n');

    while( incorrect )
       fprintf('(Ambush or no?)\n');
       in = input('>>','s');
       
       if( strcmpi(in, 'ambush') )
           incorrect = false;
           player.moralCounter =  player.moralCounter - 3;
           
       elseif( strcmpi(in, 'no') )
           incorrect = false;
           player.moralCounter = player.moralCounter + 3;
           fprintf('You ignore what the mysterious man said, and decide to\n');
           fprintf('quit the ways of theivery. The next day however, you find\n');
           fprintf('your name wanted for bounty. You are able to hide from\n');
           fprintf('all the guards hunting you for a few days, but eventually\n');
           fprintf('there ruthlessness and your weakening energy get to you.\n');
           fprintf('You die.\n\n');
           dead = true;
           next_event_id = 200;
       else
           fprintf('Invalid input. Try again.\n');
       end
    end
    
    if( ~dead )
        fprintf('You travel up the mountain, but you once you arrive you find the\n');
        fprintf('merchants being attacked by a pack of wolves. You can save them,\n');
        fprintf('rob them in all the confusion, or flee for your own safety.\n');
        fprintf('What do you do?\n\n');
        
        incorrect = true;
        while(incorrect)
           fprintf('(Save, rob, or flee?)\n');
           in = input('>>', 's');
           
           if( strcmpi(in,'save') )
               incorrect = false;
               fprintf('You somehow manage to save them.');
               player.moralCounter = player.moralCounter + 5;
               player.energy = player.energy - 5;
           elseif( strcmpi(in,'rob') )
               incorrect = false;
               fprintf('You manage to steal some gold, despite getting injured.\n');
               player.moralCounter = player.moralCounter - 5;
               player.energy = player.energy - 2;
           elseif( strcmpi(in, 'flee') )
               incorrect = false;
               fprintf('You flee for your life.\n');
               player.moralCounter = player.moralCounter - 2;
               player.energy = player.energy - 3;
           else
               fprintf('Invalid input. Try again.\n');
           end
        end
        
        if( hasItem(player, 10, item_db) )
           useItem(player, 10, item_db); 
        end
        
        fprintf('On your way back, you see some large claw marks on the ground\n');
        fprintf('These seem to be actual dragon claw marks. At first you''re in\n');
        fprintf('disbelief, but soon you here a strong roar. There is a dragon...\n\n');
        
        if( ~dead )
            next_event_id = 90;
        end
        
        fprintf('Energy remaining: %i\n\n', player.energy);
        
    end
end