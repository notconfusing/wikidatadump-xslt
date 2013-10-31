wikidatadump-xslt
=================
this transform should allow an easy way to get the json out of the xml its wrapped int when you download wikidata as a dump.
usage:
xsltproc -o output.json title-and-text-to-json.xsl wikidatadump.xml
