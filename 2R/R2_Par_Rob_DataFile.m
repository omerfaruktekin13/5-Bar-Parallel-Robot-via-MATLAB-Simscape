% Simscape(TM) Multibody(TM) version: 6.1

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(11).translation = [0.0 0.0 0.0];
smiData.RigidTransform(11).angle = 0.0;
smiData.RigidTransform(11).axis = [0.0 0.0 0.0];
smiData.RigidTransform(11).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [-100.00000000000004 0 5];  % mm
smiData.RigidTransform(1).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(1).axis = [1 0 0];
smiData.RigidTransform(1).ID = 'B[Link_2-1:-:Link_3-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [349.99999999999989 -8.5249503383969079e-12 -5.0000000000000018];  % mm
smiData.RigidTransform(2).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(2).axis = [1 0 0];
smiData.RigidTransform(2).ID = 'F[Link_2-1:-:Link_3-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [0 0 60.000000000000036];  % mm
smiData.RigidTransform(3).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(3).axis = [1 0 0];
smiData.RigidTransform(3).ID = 'B[Base-1:-:Link_2-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [100.00000000000003 9.4422480983944792e-14 5.0000000000001581];  % mm
smiData.RigidTransform(4).angle = 3.1415926535897918;  % rad
smiData.RigidTransform(4).axis = [1 6.9703985868622413e-32 1.110223024625157e-16];
smiData.RigidTransform(4).ID = 'F[Base-1:-:Link_2-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0 0 -10.000000000000002];  % mm
smiData.RigidTransform(5).angle = 0;  % rad
smiData.RigidTransform(5).axis = [0 0 0];
smiData.RigidTransform(5).ID = 'B[Link_3-1:-:Link_4-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-100 2.9538442272784677e-16 -20.00000000000011];  % mm
smiData.RigidTransform(6).angle = 0;  % rad
smiData.RigidTransform(6).axis = [0 0 0];
smiData.RigidTransform(6).ID = 'F[Link_3-1:-:Link_4-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [174.99999999999997 0 5.0000000000000009];  % mm
smiData.RigidTransform(7).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(7).axis = [1 0 0];
smiData.RigidTransform(7).ID = 'B[Link_5-1:-:Link_4-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [100 -1.5137891482276999e-11 15.000000000000002];  % mm
smiData.RigidTransform(8).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(8).axis = [1 0 0];
smiData.RigidTransform(8).ID = 'F[Link_5-1:-:Link_4-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [0 0 80.000000000000028];  % mm
smiData.RigidTransform(9).angle = 0;  % rad
smiData.RigidTransform(9).axis = [0 0 0];
smiData.RigidTransform(9).ID = 'B[Base-1:-:Link_5-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [-175 -1.0045403033093319e-13 -4.9999999999999609];  % mm
smiData.RigidTransform(10).angle = 1.275156643062459e-15;  % rad
smiData.RigidTransform(10).axis = [0.98472245427118066 0.1741312380193239 1.0932615415972565e-16];
smiData.RigidTransform(10).ID = 'F[Base-1:-:Link_5-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [0 0 -60.000000000000028];  % mm
smiData.RigidTransform(11).angle = 1.5707963267948961;  % rad
smiData.RigidTransform(11).axis = [7.3885999203084819e-16 -5.1681538710581668e-16 1];
smiData.RigidTransform(11).ID = 'RootGround[Base-1]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(5).mass = 0.0;
smiData.Solid(5).CoM = [0.0 0.0 0.0];
smiData.Solid(5).MoI = [0.0 0.0 0.0];
smiData.Solid(5).PoI = [0.0 0.0 0.0];
smiData.Solid(5).color = [0.0 0.0 0.0];
smiData.Solid(5).opacity = 0.0;
smiData.Solid(5).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.090995574287564468;  % kg
smiData.Solid(1).CoM = [0 0 0];  % mm
smiData.Solid(1).MoI = [12.671782703456552 399.96085891243359 411.11604871109745];  % kg*mm^2
smiData.Solid(1).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(1).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'Link_4*:*Varsayilan';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.3562817966199795;  % kg
smiData.Solid(2).CoM = [-64.906676099984765 0 14.086994476423158];  % mm
smiData.Solid(2).MoI = [451.2849285950582 19861.711711402273 19492.687574762393];  % kg*mm^2
smiData.Solid(2).PoI = [0 1430.8662018220327 0];  % kg*mm^2
smiData.Solid(2).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'Link_3*:*Varsayilan';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.15099557428756477;  % kg
smiData.Solid(3).CoM = [0 0 0];  % mm
smiData.Solid(3).MoI = [21.171782703456675 1805.7445785934538 1824.3997683921179];  % kg*mm^2
smiData.Solid(3).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(3).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = 'Link_5*:*Varsayilan';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.090995574287564468;  % kg
smiData.Solid(4).CoM = [0 0 0];  % mm
smiData.Solid(4).MoI = [12.671782703456554 399.96085891243359 411.11604871109739];  % kg*mm^2
smiData.Solid(4).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(4).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = 'Link_2*:*Varsayilan';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 1.3499379797371931;  % kg
smiData.Solid(5).CoM = [-44.57262871227865 0 69.999999999999986];  % mm
smiData.Solid(5).MoI = [4423.0146229364218 5569.8494557916283 3726.4675633957127];  % kg*mm^2
smiData.Solid(5).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(5).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = 'Base*:*Varsayilan';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the CylindricalJoint structure array by filling in null values.
smiData.CylindricalJoint(1).Rz.Pos = 0.0;
smiData.CylindricalJoint(1).Pz.Pos = 0.0;
smiData.CylindricalJoint(1).ID = '';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.CylindricalJoint(1).Rz.Pos = 1.0555836232062617e-14;  % deg
smiData.CylindricalJoint(1).Pz.Pos = 0;  % mm
smiData.CylindricalJoint(1).ID = '[Link_3-1:-:Link_4-1]';


%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(4).Rz.Pos = 0.0;
smiData.RevoluteJoint(4).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = 2.4937739037847035e-12;  % deg
smiData.RevoluteJoint(1).ID = '[Link_2-1:-:Link_3-1]';

smiData.RevoluteJoint(2).Rz.Pos = -90.000000000000014;  % deg
smiData.RevoluteJoint(2).ID = '[Base-1:-:Link_2-1]';

smiData.RevoluteJoint(3).Rz.Pos = -179.9999999999975;  % deg
smiData.RevoluteJoint(3).ID = '[Link_5-1:-:Link_4-1]';

smiData.RevoluteJoint(4).Rz.Pos = -89.999999999999972;  % deg
smiData.RevoluteJoint(4).ID = '[Base-1:-:Link_5-1]';

