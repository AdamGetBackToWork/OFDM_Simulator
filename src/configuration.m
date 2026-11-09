%% This is a configuration file/function for the OFDM simulation

%% OFDM parameters
% Useful symbol time [s]
config.useful_symbol_time = 2000/4096 * 1e-6;
% Guard interval length []
config.guardIntervalLength = 1/8 * config.useful_symbol_time;
% FFT size
config.N = 4096;

%% Payload selection
% Available: "cat", "dog", "fish", "rabbit", "owl", "random"
config.payload_img = "cat";

%% Payload scheme
% config.
