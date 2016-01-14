;zzrec.scm
;zzstructs via record types
;jpt4  
;UTC20160113

(use-modules (srfi srfi-9))

(define-record-type <zzcell>
	(build-zzcl index content neighbor-list)
	zzcl?
	(index zix)
	(content zco zco!)
	(neighbor-list znl znl!))

(define-record-type <zzstruct>
	(build-zzst (head . tail))
	zzst?
	(head zzst-head)
	(tail zzst-tail))

;;build zzstruct from >=1 zzcells
#;(define (build-zzst c . ls)
	(if (null? ls) (list c)	(cons c ls)))
	
