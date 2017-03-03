%%good-or-bad
%matlab script file

%required functions (events):
%returns id of next function, takes Player and items struct as parameters
%add events to this list as needed!
%{
first_event   id=0

disque_event  id=10   //recruit route
randell_event id=20

curtis_event  id=30   //mercenary route
lebow_event   id=40

shaft_event   id=50   //bandit/thief route
kelly_event   id=60

final_event   id=90   //dragon event

done          id=100
%}

player_name = input('What is your name?');

Player = struct('name', player_name, 
                'energy', 10, 
                'inventory', [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                'moralCounter', 0);

item(10) = struct('name', potion, 'energyEffect', 5);
item(9)  = struct('name', poison, 'energyEffect', -5);
item(8)  = struct('name', pebble, 'energyEffect', 0);
%create these:
item(7)
item(6)
item(5)
item(4)
item(3)
item(2)
item(1)

event_id = 0;
event_fh = @first_event;

while( event_id~=100 )

  next_event_id = event_fh(Player, item);
  
  switch(next_event_id)  %insert more event_id cases as needed
    case 0
      event_fh = @first_event;
    case 10
      event_fh = @disque_event;
      
    case 20
      event_fh = @randell_event;

    case 30
      event_fh = @curtis_event;

    case 40
      event_fh = @lebow_event;

    case 50:
      event_fh = @shaft_event;

    case 60
      event_fh = @kelly_event;
      
    case 90
      event_fh = @final_event;
      
    case 100
      %game done
    otherwise
      fprintf('Error, event_id unrecognized %i', next_event_id);
  end  %close switch
  
  event_id = next_event_id;

end    %close while loop
