extends Control


func _process(delta):
	if Input.is_action_just_pressed("menu"):
		show()

func _on_resume_pressed():
	hide()


func _on_quit_pressed():
	get_tree().quit()
