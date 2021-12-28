export JDK8='/c/Program Files/Eclipse Adoptium/jdk-8.0.312.7-hotspot'
export JDK11='/c/Program Files/Eclipse Adoptium/jdk-11.0.13.8-hotspot'

function setjdk() {
    v=$1
    echo "setting jdk to $v"
    if [[ $v == 8 ]]
    then
        JDK=$JDK8
    elif [[ $v == 11 ]]
    then JDK=$JDK11
    else
         echo "JDK $v not supported"
         return
    fi
    export JAVA_HOME=$JDK
    export PATH=$JDK/bin:$PATH
    echo "end"
}