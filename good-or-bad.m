%%good-or-bad
%matlab script file

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

