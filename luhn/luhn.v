module main

import strconv

fn valid(value string) bool {
    mut sum := 0
    mut pos := 0
    r := value.runes()
    if r.len <= 1 {
        return false
    }
    for i := r.len-1; i >= 0; i-- {
        if r[i].str() == " " {
            continue
        }
        if v := strconv.atoi(r[i].str()) {
            pos++
            if pos % 2 == 0 {
                x := v * 2
                sum += if x > 9 { x - 9 } else { x }
                continue
            }
            sum += v
            continue
        }
        return false
    }
    return sum % 10 == 0 && pos > 1
}
