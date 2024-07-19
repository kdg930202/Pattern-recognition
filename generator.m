% rng('default') % for reprodcibility 
for i=1:5000
    close all
    clear S
    % display(i)
    S.circSize = 7;
    S.nSizes = NaN;
    S.frameSize = [50 50];
    %S.nSizes = 2;
    S.density = .001; 
    S.edgeType = 3;
    S.supressWarning = true;
    S.drawFrame = false;
    [circData, circHandles, frame, S] = bubblebath(S);
    axis off
    radiusID = findgroups(circData(:,3));
    colors = jet(max(radiusID)); 
    arrayfun(@(i)rectangle('Position',[circData(i,1:2)-circData(i,3),circData(i,3).*[2,2]],...
        'FaceColor',[0 0 0],'Curvature',[1,1]), 1:size(circData,1))
    delete(circHandles)
    saveas(gcf,sprintf('class4_%d.jpg',i))

    close all
    img = imread(sprintf('class4_%d.jpg',i));
    img_gray = rgb2gray(img);
    img_gray = img_gray(70:780,250:960);
    img_gray = imresize(img_gray, [100,100]);
    imshow(img_gray)
    imwrite(img_gray,sprintf('class4_%d.jpg',i))
end


