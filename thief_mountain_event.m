function [next_event_id, player] = thief_mountain_event(player, item_db)

    next_event_id = 90;
    incorrect = true;
    dead = false;
    
    fprintf('The next day that same mysterious man comes to you. ''Alright,\n');
    fprintf('I got a new job for you. Some rich merchants are going to be\n');
    fprintf('traveling through the mountains today. You should ambush them''.\n');
    fprintf('Before you get a chance to reply, the mysterious man has already\n');
    fprintf('vanished. Do you ambush the merchants or no?\n\n');

    while( incorrect )
       fprintf('(Ambush or no?)\n');
       in = input('>>','s');
       
       if( strcmpi(in, 'ambush') )
           
       elseif( strcmpi(in, 'no') )
           player.moralCounter = player.moralCounter + 3;
           fprintf('You ignore what the mysterious man said, and decide to\n');
           fprintf('quit the ways of theivery. The next day however, you find\n');
           fprintf('your name wanted for bounty. You are able to hide from\n');
           fprintf('all the guards hunting you for a few days, but eventually\n');
           fprintf('there ruthlessness and your weakening energy get to you.\n');
           fprintf('You die.\n\n');
           next_event_id = 200;
       else
           fprintf('Invalid input. Try again.\n');
       end
    end
    
    if( ~dead )
        fprintf('You travel up the mountain, but you see the merchants being\n');
        fprintf('attacked by a pack of wolves. You can save them, rob them\n');
        fprintf('in all the confusion, or flee for your own safety. What do\n');
        fprintf('you do?\n\n');
        
        incorrect = true;
        while(incorrect)
           fprintf('(Save, rob, or flee?)\n');
           in = input('>>', 's');
           
           if( strcmpi(in,'save') )
               fprintf('You somehow manage to save them.');
               player.moralCounter = player.moralCounter + 5;
               player.energy = player.energy - 5;
           elseif( strcmpi(in,'rob') )
               fprintf('You manage to steal some gold, despite getting injured.\n');
               player.moralCounter = player.moralCounter - 5;
               player.energy = player.energy - 2;
           elseif( strcmpi(in, 'flee') )
               fprintf('You flee for your life.\n');
               player.moralCounter = player.moralCounter - 2;
               player.energy = player.energy - 3;
           else
               fprintf('Invalid input. Try again.\n');
           end
        end
        
        
        
        fprintf('On your way back, you see some large claw marks on the ground\n');
        fprintf('These seem to be actual dragon claw marks. At first you''re in\n');
        fprintf('disbelief, but soon you here a strong roar. There is a dragon\n');
        fprintf('heading toward the village...\n\n');
        %!! run or not here!!!
       
        fprintf('Energy remaining: %i\n\n', player.energy);
        
    end
end