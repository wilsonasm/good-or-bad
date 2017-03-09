function [next_event_id, player] = Game_Over(player, item_database)
fprintf ('Well it looks like you finished one of the endings of the game, you have two options now\n')
answer = input ('Restart? or End\n','s');
    if strcmpi (answer,'Restart')
        next_event_id = 0;
    else
        fprintf ('GG, WP')
        next_event_id = 100;
    end