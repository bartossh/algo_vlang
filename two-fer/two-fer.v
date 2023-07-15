module main

fn two_fer(name string) string {
    if name.len  > 0 {
        return 'One for ${name}, one for me.'
    }
    return 'One for you, one for me.'
}
