function [next_event_id, Player] = barbarian_event(Player, item_database)
fprintf ('On your way to the mountain you see giant claw marks and prints\n')

answer = input('Do you wish to examine them?\n Yes or No?\n>>','s')
    if strcmpi(answer, 'yes')
        fprintf ('You see they are dragon marks and realize danger is not far\n')
        answer = input('What will you do?\n Run or find the dragon?\n>>','s')
            if strcmpi(answer,'find the dragon')
                fprintf ('you see the dragon heading toward the village!')
                answer = input('What will you do?\n Fight or Run?\n>>','s')
                if strcmpi (answer,'Fight')
                    Player.moralCounter = Player.moralCounter + 5
                    chances = randi(10);
                    if chances <6
                        fprintf('Congratulations! You killed the dragon!\n')
                        fprintf('You are crowned a hero and savior of the people, worshipped \nand revered as a legend all throught time \n for corageously defeating the dragon\n')
                    else chances > 5
                        fprintf ('Sorry, you died a hero. Although no one was there to witness it, your courage goes unnoticed\n')
                        next_event_id = 200;
                        %Go to Game over event
                    end
                elseif strcmpi (answer,'run')
                fprintf ('You run away from the town and village and your quest, now living \nthe lonely life of a wanderer as everything you know was destroyed by the dragon\n')
                next_event_id = 200;
                %Game Over Event
                end
            elseif strcmpi (answer,'run')
                fprintf ('You run away from the town and village and your quest, now living \nthe lonely life of a wanderer as everything you know was destroyed by the dragon\n')
                next_event_id = 200;
                %Game Over Event
            end
    elseif strcmpi (answer, 'no')
        next_event_id = 34 %mountain event
    end
end