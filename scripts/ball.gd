extends RigidBody2D

@export var STUCK_TIMER: Timer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	# If ball gets stuck go in random direction
	if linear_velocity <= Vector2(0,0):
		if (!STUCK_TIMER.is_stopped()): return
		STUCK_TIMER.start()
		var r:= randi_range(0,1)
		if (r):
			apply_impulse(Vector2(4,0))
		else: 
			apply_impulse(Vector2(-4,0))