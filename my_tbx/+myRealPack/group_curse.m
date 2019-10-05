function group_curse(humans)
for i = 1:length(humans)
  cur_human = humans{i};
  %cur_human.say_name();
  cur_human.curse();
end %for
end