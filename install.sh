#!/bin/sh

set -e

PREFIX=$1
DESTDIR=$2
DOC=${DESTDIR}${PREFIX}/share/doc/void
mkdir -p $DOC/

cp -r src/ $DOC/markdown
rm -fr $DOC/markdown/theme

cp -r book/html $DOC/html

cp -r mandoc/ $DOC/mandoc

mkdir -p ${DESTDIR}${PREFIX}/share/man/man1/
install -m0644 void-docs.1 ${DESTDIR}${PREFIX}/share/man/man1/

sed -e "s,@PREFIX@,$PREFIX," void-docs.in > void-docs
mkdir -p ${DESTDIR}${PREFIX}/bin/
install -m0755 void-docs ${DESTDIR}${PREFIX}/bin/
