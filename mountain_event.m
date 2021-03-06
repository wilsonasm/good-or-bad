function [next_event_id, Player] = mountain_event(Player, item_database)
fprintf ('You reach the bandits and the clan''s temple and see a skirmish happening')
input1_incorrect = true;
    while input1_incorrect
        answer = input('What will you do? \nHelp or Leave?\n>>','s');
            if strcmpi (answer, 'Help')
                input1_incorrect = false; 
                Player.moralCounter = Player.moralCounter+1;
                chances = randi(10);
                if chances <6
                    fprintf ('You defeated the bandits! You are crowned hero of the clan.\nThey send you back to Larry to tell him he can return home.')
                    next_event_id = 35;
                elseif chances == 6
                    fprintf ('You helped defeat the bandits, although you were hurt and lost 1 energy in the process.\nYou are sent back to get Larry')
                    Player.energy = Player.energy -1;
                    next_event_id = 90; %Final Dragon
                elseif chances == 7
                    fprintf('You were able to fend off the bandits, although taking quite some damage and losing 2 energy.\n You were told to bring back Larry')
                    Player.energy = Player.energy-2;
                    next_event_id=35;
                else
                    fprintf ('You die fighting the bandits and are left to rot as they looted your body\n')
                    Player.energy = Player.energy-100;
                    next_event_id = 200;
                end
            elseif strcmpi(answer,'leave')
                input1_incorrect = false;
                next_event_id=90; %Final Dragon
            else
                 fprintf('\nSorry I didn''t recognize what you said, please repeat that?\n\n')
                 input1_incorrect = true;
            end
    end
end
