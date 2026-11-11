%% This is a configuration file/function for the OFDM simulation

%% OFDM parameters
% Useful symbol time [s]
config.useful_symbol_time = 2000/4096 * 1e-6;
% Guard interval length []
config.guard_interval_length = 1/8 * config.useful_symbol_time;
% FFT size
config.fft_size = 4096;

%% Payload selection
% Available: "cat", "dog", "fish", "rabbit", "owl", "castle" (much bigger), or "random"
config.payload_img = "castle";

% encoding size
config.dimension_bits = 8;

% scrambler initial state
config.tx_scrambler_state = [1 1 1 1 1 1 1];
config.rx_scrambler_state = [1 1 1 1 1 1 1];

%% Detection

% threshold to be exceeded by the correlation peaks to be identified
% (normalized to max)
config.detection_threshold_alfa = 0.8;
config.sync_win = config.fft_size * 4;
% Define restricted search window for first peak
config.peak_search_window = 2 * (config.fft_size + config.guard_interval_length) * config.oversampling;

%% Frequency error estimation and compensation:
config.sync_jump = config.fft_size * 4;
config.sample_period = config.elementary_period / 4;
