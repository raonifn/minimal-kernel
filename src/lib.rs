#![feature(lang_items)]
#![no_std]

extern crate rlibc;

#[no_mangle]
pub extern fn rust_main() {
  let x = ["Hello", " ", "World", "!"];
  let test = (0..3).flat_map(|x| 0..x).zip(0..);

  let mut a = ("hello", 42);
  a.1 += 1;
}

#[lang = "eh_personality"]
extern fn eh_personality() {}

#[lang = "panic_fmt"]
extern fn panic_fmt() -> ! {loop{}}