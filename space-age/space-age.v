module main

const (
    earth_year = 31557600
)

const (
    mercury =  0.2408467
    venus = 0.61519726
    mars = 1.8808158
    jupiter = 11.862615
    saturn = 29.447498
    uranus = 84.016846
    neptune = 164.79132
)

fn age(seconds f64, planet string) !f64 {
	portion := match planet {
        'Mercury' { mercury }
        'Venus' { venus }
        'Mars' { mars }
        'Jupiter' { jupiter }
        'Saturn' { saturn }
        'Uranus' { uranus }
        'Neptune' { neptune }
        'Earth' { 1.0 }
        else { -1 }
    }
    if portion == -1 {
        return error("unknown planet")
    }
    return seconds / (portion * earth_year)
}
