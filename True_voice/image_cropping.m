
if size(spectrogram,1)>700
spectrogram(701:size(spectrogram,1),:)=[];
end
if size(spectrogram,2)>830
spectrogram(:,831:size(spectrogram,2))=[];
end

if size(template,1) >700
template(701:size(template,1),:)=[];
end

if size(template,2) >830
template(:,831:size(template,2))=[];
end