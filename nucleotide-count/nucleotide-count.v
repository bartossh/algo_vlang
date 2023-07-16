module main

fn is_nucleotide(r rune) bool {
	match r.str() {
		'A' { return true }
		'C' { return true }
		'G' { return true }
		'T' { return true }
		else { return false }
	}
}

fn count_nucleotides(strand string) !map[string]int {
	mut result := map[string]int{}
    result['A'] = 0
    result['C'] = 0
    result['G'] = 0
    result['T'] = 0

	for _, r in strand.runes() {
		if !is_nucleotide(r) {
			return error('${r.str()} is not a valid nucleotide!')
		}
        s := r.str()
		mut val := result[s]
		val++
		result[s] = val
	}
	return result
}
