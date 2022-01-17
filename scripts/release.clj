#!/usr/bin/env bb

;; update docs/releases.edn
(def now (java.time.ZonedDateTime/now))
(def timezone (java.time.ZoneId/of "Australia/Melbourne"))
(def melb-time (.withZoneSameInstant now timezone))
(def pattern (java.time.format.DateTimeFormatter/ofPattern "yyyy-MM-dd-HH-mm"))
(def release-time (.format melb-time pattern))
(def release-tag *input*)

(println release-time)
(println release-tag)

(def releases (edn/read-string (slurp "docs/releases-v2.edn")))
(require '[clojure.pprint :as pprint])
(spit 
 "docs/releases-v2.edn"
 (with-out-str
   (pprint/pprint (conj releases {:tag (str release-tag) :release-time release-time}))))
