# Copy file at .libs/libserialport.dynlib to macos/Frameworks

cd ./utils/libserialport
./autogen.sh
./configure
make
