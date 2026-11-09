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

% Load the payload
payload = get_payload(config);


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



