function [next_event_id, player] = final_event(player, item_db)
%final event, id 90
%copy of dragon scenario from barbarian event

    %input1_incorrect = true;
    input2_incorrect = true;
    input3_incorrect = true;
    
    while input2_incorrect
        answer = input('What will you do?\n Run or find the dragon?\n>>','s');
        if strcmpi(answer,'find the dragon') %encounter dragon
            input2_incorrect = false;
            fprintf ('you see the dragon heading toward the village!')
            while input3_incorrect
                answer = input('What will you do?\n Fight or Run?\n>>','s');
                if strcmpi (answer,'Fight')
                    input3_incorrect=false;
                    player.moralCounter = player.moralCounter + 7;
                    chances = randi(10);
                    if chances <6
                        fprintf('Congratulations! You killed the dragon!\n')
                        fprintf('You are crowned a hero and savior of the people, worshipped \nand revered as a legend all throught time \n for corageously defeating the dragon\n')
                        next_event_id = 200
                    else %chances > 5
                        fprintf ('\nSorry, you died a hero. Although your courage goes unnoticed.\n')
                        next_event_id = 200;
                        %Go to Game over event
                    end
                elseif strcmpi (answer,'run')
                        input3_incorrect = false;
                        player.moralCounter = player.moralCounter - 7;
                        fprintf ('You run away from the town and village and your quest, now living \nthe lonely life of a wanderer as everything you know was destroyed by the dragon\n')
                        next_event_id = 200;
                        %Game Over Event
                else
                    fprintf('\nSorry I didn''t recognize what you said, please repeat that?\n\n')
                    input3_incorrect = true;
                end
            end
        elseif( strcmpi(answer,'run') )
            input2_incorrect = false;
            player.moralCounter = player.moralCounter - 7;
            fprintf ('You run away from the town and village and your quest, now living \nthe lonely life of a wanderer as everything you know was destroyed by the dragon\n')
            next_event_id = 200;
        else
            fprintf('Input unrecognized, please try again.\n');
        end
    end
    
    next_event_id = 200;
end