[s,Fss] = audioread('Merna_1sec.mp3');
s(:,2)=[];
y= spectrogram(s);
spectrogram(s,[],[],[],Fss,'yaxis');
saveas(gcf,'Merna template.png');
