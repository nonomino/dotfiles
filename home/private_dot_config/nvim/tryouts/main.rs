fn main() {
    let g: String = String::from("stringify");
    println!("Hi rust! {g}");
    ok();
}

fn ok() -> (usize, usize) {
    (10, 20)
}   
