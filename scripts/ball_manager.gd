extends Node2D

@export var BALL_SCENE: PackedScene

func create_ball():
	var ball = BALL_SCENE.instantiate()
	add_child(ball)
	ball.position = Vector2(0, -250)

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("spawn_ball"):
		create_ball()
