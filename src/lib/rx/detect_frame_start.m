function frame_start = detect_frame_start(rx_signal, config)

    % Calculate correlation between signal segments
    corr_vals = ofdm_moving_segment_correlation( ...
        rx_signal, config.fft_size, config.fft_size * config.ups);

    % Find the strongest correlation
    [~, peak_idx] = max(abs(corr_vals));

    % Determine the beginning of the frame
    % The exact offset depends on the position of the
    % correlation window within the cyclic prefix.
    frame_start = peak_idx - config.timing_offset;

end