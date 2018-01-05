function waveAtCoords=coords2waves(ZZ, xCoords,yCoords);

len = size(yCoords, 2)
waveAtCoords = zeros(1, len);
for i=1:len,
  waveAtCoords(i)=ZZ(yCoords(i), xCoords(i));
end