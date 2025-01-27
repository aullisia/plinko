extends Node2D


@export var BUMP_SCENE: PackedScene

var rows = 0 #5
var bump_count: int = 3

func _ready() -> void:
	create_bumps()

func create_bump(bump_position: Vector2) -> void:
	var bump = BUMP_SCENE.instantiate()
	add_child(bump)
	bump.position = bump_position

func create_bumps() -> void:
	print("Creating Bumps")
	var x: float = -60.0
	var y: float = -300.0
	for row in range(rows):
		y+=100
		if(y >= 300): return
		for i in range(bump_count):
			create_bump(Vector2(x, y))
			x+=60
		bump_count+=1
		x = -60 + (-60 * (float(bump_count) - 3)) / 2
