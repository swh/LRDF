#!/bin/sh

gprefix=`which glibtoolize 2>&1 > /dev/null`
if [ $? -eq 0 ]; then
  LIBTOOLIZE=glibtoolize
else
  LIBTOOLIZE=libtoolize
fi

$LIBTOOLIZE --force || {
	echo "libtoolize failed, exiting..."
	exit 1
}

aclocal $ACLOCAL_FLAGS || {
    echo "aclocal \$ACLOCAL_FLAGS where \$ACLOCAL_FLAGS= failed, exiting..."
    exit 1
}

autoheader || {
    echo "autoheader failed, exiting..."
    exit 1
}

automake --add-missing --foreign || {
    echo "automake --add-missing --foreign failed, exiting..."
    exit 1
}

autoconf || {
    echo "autoconf failed, exiting..."
    exit 1
}

echo "Running ./configure $@..."

./configure $@
