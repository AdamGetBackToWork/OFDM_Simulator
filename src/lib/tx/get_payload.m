function payload = get_payload(config)

% Choose an ASCII art to be transmitted
data = get_data(config);

% Convert the ASCII art to bits
data = data_to_bits(data);

% Form payload
payload = form_payload(config, data);

% Scrambler
payload = scramble_payload(config, payload);

end