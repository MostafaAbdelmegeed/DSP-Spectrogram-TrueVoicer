
% Ui dialog open box to browse the Spectrograph 
[spectrogram_filename,spectrogram_path] = uigetfile('*.jpg;*.jpeg;*.png','Select Spectrograms','MultiSelect','on');
spectrogram_file1 = [spectrogram_path char(spectrogram_filename(1))]; % Reading the file
spectrogram_file2 = [spectrogram_path char(spectrogram_filename(2))]; % Reading the file
spectrogram_file3 = [spectrogram_path char(spectrogram_filename(3))]; % Reading the file
spectrogram_file4 = [spectrogram_path char(spectrogram_filename(4))]; % Reading the file


spectrogram1 = rgb2gray(imread(spectrogram_file1)); % Reading the image in grayscale
spectrogram2 = rgb2gray(imread(spectrogram_file2));
spectrogram3 = rgb2gray(imread(spectrogram_file3));
spectrogram4 = rgb2gray(imread(spectrogram_file4));

% Ui dialog open box to browse the Template
[template_filename,template_path] = uigetfile('*.jpg;*.jpeg;*.png','Select Template'); 
template_file = [template_path template_filename];  % Reading the file
template = rgb2gray(imread(template_file)); % Reading the image in grayscale

