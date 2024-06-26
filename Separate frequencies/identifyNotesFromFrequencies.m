function [notes_pressed, notes_bits] = identifyNotesFromFrequencies(frequencies)
    % Define the table of notes and their frequencies
    notes = {'C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B'};
    all_frequencies = [
        32.703, 34.648, 36.708, 38.891, 41.203, 43.654, 46.249, 48.999, 51.913, ...
        55.000, 58.270, 61.735, 65.406, 69.296, 73.416, 77.782, 82.407, 87.307, ...
        92.499, 97.999, 103.826, 110.000, 116.541, 123.471, 130.813, 138.591, ...
        146.832, 155.563, 164.814, 174.614, 184.997, 195.998, 207.652, 220.000, ...
        233.082, 246.942, 261.626, 277.183, 293.665, 311.127, 329.628, 349.228, ...
        369.994, 391.995, 415.305, 440.000, 466.164, 493.883, 523.251, 554.365, ...
        587.330, 622.254, 659.255, 698.456, 739.989, 783.991, 830.609, 880.000, ...
        932.328, 987.767, 1046.502, 1108.731, 1174.659, 1244.508, 1318.510, ...
        1396.913, 1479.978, 1567.982, 1661.219, 1760.000, 1864.655, 1975.533, ...
        2093.005, 2217.461, 2349.318, 2489.016, 2637.020, 2793.826, 2959.955, ...
        3135.963, 3322.438, 3520.000, 3729.310, 3951.066, 4186.009
    ];
    num_keys = length(all_frequencies);
    num_notes = length(notes);

    % Initialize the bits array
    notes_bits = zeros(1, num_notes);

    % Find the closest frequencies and map to notes
    for i = 1:length(frequencies)
        [~, idx] = min(abs(all_frequencies - frequencies(i)));
        note_index = mod(idx-1, num_notes) + 1;
        notes_bits(note_index) = 1;
    end

    % Convert bits array to a string of bits
    notes_bits_str = num2str(notes_bits);

    % Format the bits string
    notes_bits_str = strrep(notes_bits_str, ' ', '');
    
    % Generate output
    notes_pressed = notes_bits_str;
end
