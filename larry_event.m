function [next_event_id, Player] = larry_event(Player, item_database)
input1_incorrect = true;
fprintf ('you proceed to Curtis Hall and find Larry waiting for you\n')
fprintf ('Larry says "Hello %s I was told you would be coming, did you happen to find some gold?\n',Player.name)
    while input1_incorrect
        answer = input('Do you wish to give him the gold?\n Yes or No?\n>>','s'); 
        if strcmpi (answer,'yes')
            input1_incorrect = false;
            fprintf ('Great Traveler! here is something to reward you for your troubles.\n')
            Player.moralCounter = Player.moralCounter +1; %Player morality +1
            %give Larry gold
            fprintf ('\nYou have been rewarded with a potion\n')%He gives you potion
        elseif strcmpi (answer,'no')
            input1_incorrect = false;
            fprintf ('That is a shame, I was looking for it. I lost it somewhere near Kelly Cave.\n')
            Player.moralCounter = Player.moralCounter - 1; % -1 morality
        else
            fprintf('\nSorry I didn''t recognize what you said, please repeat that?\n')
            input1_incorrect = true;
        end
    end   
        fprintf ('\nAnyway! I have a quest for you %s, climb to the mountain and\n',Player.name)
        fprintf ('defeat the bandits, they are terrorizing my clan!\n')
        fprintf('\nYou decide to help larry. No one else but you can stand up to the bandits! \n')
        next_event_id = 33; %barbarian event
end %end Larry Event