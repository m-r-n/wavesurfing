function waveAtCoords=coords2waves(ZZ, xCoords, yCoords, numValues);

%len = size(yCoords, 2)
waveAtCoords = zeros(1, numValues);
for i=1:numValues,
  waveAtCoords(i)=ZZ(yCoords(i), xCoords(i));
end