function [F_a]= active_force(alpha, beta,displacement,dt,t)
%% This function describe the active_force using coefficient of alpha,beta,function of displacement 
%dt and t from main file.

displacement= sliding_displacement(THETA_S,THETA,a,basal_displacement,N_SW);

for i=1:t 
 rate_of_sliding(i)=((displacement(i,1)-displacement(i,2))./dt;
 F_a(i)=alpha*displacement(i,1)+beta*(rate_of_sliding(i));
end 
