[s,Fss] = audioread('Eman17.mp3');
%s(:,2)=[];
y= spectrogram(s);
spectrogram(s,[],[],[],Fss,'yaxis');
saveas(gcf,'Eman template(2).png');
