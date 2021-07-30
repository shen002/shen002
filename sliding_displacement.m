function [displacement]= sliding_displacement(THETA_S,a,basal_displacement,N_SW)
%% Equation(1) from ELIFE PAPER describing sliding force 
% theta_s is the tangent angle, a is the radius of the filament, and
% basal_sliding is assumed to be zero.
      d=2*a;  %distance between the top and bottom of the segments 
      %basal_displacement=0;
    for i=1:N_SW 
        t_i=THETA_S(1,1);%Angle of the first segment of the filament 
        t_f=THETA_S(i,1);%Angle of the current segment of the filament 
        displacement=basal_displacement+d*(t_f-t_i)
    end
    