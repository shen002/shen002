function [FA_X FA_Y TAUZ_A]=Active_forces_torques(FX_IN,FY_IN,TAUZ_IN, TX, TY,SW_IND, DL_SW,alpha,beta,theta)
% ACTIVE FORCE  Adds active forces and torques to filaments.
%   [FA_X, FA_Y, TAUZ_A] = Active_forces_torques(FX_IN, FY_IN, TAUZ_IN,...
%                                              TX, TY,SW_IND, DL_SW)
%   takes in current forces and torques [FX_IN, FY_IN, TAUZ_IN], tangent 
%   vectors [TX,TY],  filament indexing matrix SW_IND and segment separation matrix DL_SW. 

%   The function returns the active force and torques + any existing 
%   forces and torques.

FX = FX_IN;
FY = FY_IN;
TAUZ = TAUZ_IN;

N_sw = size(SW_IND,1);
N_w = size(SW_IND,2);

for i=1:N_sw
    jsw = SW_IND(i,1);
    ksw = SW_IND(i,2)
    DL = DL_SW(i,1);
    

