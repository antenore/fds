#!/bin/csh -f
cd Arup_Tunnel
mkdir Current_Results
./Run_All.sh
cd ..
cd ATF_Corridors
mkdir Current_Results
./Run_All.sh
cd ..
cd FM_SNL
mkdir Current_Results
./Run_All.sh
cd ..
cd Harrison_Spill_Plumes
mkdir Current_Results
./Run_All.sh
cd ..
#cd McCaffrey_Plume
#mkdir Current_Results
#./Run_All.sh
#cd ..
cd NBS_Multi-Room
mkdir Current_Results
./Run_All.sh
cd ..
#cd NIST_RSE_1994
#mkdir Current_Results
#./Run_All.sh
#cd ..
#cd Sandia_Plumes
#mkdir Current_Results
#./Run_All.sh
#cd ..
#cd Turbulent_Jet
#mkdir Current_Results
#./Run_All.sh
#cd ..
cd USN_Hangars
mkdir Current_Results
./Run_All.sh
cd ..
cd VTT
mkdir Current_Results
./Run_All.sh
cd ..

