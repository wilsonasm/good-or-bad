function [ next_event_id, player ] = thief_gold_event( player, item_db )
%THIEF_GOLD_EVENT - you try to steal some gold; event id 53

    fleed = false;
    input_incorrect = true;
    next_event_id = 54;
    
    fprintf('You head back to your old school, only this time to rob it.\n');
    fprintf('According to the plan, that mysterious man will cause a commotion\n');
    fprintf('and in that time you will sneak in and take the gold. As you\n');
    fprintf('approach the building you see 5 guards stationed there, and you\n');
    fprintf('decide to wait in a nearby shadow. After a few minutes you hear\n');
    fprintf('a distant gaurd shout: ''Help! Attacker!'' This is your chance\n\n');

    r = int32(rand()*100);
    if( r<70 )
       fprintf('All but one of the guards left to deal with the commotion.\n');
       fprintf('Your only options are to attack him or to flee. What do you do?\n\n');
       
       while( input_incorrect )
          fprintf('(Attack or flee)\n');
          in = input('>>', 's');
          
          if( strcmpi(in, 'attack') )
              input_incorrect = false;
              
              fprintf('You lunge out and attack the gaurd. You are able to\n');
              fprintf('beat him, but not without damage. Nonetheless, you');
              fprintf('continue on with your task. You reach their financial\n');
              fprintf('quarters, and take as much gold as you can. Then you\n');
              fprintf('leave as fast as possible. The operation is a success\n\n');
              
              player.energy = player.energy-2;
              player.moralCounter = player.moralCounter-1;
              
          elseif( strcmpi(in, 'flee') )
              input_incorrect = false;
              fleed = true;
              player.moralCounter = player.moralCounter+1;
              
              fprintf('You decide its not worth the risk and leave the area.\n');
              fprintf('You no longer have any part in this operation. Although\n');
              fprintf('feel a little better as a person, you must no brace yourself');
              fprintf('the long night ahead of you.\n\n');
              
          else
              fprintf('Invalid input. Try again.\n');
          end
          
       end
    else
        fprintf('All of the guards run towards the cry for help, leaving\n');
        fprintf('the gate easy to break into. You quitely but quickly sneak\n');
        fprintf('your way into there gold room, grab as much gold as you can\n');
        fprintf('and leave. The operation is a success.\n\n');
        
        player.moralCounter = player.moralCounter - 1;
    end
    
    if( ~fleed )
        
        fprintf('As instructed, you take all your stolen gold and hide it in\n');
        fprintf('Kelly Cave, but not without taken your own fair share of gold\n');
        fprintf('first.\n');
        [~, player] = giveItem(player, 4, item_db); %give gold
        
    end
    
    player.energy = player.energy - 1;
    fprintf('Energy remaining: %i\n\n', player.energy);
    
end

