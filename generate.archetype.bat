@ECHO OFF

SET FOLDER_NAME=archetype-impl
SET TEMP_FOLDER=%CD%\%FOLDER_NAME%

IF EXIST %TEMP_FOLDER% RMDIR /S /Q %TEMP_FOLDER%

MKDIR %TEMP_FOLDER%
CD %FOLDER_NAME%

rem maven
call mvn archetype:generate                           ^
  -DarchetypeGroupId=com.github.rifttech              ^
  -DarchetypeArtifactId=wildfly-starter-archetype     ^
  -DarchetypeVersion=0.1.0-SNAPSHOT                   ^
  -DgroupId=com.github.rifttech                       ^
  -DartifactId=project-sample                         ^
  -Dversion=0.1.0-SNAPSHOT                            ^
  -DinteractiveMode=false                             ^
  || echo %ERRORLEVEL%

rem maven



CD ..

