function [next_event_id, player] = shaft_ambush_event(player, item_db)

    fprintf('You find the shaft quite and ominous. Your usually sharp senses\n');
    fprintf('fail to detect any sign of life, yet you can feel malice and\n');
    fprintf('frustration in the air. After standing tense for 10 minutes\n');
    fprintf('you decide that your fatigue should take priority over caution\n');
    fprintf('and you start to relax. But you are wrong; you are ambused!\n\n');
    
    r = int32(rand()*100);
    fprintf('A battle ensues.\n');
    
    if( r < 10 )  %take no damage
       
    elseif( r < 90 )  %take lots of damage, recieve potion
    
    elseif( r < 95 )  %die
        
    else  %take little damage, recieve potion
        
    end
    
    next_event_id = 53;
    
end