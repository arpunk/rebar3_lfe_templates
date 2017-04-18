#|
@doc
  {{ name }} top level supervisor
@end
|#

(defmodule {{ name }}-sup
  (behaviour supervisor)

  ;; API
  (export (start_link 0))

  ;; Supervisor callbacks
  (export (init 1)))

;;; API functions

(defun server-name []
  '{{ name }}-sup)

(defun start_link []
  (supervisor:start_link
    `#(local ,(server-name)) (MODULE) '()))

;;; Supervisor callbacks

(defun init [_args]
  (let [(flags #M(strategy one_for_one
                  intensity 1
                  period 5))]
    `#(ok #(,flags ()))))