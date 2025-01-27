extends RigidBody2D

@export var STUCK_TIMER: Timer

func _ready() -> void:
	pass

func _physics_process(_delta: float) -> void:
	# If ball gets stuck go in random direction
	if linear_velocity <= Vector2(0, 0):
		if (!STUCK_TIMER.is_stopped()): return
		STUCK_TIMER.start()
		var r:= randi_range(0,1)
		if (r):
			apply_impulse(Vector2(4,0))
		else:
			apply_impulse(Vector2(-4,0))