clc;
recorder = audiorecorder(44100,8,1);

disp('Please record your voice!');
drawnow();
pause(1);

recordblocking(recorder, 2);
play(recorder);

data = getaudiodata(recorder);
plot(data);

figure;
f=VoiceFeatures(data);

uno=input('Enter user number :');

try
    load database
    F=[F;f];
    C=[C;uno];
    save database
catch
    F=f;
    C=uno;
    save database F C
end
msgbox('Your voice is registered');