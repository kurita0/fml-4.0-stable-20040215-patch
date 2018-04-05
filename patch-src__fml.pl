--- src/fml.pl.orig	2018-04-05 20:13:14.822538000 +0900
+++ src/fml.pl	2018-04-05 20:14:01.286374000 +0900
@@ -690,7 +690,7 @@
 
     ### Header Fields Extraction
     $s = $Envelope{'Header'}."\n";
-    $* = 0;			# match one line
+#    $* = 0;			# match one line
     if ($s =~ /^From\s+(\S+)/i) {
 	# XXX NO REACH HERE (1999/10/27 by fukachan)
 	# $Envelope{'UnixFrom'} = $UnixFrom = $1;
