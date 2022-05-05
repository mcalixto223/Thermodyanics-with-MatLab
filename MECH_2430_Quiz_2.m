%% Quiz 1
% Michael Calixto
h1 = 335; % hf1 kJ/kg 
h3 = 3952; % kJ/Kg
% Use interpolation 
y1=4.2; %MPa 
y2=4.4; % MPa 
x1=30;  % C 
x2=90;  % C 
x=80;   % AT C
y = ((y2-y1)/(x2-x1))*(x-x1)+y1;
disp(['the answer for interpolate of value h is ',num2str(y),' kJ/kg'])
h2=h1+y;
disp(['h2 = ',num2str(h2),' kJ/kg'])
h4=2650; %kJ/kg
wk=h3-h4+h1-h2;
disp(['the answer for Work Cycle ',num2str(wk),' kJ/kg'])
m= 6000; % kg/h
WKc=m*wk;
disp(['the answer for Work Cycle ',num2str(WKc),' kJ/h'])
qrej=h1-h4;
disp(['the answer for qrej ',num2str(qrej),' kJ/h'])
qadd=m*(h3-h2);
disp(['the answer for qadd ',num2str(qadd),' kJ/h'])
LHV=30000;
mfuel=qadd/LHV;
disp(['the answer for m(fuel) ',num2str(mfuel),' kJ/h'])
nT= (WKc/qadd)*100;
disp(['the answer for efficiency ',num2str(nT),' %'])
WkkW=2162.722;
msr=m/WkkW;
disp(['the answer for m(sr) ',num2str(msr),' kg/kW*h'])