module main

import math

fn score(x f64, y f64) int {
    c := math.sqrt(math.pow(x, 2.0) + math.pow(y, 2.0))
    match true {
        c > 10.0 { return 0 }
        c > 5.0 { return 1 }
        c > 1.0 { return 5 }
        else { return 10 }
    }
}
