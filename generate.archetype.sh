
#!/bin/sh


FOLDER_NAME=archetype-impl
TEMP_FOLDER=$("pwd")/$FOLDER_NAME

if [ -d $TEMP_FOLDER ] 
then
  rm -rf $TEMP_FOLDER
  
fi


mkdir $TEMP_FOLDER
cd $FOLDER_NAME

mvn archetype:generate                                \
  -DarchetypeGroupId=com.github.rifttech              \
  -DarchetypeArtifactId=wildfly-starter-archetype     \
  -DarchetypeVersion=0.1.0-SNAPSHOT                   \
  -DgroupId=com.github.rifttech                       \
  -DartifactId=project-sample                         \
  -Dversion=0.1.0-SNAPSHOT                            \
  -DinteractiveMode=false

cd ..