--- www/lib/libcgi_kern.pl.orig	2018-04-05 23:42:14.934727000 +0900
+++ www/lib/libcgi_kern.pl	2020-11-12 18:31:40.924291000 +0900
@@ -18,8 +18,8 @@ sub Init
     $| = 1;
 
     # getopt()
-    require 'getopts.pl';
-    &Getopts("dh");
+    use Getopt::Std;
+    getopts("dh");
 
     # save /ml-admin/$ml/*.cgi case
     if ($ML) { $SavedML = $ML;}
