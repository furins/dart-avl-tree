#!/bin/bash

rm -rf doc
dartdoc
if [ ! -d "../dart-avl-tree.gh-pages" ]; then
	echo "fatal: target directory ../dart-avl-tree.gh-pages not found"
	exit 1
fi

echo "Staging generated documentation ..."
cp -R doc/api/* ../dart-avl-tree.gh-pages



