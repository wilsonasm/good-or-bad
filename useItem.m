%useItem function
%use as follows:
%  if( useItem(Player, 8, item_database)==false ) 
%     player does not have item
%  else
%     item was used successfully
%  end
%

function success = useItem(player, item_no, item_database)

  success = false;
  inv = player.inventory;
  for( i=(1:inv) )
    if( item_no==inv(i) && ~success )
      success = true;
      inv(i) = 0;
      player.effect = player.effect + item_database(item_no).energyEffect;
      fprintf('%s used %s; %s now has %i energy.\n', player.name, item_database(item_no).name, player.name, player.effect);
    end
  end
  
end
