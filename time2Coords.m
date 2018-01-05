function [xCoords,yCoords, numValues]=time2Coords(R1, timeIndex),
[yM, xM] = size(R1)
xCoords=zeros(1, xM);
yCoords=zeros(1, yM); iC = 0;
%display(["Extracting spatial coords corresponding to time index ", num2str(timeIndex]);
for xi=1:xM,
  for yi=1:yM,
   if(R1(xi, yi)==timeIndex); 
    iC++; % we started to zero
    yCoords(iC)=501-yi; 
    xCoords(iC)=xi; break
    %xi++
    %disp(xi); disp (yi); 
    end % if
  end % yi
end % xi
numValues= iC;