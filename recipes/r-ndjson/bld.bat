echo ~/.R/Makevars
CXX14 = g++ -std=c++1y -Wno-unused-variable -Wno-unused-function -fPIC
ls
"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
