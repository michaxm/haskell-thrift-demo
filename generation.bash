#!/bin/bash -e
#package: thrift-compiler
mkdir -p src-gen-thrift
./thrift-compiler -gen hs -out src-gen-thrift/ -strict -v -r resources/greet.thrift
