
% ==================== generate coord grid ===========================

x= 1:1:500;
y= 1:1:500;
[X,Y] = meshgrid(x,y); % greate rectangullar mesh
R1=sqrt(X.^2+Y.^2); %radius
R1 = floor(R1);     % we will use R1 as indices to extract the wave s1.

x= -500:1:-1;
y= -500:1:-1;
[X,Y] = meshgrid(x,y); % greate rectangullar mesh
R2=sqrt(X.^2+Y.^2); %radius
R2= floor(R2);

x= -500:1:-1;
y=  1:1:500;
[X,Y] = meshgrid(x,y); % greate rectangullar mesh
R3=sqrt(X.^2+Y.^2); %radius
R3 = floor(R3);     % we will use R3 as indices to extract the wave s2.

x=  1:1:500;
y= -500:1:-1;
[X,Y] = meshgrid(x,y); % greate rectangullar mesh
R4=sqrt(X.^2+Y.^2); %radius
R4 = floor(R4);    


% ===================== visualize coord grid ==========================

figure(110)
subplot(221)
imagesc(R1)
title("R1")

figure(110)
subplot(222)
imagesc(R2)
title("R2")

figure(110)
subplot(223)
imagesc(R3)
title("R3")

figure(110)
subplot(224)
imagesc(R4)
title("R4")


% ===================== visualize the signals in space ==========================

% here run "rec_waves_01" to record S1 and S2

load "waves_s1_s2"

%cut part of s1:

ss1= s1(1000:1710);
ss2 =s2(1:710);

figure 100
subplot(211); plot(ss1)
title("whistle")
subplot(212); plot(ss2)
title("vowel")

% project ss1 on R1, and ss2 on R2:

WM1 = ss1(R1);
size(WM1)

WM2 = ss2(R2);
size(WM2)

WM3 = ss2(R3);
size(WM3)


figure 120
subplot(221)
imagesc(WM1)
title("WM1")


subplot(222)
imagesc(WM3)
title("WM2")


% ---- create synthetic wave mixture

ZZ1 = WM1 + WM2;
subplot(223)
imagesc(ZZ1)
title("ZZ1=WM1+WM2")


ZZ2 = WM1 + WM3;
subplot(224)
imagesc(ZZ2)
title("ZZ2=WM1+WM3")


figure(222)
imagesc(ZZ2)
title("whistle and viwel in the air")