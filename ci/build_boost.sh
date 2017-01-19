pushd $BOOST_ROOT
./bootstrap.sh
./b2  --with-thread  --with-system --with-program_options --with-random --with-regex --threading=single address-model=32_64 architecture=x86
popd
