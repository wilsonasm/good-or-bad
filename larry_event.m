function [next_event_id, Player] = larry_event(Player, item_db)
%player_name = 'quan' 
%Player = struct('name', player_name,'energy', 10,'inventory', [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],'moralCounter', 0);
fprintf ('you proceed to Curtis Hall and find Larry waiting for you\n')
fprintf ('Larry says "Hello %s I was told you would be coming, did you happen to find some gold?\n',Player.name)
    answer = input('Do you wish to give him the gold?\n Yes or No?\n>>','s') 
    if strcmpi (answer,'yes')
        fprintf ('Great Traveler! here is something to reward you for your troubles.\n')
        Player.moralCounter = Player.moralCounter +1; %Player morality +1
        %give Larry gold
        fprintf ('\nYou have been rewarded with a potion\n')%He gives you potion
    elseif strcmpi (answer,'no')
        fprintf ('That is a shame, I was looking for it. I lost it somewhere near Kelly Cave.\n')
        Player.moralCounter = Player.moralCounter - 1; % -1 morality
    end
    fprintf ('\nAnyway! I have a quest for you %s, climb to the mountain and\n',Player.name)
    fprintf ('defeat the bandits, they are terrorizing my clan!\n')
    fprintf('\nYou decide to help larry No one else but you can stand up to the bandits \n')
    next_event_id = 33 %barbarian event
end %end Larry Event