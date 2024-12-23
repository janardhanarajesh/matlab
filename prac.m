clc;
close all;
clear ;
disp("SIGNAL GENERATOR");
pause(5)
clc;
ap=input("Select Periodic or Aperiodic : ","s");
if (ap=="periodic")
sig=input("Enter the type of the signal : ","s");
f=input("Enter the frequency of the signal: ");
c=input("Enter the color and style of the signal: ","s");
fs=30*f;
ed=input("Enter how many cycles should be there : ");
t=0:1/fs:ed/f;
if (sig=="sinusoidal")
    x=sin(2*pi*f*t);
    plot(t,x,c);
elseif (sig=="triangle")
    x=sawtooth(2*pi*t*f,0.5);
    plot(t,x,c)
elseif (sig=="square")
    x=square(2*pi*t*f);
    plot(t,x,c);
elseif (sig=="cos")
    x=cos(2*pi*t*f);
    plot(t,x,c);
elseif (sig=="sawtooth")
    x=sawtooth(2*pi*t*f);
    plot(t,x,c);
elseif (sig=="")
    x=square(2*pi*t*f);
    plot(t,x,c);
elseif(ap=="aperiodic")
    sig=input("Enter the type of the signal : ");
end
else
    sig=input("Enter the type of the signal : ","s");
    if(sig=="sinc")
        T=input("Enter the time limit : ");
        t=linspace(T,-T);
        y=sinc(t);
        plot(t,y);
    elseif (sig=="step")
        amp=input("Enter the amplitude :");
        t=-1:0.01:1;
        x=amp*(t>=0);
        plot(t,x);
    elseif (sig=="impulse")
        t=-1:0.01:1;
        amp=input("Enter the amplitude :");
        x=amp*(t==0);
        plot(t,x);
    elseif (sig=="ramp")
        slp=input("Enter the slope  : ");
        t=-1:0.01:1;
        x=slp*t;
        plot(t,x);
    end
end