%%good-or-bad
%matlab script file

%required functions (events):
%format: [next_event_id, Player] = event(Player, item);
%add events to this list as needed!
%{
first_event   id=0

disque_event  id=10   //recruit route
randell_event id=20

curtis_event  id=30   //mercenary route
larry_event   id=32
barbarian_event id = 33
mountain_event id = 34

shaft_event   id=50   //thief route
shaft_ambush_event  id=51
thief_gold_event   id=53
thief_starve_event id=54
thief_mountain_event id=55

kelly_event   id=60

secret_event  id=80

final_event   id=90   //dragon event
Game_Over     id=200 Game Over Event
done          id=100
%}

player_name = input('What is your name?\n','s');

Player = struct('name', player_name, 'energy', 10, 'inventory', [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],'moralCounter', 0);

%item database
item_database(10) = struct('name', 'potion',    'energyEffect', 5);
item_database(9)  = struct('name', 'poison',    'energyEffect', -5);
item_database(8)  = struct('name', 'pebble',    'energyEffect', 0);
item_database(7)  = struct('name', 'sword',     'energyEffect', 0);
item_database(6)  = struct('name', 'leftovers', 'energyEffect', 2);
item_database(5)  = struct('name', 'food',      'energyEffect', 4);
item_database(4)  = struct('name', 'gold',      'energyEffect', 0);
%create these:
%item_database(3)
%item_database(2)
%item_database(1)

event_id = 0;
event_fh = @first_event;

while( event_id~=100 )

  [next_event_id, Player] = event_fh(Player, item_database);
  
  switch(next_event_id)  %insert more event_id cases as needed
    case 0
      event_fh = @first_event;
    case 10
      event_fh = @disque_event;
      
    case 11
      event_fh= @kellyC_event;
    
    case 12
      event_fh= @fightFH_event;
    
    case 13
      event_fh= @theHunt_event;
    
    case 15
      event_fh= @mountTop_event;
      
    case 20
      event_fh = @randell_event;
    
    case 21
      event_fh= @ambush_event;
      

    case 30
      event_fh = @curtis_event;
    case 32
      event_fh = @larry_event;
    case 33
      event_fh = @barbarian_event;
    case 34
      event_fh = @mountain_event;
    case 40
      event_fh = @lebow_event;

    case 50
      event_fh = @shaft_event;
    case 51
      event_fh = @shaft_ambush_event;
    case 53
      event_fh = @thief_gold_event;
    case 54
      event_fh = @thief_starve_event;
    case 55
      event_fh = @thief_mountain_event;
    case 60
      event_fh = @kelly_event;
      
    case 80
      event_fh = @secret_event;
        
    case 90
      event_fh = @final_event;
      
    case 100
      %game done
    case 200
      event_fh = @Game_Over;
    otherwise
      fprintf('Error, event_id unrecognized %i', next_event_id);
  end  %close switch
  
  event_id = next_event_id;

end    %close while loop
