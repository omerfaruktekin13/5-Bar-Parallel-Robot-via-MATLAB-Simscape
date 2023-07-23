# 5 Bar Parallel Robot

## Project Media
![Dxxxxx](https://github.com/omerfaruktekin13/5-Bar-Parallel-Robot/blob/main/media/5_bar.png "Deneme ")
|:--:|
| *5 Bar Parallel Robot Diagram* |
![Dxxxxx](https://github.com/omerfaruktekin13/5-Bar-Parallel-Robot/blob/main/media/5bargif.gif "Deneme ")
| *Simulink Simscape Model* |
![Dxxxxx](https://github.com/omerfaruktekin13/5-Bar-Parallel-Robot/blob/main/media/simulink_model.png "Deneme ") 
| *Simulink Diagram* |
![Dxxxxx](https://github.com/omerfaruktekin13/5-Bar-Parallel-Robot/blob/main/media/base.png "Deneme ") 
| *Solidworks Base Drawing* |
![Dxxxxx](https://github.com/omerfaruktekin13/5-Bar-Parallel-Robot/blob/main/media/link.png "Deneme ") 
| *Solidworks Link Drawing* |

## Description
5 bar mechanism is an efficient and simple design to observe human-robot interactions. As an actuator, brushless DC Motors or stepper motors can be chosen. This project is generally used to observe the human-robot relationship. Thanks to MATLAB/Simscape, I created the parts I drew in Solidworks with Simulink diagram and solved them to the system by using the movements of the joints that are connected to each other as input. The torque in the joints was calculated automatically and I introduced the mouse to the system as analog thanks to Simulink Desktop Real-Time Toolbox. By converting the linear movements of the mouse to angular movements, I made the end-effector of the 5 Bar Parallel Robot follow the mouse. The angle at each joint was calculated by the system using inverse kinematics equations. There are also equations of forward and backward kinematic movements in the .m file.

## Tools and Languages
<a href="https://www.mathworks.com/" target="_blank" rel="noreferrer"> <img src="https://upload.wikimedia.org/wikipedia/commons/2/21/Matlab_Logo.png" alt="matlab" width="40" height="40"/> </a>
<p> * MATLAB 2023a </p>
<p> * Simulink </p>
<p> * Simscape Multibody </p>
<p> * Simulink Desktop Real-Time </p>
<a href="https://www.solidworks.com/" target="_blank" rel="noreferrer"> <img src="https://upload.wikimedia.org/wikipedia/tr/7/75/SolidWorks_Logo.png" alt="matlab" width="150" height="40"/> </a>
<p> 
<p> * Solidworks 2021 (If you want to edit the structure of the mechanism.) </p>

## Installation
> 1. Download 2Pr folder, 5Bar_m_.m and 5bar_Sim.slx files.
> 2. Put these files into your MATLAB folder which is located in Documents.
> 3. Open the .m file and Simulink model. Then evaluate the first section of .m file.
> 4. Play Simulink model and you will see the Simscape model.
> 5. The end-effector of the mechanism will be controlled by your mouse.
> 6. Enjoy!
