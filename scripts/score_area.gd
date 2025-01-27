extends StaticBody2D

signal on_score_area_entered(multiplier: float, value: int)
@export var BOUNDING_BOX: CollisionObject2D
@export var TEXTLABEL: RichTextLabel
@export var multiplier: = 1

func _ready() -> void:
	TEXTLABEL.text = "[center]" + str(multiplier) + "x" + "[/center]"

func _on_bounding_box_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	body.queue_free()