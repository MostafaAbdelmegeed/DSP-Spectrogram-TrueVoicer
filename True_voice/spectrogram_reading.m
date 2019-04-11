% Ui dialog open box to browse the Spectrograph 
[spectrogram_filename,spectrogram_path] = uigetfile('*.jpg;*.jpeg;*.png','Select Spectrograph');
spectrogram_file = [spectrogram_path spectrogram_filename]; % Reading the file
spectrogram = rgb2gray(imread(spectrogram_file)); % Reading the image in grayscale


% Ui dialog open box to browse the Template
[template_filename,template_path] = uigetfile('*.jpg;*.jpeg;*.png','Select Template'); 
template_file = [template_path template_filename];  % Reading the file
template = rgb2gray(imread(template_file)); % Reading the image in grayscale

