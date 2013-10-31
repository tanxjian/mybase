#!/bin/bash

function show_help()
{
	echo "Usage: `basename $0` -o output_dir commit0..commit2"
}

outdir=/tmp/extract-git-diff-output-dir

while getopts o:h OPTION
do
    case $OPTION in
    #?) ${OPTION}";;
    o) outdir=$OPTARG; shift 2;;
    h|*) show_help; exit 0;;
    esac
done

#echo args: $@

#---------------------------------------------
if [ ! -e $outdir -o ! -d $outdir ]; then
	mkdir -pv $outdir
fi

if [ -e $outdir -a -d $outdir ]; then

	files=`git diff --name-only --diff-filter=ACMR $@`
	#echo $files

	for i in $files; do
		path=$outdir/`dirname $i`
		#	echo $path
		if [ ! -e $path ]; then
			mkdir -pv $path
		fi
		cp -v $i $outdir/$i
	done

else
	echo "output dir not exist, or failed to create"
fi
