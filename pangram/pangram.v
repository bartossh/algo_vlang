module main

import encoding.utf8


fn is_pangram(phrase string) bool {
    if phrase.len < 26 {
        return false
    }

    mut unique := map[rune]bool{}
    lower := utf8.to_lower(phrase)

    for _, r in lower.runes() {
        if utf8.is_letter(r) {
            unique[r] = true
        }
    }

    return unique.len == 26
}
