;;! target = "aarch64"
(module
    (func (result i32)
	(i32.const 0x7fffffff)
	(i32.const -1)
	(i32.sub)
    )
)
;;    0:	 fd7bbfa9             	stp	x29, x30, [sp, #-0x10]!
;;    4:	 fd030091             	mov	x29, sp
;;    8:	 fc030091             	mov	x28, sp
;;    c:	 ff2300d1             	sub	sp, sp, #8
;;   10:	 fc030091             	mov	x28, sp
;;   14:	 890300f8             	stur	x9, [x28]
;;   18:	 f07b40b2             	orr	x16, xzr, #0x7fffffff
;;   1c:	 e003102a             	mov	w0, w16
;;   20:	 10008092             	mov	x16, #-1
;;   24:	 0060304b             	sub	w0, w0, w16, uxtx
;;   28:	 ff230091             	add	sp, sp, #8
;;   2c:	 fc030091             	mov	x28, sp
;;   30:	 fd7bc1a8             	ldp	x29, x30, [sp], #0x10
;;   34:	 c0035fd6             	ret	