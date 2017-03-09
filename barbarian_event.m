function [next_event_id, Player] = barbarian_event(Player, item_database)
fprintf ('\nOn your way to the mountain you see giant claw marks and prints\n')
input1_incorrect = true;
input2_incorrect = true;
input3_incorrect = true;
while input1_incorrect
    answer = input('Do you wish to examine them?\n Yes or No?\n>>','s');
            if strcmpi(answer, 'yes')
                input1_incorrect = false;
                fprintf ('You see they are dragon marks and realize danger is not far\n')
                while input2_incorrect
                    answer = input('What will you do?\n Run or find the dragon?\n>>','s');
                        if strcmpi(answer,'find the dragon')
                            input2_incorrect = false;
                            fprintf ('you see the dragon heading toward the village!')
                            while input3_incorrect
                            answer = input('What will you do?\n Fight or Run?\n>>','s');
                                if strcmpi (answer,'Fight')
                                    input3_incorrect=false;
                                    Player.moralCounter = Player.moralCounter + 5;
                                    chances = randi(10);
                                    if chances <6
                                        fprintf('Congratulations! You killed the dragon!\n')
                                        fprintf('You are crowned a hero and savior of the people, worshipped \nand revered as a legend all throught time \n for corageously defeating the dragon\n')
                                        next_event_id = 200
                                    else chances > 5
                                        fprintf ('\nSorry, you died a hero. Although no one was there to witness it, your courage goes unnoticed\n')
                                        next_event_id = 200;
                                        %Go to Game over event
                                    end
                                elseif strcmpi (answer,'run')
                                input3_incorrect = false;
                                fprintf ('You run away from the town and village and your quest, now living \nthe lonely life of a wanderer as everything you know was destroyed by the dragon\n')
                                next_event_id = 200;
                                %Game Over Event
                                else
                                     fprintf('\nSorry I didn''t recognize what you said, please repeat that?\n\n')
                                     input3_incorrect = true;
                                end
                            end
                        elseif strcmpi (answer,'run')
                            input2_incorrect = false;
                            fprintf ('You run away from the town and village and your quest, now living \nthe lonely life of a wanderer as everything you know was destroyed by the dragon\n')
                            next_event_id = 200;
                            %Game Over Event
                        else
                             fprintf('\nSorry I didn''t recognize what you said, please repeat that?\n\n')
                             input2_incorrect = true;
                        end
                end
            elseif strcmpi (answer, 'no')
                input1_incorrect = false;
                next_event_id = 34; %mountain event
            else
                 fprintf('\nSorry I didn''t recognize what you said, please repeat that?\n\n')
                 input1_incorrect = true;
            end
end
end