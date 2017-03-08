
function [next_event_id, Player] = curtis_event(Player, item_db)
%player_name = 'quan' 
%Player = struct('name', player_name,'energy', 10,'inventory', [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],'moralCounter', 0);
    fprintf ('As you walk to Curtis Hall, you see a glimmer in Kelly Cave.\n')
    answer = input('Do you want to investigate?\n Yes or No?\n>>','s');
    if strcmpi (answer, 'yes')
        fprintf ('You go to Kelly Cave and find a bag of gold, but there is\n')
        fprintf ('a slime guarding it.\n')
        fprintf('\n')
        answer = input('Do you risk your life to retrieve the gold or flee?\n retrieve, or flee?\n>>','s');
        if strcmpi (answer, 'retrieve')
            chances = randi (10);
            if chances < 6
                fprintf('Congratulations you killed the slime and retrieved the gold!\n')
                Player.inventory = Player.inventory
                %give gold to player
                next_event_id = 32 %larry_event
            elseif chances == 6
                fprintf ('Congratulations you killed the slime and retrieved the gold but you lost 1 energy')
                Player.energy = Player.energy-1
                next_event_id = 32 %larry_event;
                %give gold to players
            elseif chances == 7
                fprintf ('Congratulations you killed the slime and retrieved the gold but the slime attacked you and you lost 2 energy')
                Player.energy = Player.energy-2
                next_event_id = 32 %larry_event;
                %give gold to players
            elseif chances == 8
                fprintf ('Congratulations you killed the slime and retrieved the gold but at a cost, you lost 3 energy in the process')
                Player.energy = Player.energy-3
                next_event_id = 32 %larry_event
                %give gold to players
            elseif chances == 9
                fprintf ('Congratulations you killed the slime and retrieved the gold but were wounded pretty badly, you lost 4 energy')
                Player.energy = Player.energy-4
                next_event_id = 32 %larry_event
                %give gold to players
            elseif chances == 10
                fprintf ('You have been killed by the slime, guess you werent as mighty a warrior as previosly thought \n GAME OVER')
                Player.energy = Player.energy-99;
            end

        elseif strcmpi (answer, 'no')
        end %ends slime loop
    elseif strcmpi (answer, 'no')
        next_event_id = 32; %larry_event
    end %ends if statement, going to Kelly Cave
    
    end

   