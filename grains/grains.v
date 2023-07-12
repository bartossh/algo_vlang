module main

import math

fn grains_on_square(square int) !u64 {
    if square > 64 || square <1{
        return error("square must be between 1 and 64")
    }
    if square == 1 {
        return 1
    }
    return u64(math.powi(2, square-1))
}

fn total_grains_on_board() u64 {
    mut sum := u64(0)
    for i in 0..65 {
        sum += u64(grains_on_square(i) or { 0 })
    }
    return sum
}
