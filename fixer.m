for i=1:100
    close all
    % % img = im2double(imread('class4_1.jpg'));
    img = imread(sprintf('class4_%d.jpg',i));
    img_gray = rgb2gray(img);
    img_gray = img_gray(70:780,250:960);
    img_gray = imresize(img_gray, [100,100]);
    imshow(img_gray)
    saveas(gcf,sprintf('class4_%d.jpg',i))
end