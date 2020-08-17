(in-package :cl-investigations-in-algebra.tests)
(test fahrenheit-to-celsius-test
  (is (= (iia::fahrenheit-to-celsius 32) 0))
  (is (= (iia::fahrenheit-to-celsius 212) 100)))

(test celsius-to-fahrenheit
  (is (= (iia::celsius-to-fahrenheit 100) 212))
  (is (= (iia::celsius-to-fahrenheit 0) 32)))

(test fahrenheit-to-newgrade
  (is (= (iia::fahrenheit-to-newgrade 32) 100))
  (is (= (iia::fahrenheit-to-newgrade 212) 360)))

(test celsius-to-newgrade
  (is (= (iia::celsius-to-newgrade 0) 100))
  (is (= (iia::celsius-to-newgrade 100) 360)))

(test newgrade-to-celsius
  (is (= (iia::newgrade-to-celsius 100) 0))
  (is (= (iia::newgrade-to-celsius 360) 100)))

(test newgrade-to-fahrenheit
  (is (= (iia::newgrade-to-fahrenheit 100) 32))
  (is (= (iia::newgrade-to-fahrenheit 360) 212)))
