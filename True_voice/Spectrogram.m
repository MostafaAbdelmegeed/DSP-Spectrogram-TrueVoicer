 [y,Fs] = audioread('Emmanuel.mp3');
 [y2,Fs2] = audioread('Emmanuel_1sec.mp3');
 s = spectrogram(y); %sot emmanuel el30 sania 3la b3d
 spectrogram(y,'yaxis');
 figure
 s2=spectrogram(y2);%sot emmanuel el sania wahda
 spectrogram(y2,'yaxis');
