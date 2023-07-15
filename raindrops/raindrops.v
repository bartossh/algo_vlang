module main

import strings
import strconv

fn raindrops(number int) string {
	drops := {
		3: 'Pling'
		5: 'Plang'
		7: 'Plong'
	}

	mut buf := strings.new_builder(15)
	for k, v in drops {
		if number % k == 0 {
			buf.write_string(v)
		}
	}
	result := buf.str()
	if result.len > 0 {
		return result
	}
	return strconv.format_int(number, 10)
}
