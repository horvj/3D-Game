extends Control

func _process(delta):
	$Highscore.text = "Your previous score was " + Global.Highscore
func _on_start_pressed():
	get_tree().change_scene_to_file("res://game.tscn")
	hide()


func _on_quit_pressed():
	get_tree().quit()
