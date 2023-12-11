%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Gentil Aircraft
%Based on: Pavan N
%Author: Igor Mayer Soares
%email: igor.soares@ga.ita.br
%Aeronautics Institute of Technology - ITA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Outs
States
Actuators
dt = 1/400;
tend = 60;
aircraft.m = 6;
aircraft.Trim.GroundLevel = 0;
aircraft.Trim.WindX = 0;
aircraft.Trim.WindY = 0;
aircraft.Trim.WindZ = 0;
aircraft.accel.z_max = 2;
aircraft.quad.Cd0 = 2;
aircraft.quad.A = 0.65;
aircraft.r_pilot_b = [0;0;0];
aircraft.Geo.b = 2;
aircraft.Geo.S = 0.55;
aircraft.Geo.c = 0.282;
aircraft.Inertia.Ixx = 2.783/8;
aircraft.Inertia.Iyy = 1.461/8;
aircraft.Inertia.Izz = 4.042/8;
aircraft.Inertia.Ixy = 0;
aircraft.Inertia.Ixz = 0;
aircraft.Inertia.Iyz = 0;
aircraft.quad.D = 0.3048;
aircraft.xCG = 0;
aircraft.yCG = 0;
aircraft.zCG = 0;
aircraft.J_O_b = [aircraft.Inertia.Ixx -aircraft.Inertia.Ixy -aircraft.Inertia.Ixz;-aircraft.Inertia.Ixy aircraft.Inertia.Iyy -aircraft.Inertia.Iyz;-aircraft.Inertia.Ixz -aircraft.Inertia.Iyz aircraft.Inertia.Izz];
aircraft.rC_b = [aircraft.xCG aircraft.yCG aircraft.zCG].';
aircraft.g = 9.80665;
aircraft.rho = 0;
aircraft.U.de = 0;
aircraft.U.ih = 0;
aircraft.U.da = 0;
aircraft.U.dr = 0;
aircraft.Trim.V = 15;
aircraft.Trim.u = 0;
aircraft.Trim.v = 0;
aircraft.Trim.w = 0;
aircraft.Trim.p = 0;
aircraft.Trim.q = 0;
aircraft.Trim.r = 0;
aircraft.Trim.phi = 0;
aircraft.Trim.theta = 0;
aircraft.Trim.psi = 0;
aircraft.Trim.phi_dot = 0;
aircraft.Trim.theta_dot = 0;
aircraft.Trim.psi_dot = 0;
aircraft.Trim.z = -100;
aircraft.Trim.x = 0;
aircraft.Trim.y = 0;
aircraft.aero.Wingfoil = 'NACA 9412';
aircraft.aero.Tailfoil= 'NACA 0012';
aircraft.aero.CLmax = 1.74;
aircraft.aero.CL0 = 1.12703;
aircraft.aero.CLa = deg2rad(4.973423);
aircraft.aero.CLq = 9.747584;
aircraft.aero.CLde = 0.008172;
aircraft.aero.CLda = 0;
aircraft.aero.CD0 = 0.06047;
aircraft.aero.k = 0.0469;
aircraft.aero.Cyb = -0.304144;
aircraft.aero.Cyp = 0.150608;
aircraft.aero.Cyr = 0.245422;
aircraft.aero.Cyda = 0.000331;
aircraft.aero.Cydr = -0.002969;
aircraft.aero.CM0 = 0.00006;
aircraft.aero.CMa = deg2rad(-1.473499);
aircraft.aero.CMq = -18.164419;
aircraft.aero.CMde = -0.029761;
aircraft.aero.Clb = -0.067286;
aircraft.aero.Clp = -0.473616;
aircraft.aero.Clr = 0.301367;
aircraft.aero.Clda = -0.004373;
aircraft.aero.Cldr = -0.000262;
aircraft.aero.Cnb = 0.118794;
aircraft.aero.Cnp = -0.074280;
aircraft.aero.Cnr = -0.147431*5;
aircraft.aero.Cnda = 0.000357;
aircraft.aero.Cndr = 0.001566;
aircraft.Geo.r_RFGe_b = [0.375;0.375;0];
aircraft.Geo.r_LFGe_b = [0.375;-0.375;0];
aircraft.Geo.r_LRGe_b = [-0.375;-0.375;0];
aircraft.Geo.r_RRGe_b = [-0.375;0.375;0];
checkspiral = (aircraft.aero.Clb*aircraft.aero.Cnr)/(aircraft.aero.Clr*aircraft.aero.Cnb);