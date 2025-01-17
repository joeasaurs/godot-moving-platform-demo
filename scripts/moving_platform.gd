extends Node3D

@export var move_speed: float = 2.0  # Speed of movement
@export var move_distance: float = 5.0  # Distance to move in each direction
@export var axis: Vector3 = Vector3.RIGHT  # Direction to move (can be changed in editor)

var start_position: Vector3
var time: float = 0.0

func _ready():
	start_position = position  # Store the initial position

func _process(delta):
	time += delta
	# Create a smooth back-and-forth motion using sine
	var offset = sin(time * move_speed) * move_distance
	position = start_position + (axis * offset)