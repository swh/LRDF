TESTS = showtaxonomy dumpstatements export_test \
	subclass_test add_test instances_test remove_test multi_test \
	setting_test scale_test

check_PROGRAMS = showdefaults $(TESTS) remove_test

AM_CPPFLAGS = -I$(top_srcdir)
LIBS = ../src/liblrdf.la

pkgdata_DATA = ladspa.rdfs
pkgdatadir = $(datadir)/ladspa/rdf

EXTRA_DIST = default-sample.rdf example.rdf sample.rdf scale-example.rdf \
	 ladspa.rdfs test-in.n3 preset-in.n3
