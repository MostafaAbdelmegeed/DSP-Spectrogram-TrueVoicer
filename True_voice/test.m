[s,Fss] = audioread('gamila5.mp3');
s(:,2)=[];
y= spectrogram(s);
spectrogram(s,[],[],[],Fss,'yaxis');
saveas(gcf,'gamila template.png');
