"%R%"
ls
"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
