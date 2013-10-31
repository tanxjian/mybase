#!/bin/bash
#find . -name "*.[c|h|s|S|java|cpp|xml|aidl]" >> ./cscope.files
find . -name "*.c" -o -name "*.h" -o -name "*.s" -o -name "*.S" -o -name "*.java"  -o -name "*.cpp" -o -name "*.CPP"  -o -name "*.xml" -o -name "*.aidl" >> ./cscope.files
cscope -bqk
