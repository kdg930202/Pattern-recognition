% rng('default') % for reproducibility 

for i = 1:100
    clear S
    display(i)
    S.circSize = 1;
    S.nSizes = NaN;
    S.frameSize = [50 50];
    %S.nSizes = 2;
    S.density = .001; 
    S.edgeType = 3;
    S.supressWarning = true;
    S.drawFrame = false;
    [circData, circHandles, frame, S] = bubblebath(S);
    axis off
    saveas(gcf,sprintf('class2_%d.jpg',i))
end
