%x=-15:0.5:15;
%y=-15:0.5:15;

x= 0:0.1:50;
y=-0:0.1:50;
[X,Y] = meshgrid(x,y); % greate rectangullar mesh
R1=sqrt(X.^2+Y.^2); %radius

if 1

x= -50:0.1:0;
y= -50:0.1:0;
[X,Y] = meshgrid(x,y); % greate rectangullar mesh
R2=sqrt(X.^2+Y.^2); %radius


k=5; % wave vector
phi=0; % phase
Z1=sin(k*R1+phi);
Z2=sin(k*R2+phi);

%surf(X,Y,Z);
%axis equal;

figure(1)
imagesc(Z1)

figure(2)
imagesc(Z2)

end % if 0

ZZ = Z1+Z2;
figure(3)
clf
imagesc(ZZ);
% --- look at Y axis:
if 1
LL = size(Z1,1)

LL = size(ZZ,1)
i=1:LL;
lookUp = floor(i);

for i=1:LL
    y_signal_Z1(i) = Z1(1,lookUp(i));
    y_signal_ZZ(i) = ZZ(1,lookUp(i));
end

%y_axis = [1:100;ones(1,100)];
%y_signal_R1 = Z1(y_axis);

figure(5)
clf
subplot(211)
plot(y_signal_ZZ)
hold on
plot(y_signal_Z1, 'r')
title ( ' Looking from Y axis: r-from Z1, B - from the sum')
end
%checking the FFT:

SpZ1=log (abs(fft(y_signal_Z1)));
SpZZ=log (abs(fft(y_signal_ZZ)));

figure(5)
subplot(212)
%clf
plot(SpZZ)
hold on
plot(SpZ1,'r')
grid
title ( ' Looking from Y axis: - r-from Z1, B - from the sum')


% --- look at the Diagonal ---:

if 1

LL = size(ZZ,1)

y_signal_Z1 = diag(Z1);
y_signal_ZZ = diag(ZZ);

figure(6)
clf
subplot(211)
plot(y_signal_ZZ)
hold on
plot(y_signal_Z1, 'r')
title ( 'Looing at the diagonal: r-from Z1, B - from the sum')
%checking the FFT:

SpZ1=log (abs(fft(y_signal_Z1)));
SpZZ=log (abs(fft(y_signal_ZZ)));

figure(6)
subplot(212)
%clf
plot(SpZZ)
hold on
plot(SpZ1,'r')
grid
title ( 'Looing at the diagonal - r-from Z1, B - from the sum')


end % if 0

% --- look at tilted line 1/2 ---:

LL = size(ZZ,1)
i=1:LL;
lookUp = floor(i/2+1);

for i=1:LL
    y_signal_Z1(i) = Z1(1,lookUp(i));
    y_signal_ZZ(i) = ZZ(1,lookUp(i));
end


figure(7)
clf
subplot(211)
plot(y_signal_ZZ)
hold on
plot(y_signal_Z1, 'r')
title ( 'Looking at 1/2 tangent - r-from Z1, B - from the sum')

%checking the FFT:

SpZ1=log (abs(fft(y_signal_Z1)));
SpZZ=log (abs(fft(y_signal_ZZ)));

figure(7)
subplot(212)
%clf
plot(SpZZ)
hold on
plot(SpZ1,'r')
grid
title ( 'Looking at 1/2 tangent - r-from Z1, B - from the sum')


% -% --- look at tilted line 1/3 ---:

LL = size(ZZ,1)
i=1:LL;
lookUp = floor(i/3+1);

for i=1:LL
    y_signal_Z1(i) = Z1(1,lookUp(i));
    y_signal_ZZ(i) = ZZ(1,lookUp(i));
end


figure(8)
clf
subplot(211)
plot(y_signal_ZZ)
hold on
plot(y_signal_Z1, 'r')
title ( 'Looking at 1/3 tangent - r-from Z1, B - from the sum')

%checking the FFT:

SpZ1=log (abs(fft(y_signal_Z1)));
SpZZ=log (abs(fft(y_signal_ZZ)));

figure(8)
subplot(212)
%clf
plot(SpZZ)
hold on
plot(SpZ1,'r')
grid
title ( 'Looking at 1/3 tangent - r-from Z1, B - from the sum')


