BOOST_VERSION=1_61_0
BOOST_VERSION_DOT=1.61.0

test -f boost_$BOOST_VERSION.tar.gz || wget --quiet http://downloads.sourceforge.net/project/boost/boost/$BOOST_VERSION_DOT/boost_$BOOST_VERSION.tar.gz

export BOOST_HOME=$HOME/.ci/boost
export BOOST_ROOT=$BOOST_HOME/boost_$BOOST_VERSION
mkdir -p $BOOST_HOME
test -d $BOOST_ROOT || (
   tar zxf boost_$BOOST_VERSION.tar.gz
   mv boost_$BOOST_VERSION  $BOOST_HOME
)
test -d $BOOST_ROOT || ( echo "boost root $BOOST_ROOT not created." && exit 1)
export DYLD_LIBRARY_PATH="$BOOST_ROOT/stage/lib:$DYLD_LIBRARY_PATH"
export LD_LIBRARY_PATH="$BOOST_ROOT/stage/lib:$LD_LIBRARY_PATH"
