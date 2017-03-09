function [next_event_id, player] = shaft_ambush_event(player, item_db)

    earned_potion = false;
    input_incorrect = true;
    
    fprintf('You find the shaft quite and ominous. Your usually sharp senses\n');
    fprintf('fail to detect any sign of life, yet you can feel malice and\n');
    fprintf('frustration in the air. After standing tense for 10 minutes\n');
    fprintf('you decide that your fatigue should take priority over caution\n');
    fprintf('and you start to relax. But you are wrong; you are ambushed!\n\n');
    
    r = int32(rand()*100);
    fprintf('A battle ensues.\n');
    if( r < 10 )  %take no damage
       fprintf('Luckily, you are able to parry with your blade.\n');
       fprintf('You recieved no damage.\n');
       next_event_id = 53;
    elseif( r < 90 )  %take lots of damage, recieve potion
        fprintf('You try to parry with your blade, but the assailant''s\n');
        fprintf('second dagger goes under your guard. You leap right, only\n');
        fprintf('to get kicked back several feet. The attacker then slashes\n');
        fprintf('you and disarms you as you try to counter. For some reason\n');
        fprintf('he spares you.\n\n');
        
        earned_potion = true;
        player.energy = player.energy - 3;
        next_event_id = 53;
    elseif( r < 95 )  %die
        fprintf('You try to parry with your blade, but the assailant''s\n');
        fprintf('second dagger goes under your guard. You leap right, only\n');
        fprintf('to get kicked back several feet. The attacker then slashes\n');
        fprintf('you lethaly, and you bleed to death.\n\n');
        fprintf('YOU DIED. The pseudorandom generator has forsaken you.\n\n');
        
        player.energy = 0;
        next_event_id = 200;
    else  %take little damage, recieve potion
        fprintf('You try to parry with your blade, but the assailant''s\n');
        fprintf('second dagger goes under your guard. You leap right, only\n');
        fprintf('to get kicked back several feet. The attacker then tries to\n');
        fprintf('slash you but you surprise him with a quick stab. You then\n');
        fprintf('jump forward for a strong attack, but get countered and\n');
        fprintf('disarmed. You are both breathing heavily, and the enemy\n');
        fprintf('sheathes his daggers.\n\n');
        
        earned_potion = true;
        player.energy = player.energy - 1;
        next_event_id = 53;
    end
    
    if( player.energy ~= 0 )
       fprintf('''Well done'' says the former assailant. Now that you can\n');
       fprintf('get a better look at him, you see that his dark cloak covers\n');
       fprintf('wrinkled skin, and glimers show that he is hiding many things\n');
       fprintf('in his pockets.\n\n');
       if( earned_potion ) 
          fprintf('Here is a potion to restore your energy.\n');
          [~, player] = giveItem(player, 10, item_db);
       end
       
       fprintf('I have a request for you. We are both poor men in need of\n');
       fprintf('some food and gold. I have a plan to steal some gold from\n');
       fprintf('the useless Drexel School of Chivalry. Will you partake in\n');
       fprintf('my plan? \n\n');
       
       while( input_incorrect )
          fprintf('(Yes or no)\n');
          in = input('>>', 's');
          
          if( strcmpi(in, 'yes') )
             input_incorrect = false;
             next_event_id = 53;
          elseif( strcmpi(in, 'no') )
             input_incorrect = false;
             next_event_id = 54;
          else
              fprintf('Invalid input. Try again.\n');
          end
       end
    end
    
    fprintf('\nHealth remaining: %i\n\n', player.energy);
end