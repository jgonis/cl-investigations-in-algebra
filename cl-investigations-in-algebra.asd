(defsystem :cl-investigations-in-algebra
  :description "Investigations in Algebra"
  :version "0.0.1"
  :author "Jeff Gonis <jeffgonis@fastmail.com>"
  :licence "AGPL 3.0"
  :depends-on ("alexandria")
  :components ((:file "packages")
               (:module "src"
                        :serial t
                        :components ((:file "investigationsInAlgebra")))))

(defsystem :cl-investigations-in-algebra/tests
  :description "Test suite for the algebra work"
  :license "LGPL 3.0"
  :author "Jeff Gonis"
  :depends-on (::cl-investigations-in-algebra
               :1am)
  :serial t
  :components ((:file "packages.test")
               (:module "tests"
                :serial t
                :components ((:file "tests")
                             (:file "algebratests"))))
  :perform (asdf:test-op (op system)
             (funcall (read-from-string 
                       ":cl-investigations-in-algebra.tests:run-tests"))))

