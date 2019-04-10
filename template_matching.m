% Ui dialog open box to browse the Spectrograph 
[spectrogram_filename,spectrogram_path] = uigetfile('*.jpg;*.jpeg;*.png','Select Spectrograph');
if spectrogram_filename % Checking whether a spectrograph is selected or not
    spectrogram_file = [spectrogram_path spectrogram_filename]; % Reading the file
    spectrogram = imread(spectrogram_file); % Reading the image in grayscale
    
    % Ui dialog open box to browse the Template
    [template_filename,template_path] = uigetfile('*.jpg;*.jpeg;*.png','Select Template'); 
    if template_filename % Checking whether a Template is selected or not
        template_file = [template_path template_filename];  % Reading the file
        template = rgb2gray(imread(template_file)); % Reading the image in grayscale
%         figure(1); % Showing the full Spectrograph % For testing purposes
%         imshow(spectrograph);
%         figure(2); % Showing the full Template % For testing purposes
%         imshow(template);
        normalized_correlation = normxcorr2(template,spectrogram); % getting correlation matrix
        [row, column] = find(normalized_correlation == max(max(normalized_correlation))); % getting index of maximum correlation
        horizontal_offset = column - size(template,2); % getting offsets to use them in drawing a rectangle around the matched area later on
        vertical_offset = row - size(template,1);
        
        figure
        matching_borders = insertShape(spectrogram,'rectangle',[horizontal_offset,vertical_offset,size(template,2),size(template,1)],'LineWidth',1);
        imshow(matching_borders);
    else
        error = errordlg('No Template selected', 'No Files selected'); % Error msg if no template is selected
    end
else
    error = errordlg('No Spectrograph selected', 'No Files selected'); % Error msg if no spectrograph is selected
end