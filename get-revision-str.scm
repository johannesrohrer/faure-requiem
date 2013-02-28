;; inspired by LilyPond snippet 567 "Showing git commit hash (or other
;; revision number)" <http://lsr.dsi.unimi.it/LSR/Item?id=567>

(use-modules (ice-9 popen))  ; for open-pipe etc.
(use-modules (ice-9 rdelim)) ; for read-line

(define (try-sys-call cmd . parameters)
  "Call external program cmd with given parameters.

  Try to read one line STR of standard output.
  Return a pair (EXITSTATUS . STR)."
  (let* ((port (apply open-pipe* OPEN_READ cmd parameters))
         (str (read-line port))
         (exitst (close-pipe port)))
    (cons exitst str)))

(define (try-commands cmdlist fallback)
  "Find a command from cmdlist that works with try-sys-call.

  The list cmdlist contains lists of strings (command arg1 ...).
  
  Return output from first command that yields zero exit status,
  or fallback if none works."
  (if (null? cmdlist)
      fallback
      (let* ((callres (apply try-sys-call (car cmdlist))))
        (if (equal? (car callres) 0)
            (cdr callres)
            (try-commands (cdr cmdlist) fallback)))))

(define revision-string
  (try-commands '(("git" "describe" "master")
                  ("git" "describe" "--tags" "master")
                  ("git" "log" "-1" "--pretty=format:%H"))
                (strftime "%Y-%m-%dT%H%M%S%z" (gmtime (current-time)))))
