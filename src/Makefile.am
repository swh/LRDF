CFLAGS = -Wall -g -I@top_srcdir@

lib_LTLIBRARIES = liblrdf.la
noinst_HEADERS = lrdf_md5.h md5_loc.h ladspa.h

liblrdf_la_SOURCES = lrdf.c lrdf_multi.c md5.c
liblrdf_la_LIBADD = -lraptor
liblrdf_la_LDFLAGS = -version-info @LRDF_LIBTOOL_VERSION@
