[s,Fss] = audioread('gamila20sec.mp3');
s(:,2)=[];
y= spectrogram(s);
spectrogram(s,[],[],[],Fss,'yaxis');
saveas(gcf,'Gamila spectrogram.png');
