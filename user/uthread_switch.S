	.text

	/*
         * save the old thread's registers,
         * restore the new thread's registers.
         */

	.globl thread_switch
thread_switch:
	/* YOUR CODE HERE */

	/* Save old thread's registers */
	sd ra, (a0)
	sd s0, 8(a0)
	sd s1, 16(a0)
	sd s2, 24(a0)
	sd s3, 32(a0)
	sd s4, 40(a0)
	sd s5, 48(a0)
	sd s6, 56(a0)
	sd s7, 64(a0)
	sd s8, 72(a0)
	sd s9, 80(a0)
	sd s10, 88(a0)
	sd s11, 96(a0)
	sd sp, 104(a0)

	/* Restore new thread's registers */
	ld ra, (a1)
	ld s0, 8(a1)
	ld s1, 16(a1)
	ld s2, 24(a1)
	ld s3, 32(a1)
	ld s4, 40(a1)
	ld s5, 48(a1)
	ld s6, 56(a1)
	ld s7, 64(a1)
	ld s8, 72(a1)
	ld s9, 80(a1)
	ld s10, 88(a1)
	ld s11, 96(a1)
	ld sp, 104(a1)

	ret    /* return to ra */
