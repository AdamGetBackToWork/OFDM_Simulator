function data = get_data(config)

new_line = char(10);

% Available ASCII payloads

rabbit = [' (\_/)', new_line, ...
          ' (o.o)', new_line, ...
          ' (")_(")', new_line];

owl = ['  ,_, ', new_line, ...
       ' (O,O)', new_line, ...
       ' (   )', new_line, ...
       '  " " ', new_line];

cat = [' /\_/\ ', new_line, ...
       '( o.o )', new_line, ...
       ' > ^ < ', new_line];

dog = [' / \__      ', new_line, ...
       '(    @\___  ', new_line, ...
       ' /         O', new_line, ...
       '/   (_____/ ', new_line, ...
       '/_____/   U ', new_line];

fish = ['      /`·.¸       ', new_line, ...
        '     /¸...¸`:·    ', new_line, ...
        ' ¸.·´  ¸   `·.¸   ', new_line, ...
        ': © ):´;      ¸  }', new_line, ...
        ' `·.¸ `·  ¸.·´    ', new_line, ...
        '     `\\´´        ', new_line];

switch lower(config.payload_img)
    case "rabbit"
        data.image = rabbit;
    case "owl"
        data.image = owl;
    case "cat"
        data.image = cat;
    case "dog"
        data.image = dog;
    case "fish"
        data.image = fish;
    case "random"
        payloads = {rabbit, owl, cat, dog, fish};
        data.image = payloads{randi(numel(payloads))};
    otherwise
        error('Unknown payload: %s', config.payload_img);
end

lines = splitlines(string(data.image));
lines(lines == "") = [];

data.size_m = numel(lines);
data.size_n = max(strlength(lines));