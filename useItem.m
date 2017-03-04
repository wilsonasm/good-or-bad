%useItem function - apply item effect to player and remove item
%example for using item number 8:
%  [success, Player] = useItem(Player, 8, item_databse)
%  if( success==false ) 
%     player does not have item
%  else
%     item was used successfully
%  end
%

function [success, player] = useItem(player, item_no, item_db)

  success = false;
  inv = player.inventory;
  for( iv= 1:length(inv) )
    if( item_no==inv(i) && ~success )
      success = true;
      inv(i) = 0;
      player.effect = player.effect + item_db(item_no).energyEffect;
      fprintf('%s used %s; %s now has %i energy.\n', player.name, item_db(item_no).name, player.name, player.effect);
    end
  end
  
end
