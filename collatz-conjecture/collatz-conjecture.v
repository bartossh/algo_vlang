module main

fn collatz(number int) !int {
    if number <= 0 || number > 1000000 {
        return error("number out of range")
    }

    mut n := u64(number)
    mut count := 0
    for n != 1 {
        count ++
        if n % 2 == 0 {
            n = n / 2
        } else {
            n = 3*n + 1
        }
    }
    return count
}
