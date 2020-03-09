## wildfly-starter-archetype

[![Build Status](https://travis-ci.org/rifttech/wildfly-starter-archetype.svg?branch=master)](https://travis-ci.org/rifttech/wildfly-starter-archetype)

### 1. Install artifact to local maven repository
1. Use `git clone https://github.com/rifttech/wildfly-starter-archetype.git` command to clone repository
2. Run command `mvn install` in project root to install artifact at local maven repository

### 2. Generate project from installed maven's archetype

```bash
    mvn archetype:generate                                \
      -DarchetypeGroupId=com.github.rifttech              \
      -DarchetypeArtifactId=wildfly-starter-archetype     \
      -DarchetypeVersion=0.1.0-SNAPSHOT                   \
      -DgroupId=<my-group-id>                             \
      -DartifactId=<my-artifact-id>                       \
      -Dversion=<my-version>                              \
      -DinteractiveMode=false
```
Use `^` instead `\` on Windows

You can look at [one script](./generate.archetype.bat) or [another](./generate.archetype.sh)
