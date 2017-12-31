% create a sequence of png images w travelling waves
% and save them for further processing in "processing"
% ===============================================

x= 1:1:500;
y= 1:1:500;
[X,Y] = meshgrid(x,y); % greate rectangullar mesh
R1=sqrt(X.^2+Y.^2); %radius
R1 = floor(R1);     % we will use R1 as indices to extract the wave s1.
R1=710-R1;          %waves move forwarts, 710 is the max radius of Ri.

x= -500:1:-1;
y= -500:1:-1;
[X,Y] = meshgrid(x,y); % greate rectangullar mesh
R2=sqrt(X.^2+Y.^2); %radius
R2= floor(R2);
R2=710-R2;          %waves move forwarts, 710 is the max radius of Ri.

x= -500:1:-1;
y=  1:1:500;
[X,Y] = meshgrid(x,y); % greate rectangullar mesh
R3=sqrt(X.^2+Y.^2); %radius
R3 = floor(R3);     % we will use R3 as indices to extract the wave s2.
R3=710-R3;          %waves move forwarts, 710 is the max radius of Ri.

x=  1:1:500;
y= -500:1:-1;
[X,Y] = meshgrid(x,y); % greate rectangullar mesh
R4=sqrt(X.^2+Y.^2); %radius
R4 = floor(R4);     % we will use R1 as indices to extract from waves s1, s2...
R4=710-R4;          %waves move forwarts, 710 is the max radius of Ri.

% ===============================================
if 0
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
end

% ===============================================

% alternatively, here run "rec_waves_01" to record S1 and S2

load "waves_s1_s2"

%cut part of s1:

ss1= s1(1000:1710);
ss2 =s2(1:710);

figure 100
subplot(211); plot(ss1)
title("whistle")
subplot(212); plot(ss2)
title("vowel")

%annule one source (to visualize only one travelling wave)
%s1=zeros(1,1000);

% project ss1 on R1, and ss2 on R2:
for t=1:20
WM1 = s1(R1);
%size(WM1)

%WM2 = s2(R2);
%size(WM2)

WM3 = s2(R3);
%size(WM3)
ZZ2 = WM1 + WM3;

  figure(227)
  imagesc(ZZ2)
  title(["whistle, frame ", num2str(t)])
  if t<10
    imgName = ["0",num2str(t), ".png"]
    else
    imgName = [num2str(t), ".png"]
  end;
    
  print(imgName)
  %update the projecting spatial coordinates.
  R1=R1+5;
  R2=R2+5;
  R3=R3+5;

end %for t%

