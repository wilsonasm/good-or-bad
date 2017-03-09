function [next_event_id, Player] = curtis_event(Player, item_database)
%asdfghjkl

    fprintf ('As you walk to Curtis Hall, you see a glimmer in Kelly Cave.\n')
    input1_incorrect = true;
    input2_incorrect = true;
    battle_slime = false;
    while (input1_incorrect)
        answer = input('Do you want to investigate?\n Yes or No?\n>>','s');
        if strcmpi (answer, 'yes')
            input1_incorrect = false;
            
            %====================go in cave==========================
            fprintf ('You go to Kelly Cave and find a bag of gold, but there is\n')
            fprintf ('a slime guarding it.\n\n')
            while( input2_incorrect )
                answer = input('Do you risk your life to retrieve the gold or flee?\n retrieve, or flee?\n>>','s');
                if strcmpi (answer, 'retrieve')
                    input2_incorrect = false;
                    battle_slime = true;
                elseif strcmpi (answer, 'flee')
                    fprintf('The slime was too scary, you ran away\n')
                    input2_incorrect = false;
                    next_event_id = 32;
                else
                    fprintf('Try again\n');
                    input2_incorrect = true;
                end %end ladder
            end  %end input2 loop
        elseif strcmpi (answer, 'no')  %dont go in kelly
            input1_incorrect=false;
            battle_slime = false;
            %====================don't cave==========================
            fprintf('You leave the cave alone.\n');
            next_event_id = 32; %larry_event
        else
            fprintf('Sorry I didn''t recognize what you said, please repeat that?\n')
            input1_incorrect = true;
        end %ends if statement for cave
    end   %close first input loop
    
    %====================battle slime==========================
    if( battle_slime )
        chances = randi (10);
        if chances < 6
             fprintf('Congratulations you killed the slime and retrieved the gold!\n')
            Player.inventory = Player.inventory;
            giveItem(Player, 4,item_database);
            %give gold to player
            next_event_id = 32; %larry_event
        elseif chances == 6
            fprintf ('Congratulations you killed the slime and retrieved the gold but you lost 1 energy\n');
            Player.energy = Player.energy-1;
            next_event_id = 32; %larry_event;
            giveItem(Player, 4,item_database);
            %give gold to players
        elseif chances == 7
            fprintf ('Congratulations you killed the slime and retrieved the gold but the slime attacked you and you lost 2 energy\n')
            Player.energy = Player.energy-2;
            next_event_id = 32; %larry_event;
            giveItem(Player, 4,item_database);
            %give gold to players
        elseif chances == 8
            fprintf ('Congratulations you killed the slime and retrieved the gold but at a cost, you lost 3 energy in the process\n')
            Player.energy = Player.energy-3;
            next_event_id = 32; %larry_event
            giveItem(Player, 4,item_database);
            %give gold to players
        elseif chances == 9
            fprintf ('Congratulations you killed the slime and retrieved the gold but were wounded pretty badly, you lost 4 energy\n')
            Player.energy = Player.energy-5;
            next_event_id = 32; %larry_event
            giveItem(Player, 4,item_database);
            %give gold to players
        elseif chances == 10
            fprintf ('You have been killed by the slime, guess you werent as mighty a warrior as previosly thought\n')
            Player.energy = Player.energy-99;
            next_event_id = 200;
            %lead to game over event
        else
        end
        
    end  %end battle_slime

end   %ends function
    
   