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

    disp(['Recording saved as ' Piano_Recorder.wav]);
end

function AudioProcessing(sound)
    soundFilter = sound; 
    [y, Fs] = audioread(soundFilter);
    y = y / max(abs(y));

    cutoffFrequency = 4000; 
    filterOrder = 10;       
    nyquist = Fs / 2;
    Wn = cutoffFrequency / nyquist;
    [b, a] = butter(filterOrder, Wn, 'low'); 
    y_filtered = filtfilt(b, a, y);

    silenceThreshold = 0.01; 
    y_cleaned = y_filtered(y_filtered > silenceThreshold);
    
    figure;
    subplot(2, 1, 1);
    plot(y);
    title('Original Audio');
    subplot(2, 1, 2);
    plot(y_cleaned);
    title('Preprocessed Audio');
end
