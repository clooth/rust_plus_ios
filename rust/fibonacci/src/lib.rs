#[no_mangle]
pub extern fn fibonacci(num: i64) -> i64 {
	if num <= 2 {
		return 1;
	} else {
		return fibonacci(num - 1) + fibonacci(num - 2);
	}
}