module main

const (
	protein_conding = {
		'AUG': 'Methionine'
		'UUU': 'Phenylalanine'
		'UUC': 'Phenylalanine'
		'UUA': 'Leucine'
		'UUG': 'Leucine'
		'UCU': 'Serine'
		'UCC': 'Serine'
		'UCA': 'Serine'
		'UCG': 'Serine'
		'UAU': 'Tyrosine'
		'UAC': 'Tyrosine'
		'UGU': 'Cysteine'
		'UGC': 'Cysteine'
		'UGG': 'Tryptophan'
		'UAA': 'STOP'
		'UAG': 'STOP'
		'UGA': 'STOP'
	}
)

fn proteins(strand string) ![]string {
	mut result := []string{len: 0, cap: strand.len / 3}
	correct_proteins_num := strand.len % 3 == 0

	for i := 0; i < strand.len - 2; i += 3 {
		if protein := protein_conding[strand[i..i + 3]] {
			if protein == 'STOP' {
				return result
			}
			result.insert(result.len, protein)
		} else {
			return error('Invalid codon')
		}
	}
	if !correct_proteins_num {
		return error('Invalid codon')
	}
	return result
}
