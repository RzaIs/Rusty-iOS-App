use std::ffi::{c_int, c_longlong};



#[no_mangle]
pub extern "C" fn hello_world() {
    println!("Hello World from RUST!")
}

#[no_mangle]
pub extern "C" fn sum_two(first: c_int, second: c_int) -> c_longlong {
    first as c_longlong + second as c_longlong
}