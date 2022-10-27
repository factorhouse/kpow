#!/usr/bin/env bb

;; update docs/releases.edn
(def now (java.time.ZonedDateTime/now))
(def timezone (java.time.ZoneId/of "Australia/Melbourne"))
(def melb-time (.withZoneSameInstant now timezone))
(def pattern (java.time.format.DateTimeFormatter/ofPattern "yyyy-MM-dd-HH-mm"))
(def release-time (.format melb-time pattern))
(def release-tag (first *command-line-args*))
(def release-file (str "docs/" (second *command-line-args*)))

(println release-time)
(println release-tag)
(println release-file)

(def releases (edn/read-string (slurp release-file)))
(require '[clojure.pprint :as pprint])
(spit
 release-file
 (with-out-str
   (pprint/pprint (conj releases {:tag (str release-tag) :release-time release-time}))))