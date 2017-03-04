%giveItem function - give player an item
%example give player item 8
%  [success, Player] = giveItem(Player, 8, item_database);
%  if( ~success )
%    inventory was full
%  else
%    player obtained item
%  end
%

function [success, player] = giveItem(player, item_no, item_db)

  success = false;
  len = length(player.inventory);
  for( i = 1:len )
    if( player.inventory(i)==0 && ~success )
      success = true;
      player.inventory(i) = 0;
      fprintf('%s gained a %s.\n', player.name, item_db(item_no).name);
    end
  end
  
end