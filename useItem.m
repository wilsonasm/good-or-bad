function success = useItem(player, item_no, item_database)

  success = false;
  inv = player.inventory;
  for( i=(1:inv) )
    if( item_no==inv(i) && !success )
      success = true;
      inv(i) = 0;
      player.effect = player.effect + item_database(item_no).energyEffect;
    end
  end
  
end
