@echo off

Rem Batch file used to build a 32 bit version of FDS

set envfile=c:\bin\fds_smv_env.bat
IF EXIST %envfile% GOTO endif_envexist
echo ***Fatal error.  The environment setup file %envfile% does not exist. 
echo Create a file named %envfile% and use SMV_5/scripts/fds_smv_env_template.bat
echo as an example.
echo.
echo Aborting now...
pause>NUL
goto:eof

:endif_envexist

Rem location of batch files used to set up Intel compilation environment
set intelbin=c:\bin

call %intelbin%\iclvars intel64
call %intelbin%\ifortvars intel64

call %envfile%

%svn_drive%
cd %svn_root%\Utilities\Makefile\Mpi_Intel_Win_64

make VPATH="../../../FDS_Source" -f ..\makefile mpi_intel_win_64

cd ..\..\Scripts
pause