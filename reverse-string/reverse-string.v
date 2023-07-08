module main

// reverse_string returns a given string in reverse order
fn reverse_string(str string) string {
    r := str.runes()
    mut reverted := []rune{len: r.len, cap: r.len}
    mut idx := r.len - 1
    for _, v in r {
        reverted[idx] = v
        idx--
    }
    return reverted.string()
}
