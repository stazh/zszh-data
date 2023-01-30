xquery version "3.1";

import module namespace xdb="http://exist-db.org/xquery/xmldb";

(: The following external variables are set by the repo:deploy function :)

(: file path pointing to the exist installation directory :)
declare variable $home external;
(: path to the directory containing the unpacked .xar package :)
declare variable $dir external;
(: the target collection into which the app is deployed :)
declare variable $target external;

xmldb:create-collection($target, "temp"),
sm:chown(xs:anyURI($target || "/temp"), "rqzh"),
sm:chgrp(xs:anyURI($target || "/temp"), "tei")
