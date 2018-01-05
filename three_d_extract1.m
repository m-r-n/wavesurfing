%three_d_extract
% first run three_d_sine, or "three_d_wave"
R1=round(R1);
% --- extract the curvature from the R synthesis matrix ---

figure(10)
imagesc (R1);
if 1
%lets extract some spatial coords
[xCoords10,yCoords10, numValues10]=time2Coords(R1, 100);
[xCoords20,yCoords20, numValues20]=time2Coords(R1, 200);
[xCoords30,yCoords30, numValues30]=time2Coords(R1, 300);
numValues10
numValues20
numValues30

figure(11)
clf; hold on;
plot(yCoords10, "r")
plot(yCoords20, "g") 
plot(yCoords30, "b")
title("extracted Coords at 100, 200, 300 (r, g, b\)")
end % if 0
% and plot the waves at those spatial coords
waveAtCoords10=coords2waves(WM1, xCoords10, yCoords10, numValues10);
waveAtCoords20=coords2waves(WM1, xCoords20, yCoords20, numValues20);
waveAtCoords30=coords2waves(WM1, xCoords30, yCoords30, numValues30);

figure(12)
clf; hold on; grid;
title("extracted waves at 100, 200, 300 (r, g, b\)")
plot(waveAtCoords10, "r")
plot(waveAtCoords20, "g") 
plot(waveAtCoords30, "b")