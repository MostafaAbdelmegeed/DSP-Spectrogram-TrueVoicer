normalized_correlation = normxcorr2(template,spectrogram); % getting correlation matrix
[row, column] = find(normalized_correlation == max(max(normalized_correlation))); % getting index of maximum correlation
horizontal_offset = column - size(template,2)/8; % getting offsets to use them in drawing a rectangle around the matched area later on
vertical_offset = row - size(template,1)/8;
        
figure
matching_borders = insertShape(spectrogram,'rectangle',[horizontal_offset,vertical_offset,size(template,2)/4,size(template,1)/4],'LineWidth',1);
imshow(matching_borders);