#!/bin/bash -e
#package: thrift-compiler
mkdir -p src-gen-thrift
./thrift-compiler -gen hs -out src-gen-thrift/ -v -r -strict resources/greet.thrift
./thrift-compiler -gen hs -out src-gen-thrift/ -v -r resources/hadoopfs.thrift
