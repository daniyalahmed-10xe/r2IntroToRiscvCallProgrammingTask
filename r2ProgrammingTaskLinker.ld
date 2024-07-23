OUTPUT_ARCH( "riscv" )

SECTIONS {
	.text 0x80000000: AT(0x80000000) {
		*(.text)
		*(.text.*)
	}

	.data 0x80001000: AT(0x80001000) {
		*(.data)
		*(.data.*)
	}
}
