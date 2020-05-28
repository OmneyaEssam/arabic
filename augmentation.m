clear all 
image_folder = 'F:\4th Year EECE 2020\Egyptian-License-Plate-Recognition\Arabic alphabets dataset\Letters\bih'; %  Enter name of folder from which you want to upload pictures with full path
filenames = dir(fullfile(image_folder, '*.jpg'));  % read all images with specified extention, its jpg in our case
total_images = numel(filenames);    % count total number of photos present in that folder
i=1
 for n = 1:total_images
     full_name= fullfile(image_folder, filenames(n).name);   % it will specify images names with full path and extension
     our_images = imread(full_name);   
   % r=imrotate(our_images,180);
    r=fliplr(our_images);
   %  windowWidth = 10;
    % kernel = ones(windowWidth) / windowWidth ^ 2
    % blurredImage = imfilter(our_images, kernel);
    imwrite(r,sprintf('%d.jpg',i))
   %  imwrite(blurredImage,sprintf('%d.jpg',i))
     i=i+1
end


% r=i+100;
% imwrite(r,'lol.jpg')
% rgbImage = imread('00a7c269-3476-4d25-b744-44d6353cd921___GCREC_Bact.Sp 5807.jpg'); % Sample image.
% windowWidth = 5; % Whatever you want.  More blur for larger numbers.
% kernel = ones(windowWidth) / windowWidth ^ 2;
% blurredImage = imfilter(rgbImage, kernel); % Blur the image.
% imshow(blurredImage); % Display it