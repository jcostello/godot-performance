extends OmniLight


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var initial_energy
var time = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	initial_energy = light_energy


func _process(delta):
	time += delta
	
	if time > .1:
		time = 0	
		light_energy = initial_energy + rand_range(-.5, .5)
