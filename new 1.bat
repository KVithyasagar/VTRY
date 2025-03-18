@echo off
:: Ask the user for their date of birth in YYYY-MM-DD format
set /p dob=Enter your date of birth (YYYY-MM-DD): 

:: Get current date (year)
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set datetime=%%I
set current_year=%datetime:~0,4%

:: Get the year from the user's date of birth
set dob_year=%dob:~0,4%

:: Calculate the age by subtracting birth year from current year
set /a age=%current_year% - %dob_year%

:: Display the age
echo Your age is: %age%
pause