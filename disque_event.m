function [next_event_id, player] = Disque_event(player, item_database)
{
  fprintf('As you travel along to the Great Hall of Disque you encounter a worry traveler\n"'
  fprintf('You approach him and find out that his only gold has been stolen by a theif\n')
  fprintf('He asks you, as a valiant knight, if you can retrieve his gold for him\n')
  fprintf('Do you accept?\n Yes or No\n')
  
  while( 1==1 )
        answer = input('>>');
        
        if( strcmpi(answer, 'yes') )
            fprintf('Traveler: Thank you so much\n'); 
            fprintf('The travel warns you that the theif took off into the direction of Kelly Cave\n');
            break;
        elseif( strcmpi(answer, 'no') )
            fprintf('Traveler: No worries, I'm sure another Knight shall aid me\n');
            break;
        else
            fprintf('Invalid input. Enter either yes or no.\n');
        end
    end
    
    player.energy = player.energy - 1;
    fprintf('Health remaining: %i\n\n', player.energy);
    
    next_event_id = 51;

}
