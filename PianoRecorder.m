function PianoRecorder(sound)
    Fs = 44100; % Sample rate (you can adjust this if needed)
    recorder = audiorecorder(Fs, 16, 1);

    disp('Start recording. Press any key to stop...');
    record(recorder);
    pause;

    % Stop recording
    stop(recorder);
    disp('Recording stopped.');

    % Get the recorded audio data
    audioData = getaudiodata(recorder);

    % Save the recorded audio to a WAV file
    filename = 'piano_recording.wav'; % Change the filename if needed
    audiowrite(filename, audioData, Fs);

    % Play the recorded audio
    disp('Playing the recorded audio...');
    sound(audioData, Fs);

    disp(['Recording saved as ' filename.wav]);
end
