(defmodule {{name}}_SUITE
  (export (all 0)
          (should-pass 1)))

(include-lib "common_test/include/ct.hrl")
(include-lib "ltest/include/ltest-macros.lfe")

(defun all []
  `[should-pass])

(defun should-pass [_config]
  (is 'true))
