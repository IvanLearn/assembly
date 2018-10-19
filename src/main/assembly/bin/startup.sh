#!/bin/sh
export LANG=en_US.UTF-8

cd `dirname $0`
BIN_DIR=`pwd`
cd ..

export VISUAL_HOME=`pwd`
CONF_DIR=$VISUAL_HOME/conf

export JAVA_OPTS="-server -Xms150m -Xmx256m -Xss128k -XX:MaxNewSize=256m -XX:PermSize=512m -XX:MaxPermSize=512m"

#export JDK8_HOME=/usr/jdk/jdk1.8.0_171

cd $VISUAL_HOME

if [ ! -d "logs" ]; then
  mkdir -p logs
fi

nohup java -jar $VISUAL_HOME/lib/Springboot_assembly-0.0.1.jar > logs/visual.log 2>&1 &

echo 'Startup success!'