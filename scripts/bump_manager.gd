extends Node2D


@export var BUMP_SCENE: PackedScene

var bump_count: int = 3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	create_bumps(-200)

func create_bump(bump_position: Vector2) -> void:
	var bump = BUMP_SCENE.instantiate()
	add_child(bump)
	bump.position = bump_position

func create_bumps(y) -> void:
	print("Creating Bumps")
	var x:= -60
	for i in range(bump_count):
		create_bump(Vector2(x, y))
		x+=60
