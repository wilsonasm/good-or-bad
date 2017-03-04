%hasItem function - return true if player has item
%example for checking if player has item 8:
%  if( hasItem(Player, 8, item_database) )
%

function success = hasItem(player, item_no, item_db)

  success = false;
  inv = player.inventory;
  for( i = 1:length(inv) )
    if( item_no==inv(i) && ~success )
      success = true;
      fprintf('%s has a %s.\n', player.name, item_db(item_no).name);
    end
  end
  
end