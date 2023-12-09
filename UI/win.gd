extends Control

func _process(delta):
	$Label2.text = "Your score was " + Global.Highscore
func _on_button_pressed():
	get_tree().change_scene_to_file("res://UI/main_menu.tscn")
	
