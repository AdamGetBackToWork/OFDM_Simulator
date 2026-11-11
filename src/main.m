%% This is the main script of the OFDM simulation
close all; clc; clear;

%% ========================================================================
% OFDM Simulation Configuration 
% =========================================================================

% Load Configuration parameters
run("configuration.m");

% Load libraries and utilities
addpath("lib/tx");
addpath("lib/rx");
addpath("lib/channel");
addpath("utils/");
    
%% ========================================================================
% OFDM Simulation - Transmitter 
% =========================================================================

% Load the payload - ADAM
[payload, config] = get_payload_tx(config);

% Divide the bitstream into groups of bits for QAM modulation - KAMIL
% payload = split_payload(payload, config);

% QAM modulator (can be one with previous) - KAMIL

% Insert subcarriers - PIOTR

% Upsampling - PIOTR

% IFFT with shift (ifft(fftshift());) - KAMIL

% Add Guard Inverval  - PIOTR

% insert pilots - pilot symbols - KAMIL

% Build OFDM frame - join data and pilots - ADAM


%% ========================================================================
% OFDM Simulation - Channel 
% =========================================================================

% Apply Channel - from tssr_lib
% signal = ofdm_wbchannel();

% Apply Noise - from tssr_lib
% signal = ofdm_addnoise();

% Apply Frequency Shift - from tssr_lib
% signal = ofdm_addfreqshift();

%% ========================================================================
% OFDM Simulation - Receiver 
% =========================================================================

% % Detect frame start - ADAM
% [frame_start, corr_vals] = detect_frame_start(config, signal);
% 
% % Estimate frequency offset - ADAM
% ferror = estimate_frequency_offset(config, corr_vals, frame_start);
% 
% % Compensate frequency offset - ADAM
% signal = compensate_frequency_offset(config, signal, ferror);

% extract OFDM symbols - KAMIL

% remove GI - PIOTR

% OFDM demodulator  - ADAM

% extract subcarriers - KAMIL

% estimate channel - PIOTR

% interpolate channel - PIOTR

% equalize symbols - KAMIL

% qam demodulator - KAMIL

% get payload back - ADAM
get_payload_rx(config, payload);


