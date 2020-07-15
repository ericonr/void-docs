#!/bin/sh

PREFIX=$1
DESTDIR=$2
DOC=${DESTDIR}${PREFIX}/share/doc/void
mkdir -p $DOC/

cp -r src/ $DOC/markdown
rm -r $DOC/markdown/theme

cp -r book/html $DOC/html

cp -r mandoc/ $DOC/mandoc

mkdir -p ${DESTDIR}${PREFIX}/share/man/man7/
install -m0644 void-docs.7 ${DESTDIR}${PREFIX}/share/man/man7/

sed -e "s,@PREFIX@,$PREFIX," void-docs.in > void-docs
mkdir -p ${DESTDIR}${PREFIX}/bin/
install -m0755 void-docs ${DESTDIR}${PREFIX}/bin/
