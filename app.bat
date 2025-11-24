@echo off
echo ----------------------------------------------
echo ------------- Welcome to CalcApp -------------
echo ----------------------------------------------
set /p name=Enter your Name:
set /p id=Enter your ID:
cls
echo ----------------------------------------------
echo ----------------------------------------------
echo Welcome %name%
echo ID: %id%
echo ----------------------------------------------
echo ----------------------------------------------
echo This simple application that provides 4 arithmetic operations, for example:
echo [1] addition
echo [2] subtraction
echo [3] multiplication
echo [4] division
echo [5] all
set /p operation=Choose one of these options to start operation [1-5]: 
cls
echo ----------------------------------------------
echo ----------------------------------------------
echo User Name: %name%
echo ID: %id%
echo ----------------------------------------------
echo ----------------------------------------------

set /p n1=Enter First Number:
set /p n2=Enter Second Number:
set /a add=n1+n2
set /a sub=n1-n2
set /a mul=n1*n2
set /a div=n1/n2

cls

echo ----------------------------------------------
echo ----------------------------------------------
echo User Name: %name%
echo ID: %id%
echo ----------------------------------------------
IF "%operation%" == "1" (

echo ------------------ Addition ------------------
echo ----------------------------------------------
echo Addition for "%n1%" and "%n2%" is:
echo %n1% + %n2% = %add%
echo Press any key to end the application...


) ELSE IF "%operation%" == "2" (

echo ---------------- Subtraction -----------------
echo ----------------------------------------------
echo Subtraction for "%n1%" and "%n2%" is:
echo %n1% - %n2% = %sub%
echo Press any key to end the application...

) ELSE IF "%operation%" == "3" (

echo -------------- Multiplication ----------------
echo ----------------------------------------------
echo Multiplication for "%n1%" and "%n2%" is:
echo %n1% * %n2% = %mul%
echo Press any key to end the application...

) ELSE IF "%operation%" == "4" (

echo ----------------- Division -------------------
echo ----------------------------------------------
echo Division for "%n1%" and "%n2%" is:
echo %n1% % %n2% = %div%
echo Press any key to end the application...

) ELSE (

echo ------------------  Page 1  ------------------
echo ------------------ Addition ------------------
echo ----------------------------------------------
echo Addition for "%n1%" and "%n2%" is:
echo %n1% + %n2% = %add%
echo Next Page..
pause
cls

echo ----------------------------------------------
echo ----------------------------------------------
echo User Name: %name%
echo ID: %id%
echo ----------------------------------------------
echo ------------------  Page 2  ------------------
echo ---------------- Subtraction -----------------
echo ----------------------------------------------
echo Subtraction for "%n1%" and "%n2%" is:
echo %n1% - %n2% = %sub%
echo Next Page..
pause
cls

echo ----------------------------------------------
echo ----------------------------------------------
echo User Name: %name%
echo ID: %id%
echo ----------------------------------------------
echo ------------------  Page 3  ------------------
echo -------------- Multiplication ----------------
echo ----------------------------------------------
echo Multiplication for "%n1%" and "%n2%" is:
echo %n1% * %n2% = %mul%
echo Next Page..
pause
cls

echo ----------------------------------------------
echo ----------------------------------------------
echo User Name: %name%
echo ID: %id%
echo ----------------------------------------------
echo ------------------  Page 4  ------------------
echo ----------------- Division -------------------
echo ----------------------------------------------
echo Division for "%n1%" and "%n2%" is:
echo %n1% / %n2% = %div%
echo End of Application...

)

pause
cls
set /p save=You want to save your operation(s) data in a Text file?[Y/N]?
IF /I "%save%" == "Y" (
del operation_data.txt /q /f
echo ---------------------------------------------- > operation_data.txt
echo User information >> operation_data.txt
echo User Name: %name% >> operation_data.txt
echo User ID: %id% >> operation_data.txt
echo Created at : %date% - %time% >> operation_data.txt
echo ---------------------------------------------- >> operation_data.txt
echo First Number  : %n1% >> operation_data.txt
echo Second Number : %n2% >> operation_data.txt
IF "%operation%" == "1" (
echo ------------------ Addition ------------------ >> operation_data.txt
echo %n1% + %n2% = %add% >> operation_data.txt
) ELSE IF "%operation%" == "2" (
echo ---------------- Subtraction ----------------- >> operation_data.txt
echo %n1% - %n2% = %sub% >> operation_data.txt
) ELSE IF "%operation%" == "3" (
echo -------------- Multiplication ---------------- >> operation_data.txt
echo %n1% * %n2% = %mul% >> operation_data.txt
) ELSE IF "%operation%" == "4" (
echo ----------------- Division ------------------- >> operation_data.txt
echo %n1% / %n2% = %div% >> operation_data.txt
) ELSE (
echo >> operation_data.txt
echo ------------------ Addition ------------------ >> operation_data.txt
echo %n1% + %n2% = %add% >> operation_data.txt
echo >> operation_data.txt
echo ---------------- Subtraction ----------------- >> operation_data.txt
echo %n1% - %n2% = %sub% >> operation_data.txt
echo >> operation_data.txt
echo -------------- Multiplication ---------------- >> operation_data.txt
echo %n1% * %n2% = %mul% >> operation_data.txt
echo >> operation_data.txt
echo ----------------- Division ------------------- >> operation_data.txt
echo %n1% / %n2% = %div% >> operation_data.txt

)
) 
set /p print=Do you want to print the file contents?[Y/N]?

IF /I "%print%" == "Y" (
	type operation_data.txt
)
echo Application End.....
pause