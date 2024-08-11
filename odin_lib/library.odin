package odin_lib

import "base:runtime"
import "core:c"
import "core:fmt"

@(export)
add_two_numbers :: proc "c" (a: c.int, b: c.int) -> c.int {
	return a + b
}

@(export)
from_odin :: proc "c" () {
	context = runtime.default_context()
	fmt.println("Hello from odin!")
}
