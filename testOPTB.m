%% clear
clear all global
restoredefaultpath

addpath ~/git/o_ptb/
%% 
o_ptb.init_ptb('/Users/gianpaolo/git/PTB3'); % change this to where PTB is on your system

%%
ptb_cfg = o_ptb.PTB_Config();


%% 
ptb_cfg

%%

ptb_cfg.fullscreen = false;
ptb_cfg.window_scale = 0.2;
ptb_cfg.skip_sync_test = true;
ptb_cfg.hide_mouse = false;

%%
ptb = o_ptb.PTB.get_instance(ptb_cfg);

%%

ptb.setup_screen;


%%

ptb_cfg.internal_config.final_resolution = [1024 768];

%%

ptb = o_ptb.PTB.get_instance(ptb_cfg);

%%

ptb.setup_screen;
Screen('FillRect', ptb.win_handle, [0 0 0], [200 200 300 300]);
timestamp = ptb.flip(GetSecs()+1);


%%
ptb.setup_screen;
fix_cross = o_ptb.stimuli.visual.FixationCross();
ptb.draw(fix_cross);
ptb.flip();

%%
ptb.setup_screen;
hello_world = o_ptb.stimuli.visual.Text('Hello World!');
hello_world.size = 90;
ptb.draw(hello_world);
ptb.flip();


%%

gabor = o_ptb.stimuli.visual.Gabor(400);
gabor.frequency = .01;
gabor.sc = 60;
gabor.contrast = 120;

ptb.draw(gabor);
ptb.flip();
ptb.draw(hello_world);
ptb.flip();


%%

%% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %%
%% clear
clear all global
restoredefaultpath

%% add the path to o_ptb
addpath('/Users/gianpaolo/git/o_ptb/') % change this to where o_ptb is on your system

%% initialize the PTB
o_ptb.init_ptb('/Users/gianpaolo/git/PTB3'); % change this to where PTB is on your system

%% get a configuration object
ptb_cfg = o_ptb.PTB_Config();

%% do the configuration
ptb_cfg.fullscreen = false;
ptb_cfg.window_scale = 0.2;
ptb_cfg.skip_sync_test = true;
ptb_cfg.hide_mouse = false;

%% get o_ptb.PTB object
ptb = o_ptb.PTB.get_instance(ptb_cfg);

%% init audio and triggers
ptb.setup_screen;
ptb.setup_audio;
ptb.setup_trigger;

%%
my_sound = o_ptb.stimuli.auditory.Sine(1200,2);
%% prepare sound
ptb.prepare_audio(my_sound);

%% schedule sound
ptb.schedule_audio;

%% play at once
ptb.play_without_flip;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% clear
clear all global
restoredefaultpath

%% add the path to o_ptb
addpath('/Users/gianpaolo/git/o_ptb/') % change this to where o_ptb is on your system

%% initialize the PTB
o_ptb.init_ptb('/Users/gianpaolo/git/PTB3'); % change this to where PTB is on your system

%% get a configuration object
ptb_cfg = o_ptb.PTB_Config();




%% configure button mappings

ptb_cfg.fullscreen = false;
ptb_cfg.window_scale = 0.2;
ptb_cfg.skip_sync_test = true;
ptb_cfg.hide_mouse = false;


ptb_cfg.datapixxresponse_config.button_mapping('target') = ptb_cfg.datapixxresponse_config.Green;
ptb_cfg.keyboardresponse_config.button_mapping('target') = KbName('space');

ptb_cfg.datapixxresponse_config.button_mapping('other_target') = ptb_cfg.datapixxresponse_config.Red;
ptb_cfg.keyboardresponse_config.button_mapping('other_target') = KbName('RightShift');


%% get o_ptb.PTB object
ptb = o_ptb.PTB.get_instance(ptb_cfg);


%% init audio and triggers
ptb.setup_screen;
ptb.setup_audio;
ptb.setup_trigger;

%%

ptb.wait_for_keys('target', GetSecs+1)
