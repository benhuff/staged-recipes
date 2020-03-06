set CXX14 = g++ -std=c++1y
set CXX14FLAGS = -O3 -Wno-unused-variable -Wno-unused-function
"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
