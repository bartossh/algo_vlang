module main

fn color_code(color string) int {
    for i, col in colors {
        if color == col {
            return i
        }
    }
    return 0
}

const colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white'
]
