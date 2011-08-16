CFLAGS = -Wall -g -I@top_srcdir@

lib_LTLIBRARIES = liblrdf.la
noinst_HEADERS = ladspa.h

liblrdf_la_SOURCES = lrdf.c lrdf_multi.c
liblrdf_la_LIBADD = @RAPTOR_LIBS@ -lcrypto
liblrdf_la_LDFLAGS = -version-info @LRDF_LIBTOOL_VERSION@
