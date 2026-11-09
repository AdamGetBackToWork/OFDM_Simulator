function payload = get_payload(config)

% Choose an ASCII art to be transmitted
data = get_data(config);

% Convert the ASCII art to bits
data.image_bits = uint8(data.image);

% Form payload
payload = form_payload(config, data);

end