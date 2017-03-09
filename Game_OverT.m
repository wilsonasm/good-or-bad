<<<<<<< HEAD
function [next_event_id, player] = Game_Over(player, item_database)
fprintf ('Well it looks like you finished one of the endings of the game.\n');
if( player.moralCounter > 0 )
   fprintf('It seems you were a good person in the end.\n'); 
else
   fprintf('Your deeds have determined you evil. Forever regret the moment you launched this script.\n');
end
fprintf('You have two options now:\n')
answer = input ('Restart or End?\n>>','s');
=======
function [next_event_id, Player] = Game_Over(Player, item_database)
fprintf ('Well it looks like you finished one of the endings of the game, you have two options now\n')
disp(Player)
answer = input ('Restart? or End\n','s');
>>>>>>> 97cfb40dc8160286b6a4e6a2e8548c30b3226d87
    if strcmpi (answer,'Restart')
        next_event_id = 0;
    else
        fprintf ('\nGG; Well Played.\n\n');
        next_event_id = 100;
    end
end
