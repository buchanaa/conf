# this is only run by login shells -- feel free to print lots of garbage
# terminal does login shells, xterm doesn't
. ~/.bashrc # source this guy

cd Desktop

export MAVEN_OPTS="-Xmx2048m -XX:MaxPermSize=128m"
