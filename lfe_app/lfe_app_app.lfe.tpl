#|
@doc
  {{ name }} public API
@end
|#

(defmodule {{ name }}-app
  (behaviour application)

  ;; Application callbacks
  (export (start 2)
          (stop 1)))

;;; API

(defun start [_type _args]
  ({{ name }}-sup:start_link))

(defun stop [_state]
  'ok)
