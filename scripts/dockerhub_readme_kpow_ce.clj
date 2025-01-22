#!/usr/bin/env bb

(def readme (slurp "dockerhub/kpow-ce/README.md"))
(def readme-lines (str/split-lines readme))
(def release-number (str/trim (slurp *in*)))

(def tags
  ["<!--- StartReleaseLinks --->"
   ""
   (format "* [%s, latest](%s)" release-number "https://github.com/factorhouse/kpow/blob/main/dockerfile/kpow-ce/Dockerfile")

   ""])

(def next-readme-lines
  (reduce
   (fn [ctx curr-line]
     (cond
       (= "<!--- EndReleaseLinks --->" (str/trim curr-line))
       (assoc ctx
              :in-release-links? false
              :next-lines (conj (:next-lines ctx) curr-line))
       
       (:in-release-links? ctx)
       ctx

       (= "<!--- StartReleaseLinks --->" (str/trim curr-line))
       (assoc ctx
              :in-release-links? true
              :next-lines (into (:next-lines ctx) tags))

       :else
       (assoc ctx :next-lines (conj (:next-lines ctx) curr-line))))
   {:in-release-links? false :next-lines []}
   readme-lines))

(def next-readme (str/join "\n" (:next-lines next-readme-lines)))

(spit "dockerhub/kpow-ce/README.md" next-readme)
