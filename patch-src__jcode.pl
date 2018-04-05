--- src/jcode.pl.orig	2018-04-05 20:15:37.948493000 +0900
+++ src/jcode.pl	2018-04-05 20:17:26.809548000 +0900
@@ -676,7 +676,7 @@
 
 sub z2h_euc {
     local(*s, $n) = @_;
-    &init_z2h_euc unless defined %z2h_euc;
+    &init_z2h_euc if (!%z2h_euc);
     $s =~ s/($re_euc_c|$re_euc_kana)/
 	$z2h_euc{$1} ? ($n++, $z2h_euc{$1}) : $1
     /geo;
@@ -685,7 +685,7 @@
 
 sub z2h_sjis {
     local(*s, $n) = @_;
-    &init_z2h_sjis unless defined %z2h_sjis;
+    &init_z2h_sjis if (!%z2h_sjis);
     $s =~ s/($re_sjis_c)/$z2h_sjis{$1} ? ($n++, $z2h_sjis{$1}) : $1/geo;
     $n;
 }
