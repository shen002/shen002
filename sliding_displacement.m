function [displacement]= sliding_displacement(THETA_S,THETA,a,basal_displacement,N_SW)
%% Equation(1) from ELIFE PAPER describing sliding force 
% theta_s is the tangent angle, a is the radius of the filament, and
% basal_sliding is assumed to be zero.
      d=2*a;  %distance between the top and bottom of the segments 
      %basal_displacement=0;
 %Angle of the first sement at both times
 t1_i = THETA(1,1);%TANGENT ANGLE AT THE CURRENT TIMESTEP 
 t2_j = THETA_S(1,1);%TANGENT ANGLE AT NEXT TIMESTEP 
      
    for i=1:N_SW 
        t1_f=THETA(i,1);%Angle of the current segment of the filament at the current timestep 
        current_displacement(i)=basal_displacement+d*(t1_f-t1_i);%30*1 vector   
    end
    
        for j=1:N_SW 
        t2_f=THETA_S(j,1);%Angle of the current segment of the filament at the next timestep
        new_displacement(j)=basal_displacement+d*(t2_f-t2_j);%30x1 vector
 
    displacement = [new_displacement,current_displacement];
    
    
