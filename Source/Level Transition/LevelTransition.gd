extends Node2D

export(String, FILE, "*.tscn") var next_level

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_node("/root/GlobalSounds/Level_Complete").play()
		FadeInOut.fade_to(next_level)
