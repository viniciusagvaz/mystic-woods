extends Area2D
class_name DoorComponent

var _player_ref: Player = null

@export_category("Variables")
@export var _teleport_position: Vector2
#1176 844
@export_category("Objects")
@export var _animation: AnimationPlayer = null

func _on_body_entered(_body: Node2D) -> void:
	if _body is Player:
		_player_ref = _body
		_animation.play("open_door")


func _on_animation_finished(_anim_name: String) -> void:
	if _anim_name == "open_door":
		_player_ref.global_position = _teleport_position
		_animation.play("close_door")
		
