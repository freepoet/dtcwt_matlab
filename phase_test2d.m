function  [Yh_phase, Yh_magnitude]  = phase_test2d()
%PHASE_TEST Summary of this function goes here
%   Detailed explanation goes here
% This file tests the phase change when there is a shift of impulse
% in the 1-D input


%effect of horizontal shift of an impulse
%for i=1:8
    X=zeros(512,512); 
    X(256,256+8)=1;
    [Yl,Yh] = dtwavexfm2(X,5,'near_sym_b','qshift_b');
    for j=1:5 %number of levels
        %Yh_phase is [:,:,level,6], where level is the number of DTCWT, 6
        %specifies the 6 filter outputs
        for k=1:6 %filter
        Yh_phase{j,k}=angle(Yh{j}(:,:,k));
        Yh_magnitude{j,k}=abs(Yh{j}(:,:,k));
        end
    end
%end


return;