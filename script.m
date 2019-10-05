%% clear and restore path...
clear all global
restoredefaultpath

%% add the toolbox to the path...
addpath('my_tbx');

%% get some pirates and humans
my_pirate = myRealPack.Pirate(34);

my_first_human = myRealPack.AdvancedHuman(23);
my_second_human = myRealPack.AdvancedHuman(26);

%% send them all to the group_hello function
all_humans = {my_pirate, my_first_human, my_second_human};

myRealPack.group_hello(all_humans);