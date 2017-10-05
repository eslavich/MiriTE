#!/bin/bash

cd ./source
mirimod=$(echo tools datamodels simulators)
for module in $mirimod; do
	echo linking miri/$module
	ln -fs ../../$module/doc/source/release_notes.rst ./release_notes_$module.rst  &&\
	cd ./reference
	ln -fs ../../../$module/doc/source/reference ./$module  &&\
	cd ../tutorial
	ln -fs ../../../$module/doc/source/tutorial ./$module  &&\
	cd ../pyplot
	ln -fs ../../../$module/doc/source/pyplot ./$module  &&\
	cd ..
done
cd ..
