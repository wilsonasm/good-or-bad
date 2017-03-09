%giveItem function - give player an item
%example give player item 8
%  [success, Player] = giveItem(Player, 8, item_database);
%  if( ~success )
%    inventory was full
%  else
%    player obtained item
%  end
%

function [success, Player] = giveItem(Player, item_no, item_db)

  success = false;
  len = length(Player.inventory);
  for( i = 1:len )
    if( Player.inventory(i)==0 && ~success )
      success = true;
      Player.inventory(i) = item_no;
      fprintf('%s gained a %s!\n\n', Player.name, item_db(item_no).name);
      break;
    end
  end
  
end