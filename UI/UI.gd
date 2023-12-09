extends Control

var timer_value: float = 0.0

func _process(delta):
	
	# Update the timer value
	timer_value += delta

	# Format the timer value (you can customize the format as needed)
	var minutes: int = int(timer_value / 60)
	var seconds: int = int(timer_value) % 60
	var milliseconds: int = int((timer_value - int(timer_value)) * 100)

	# Update the label text
	$Label.text = str(minutes)+ "." + str(seconds) + "." + str(milliseconds)
	
	Global.Highscore = $Label.text

func _on_timer_timeout():
	Global.Highscore = $Label.text


func _on_area_3d_body_entered(body):
	$Label2.show()


func _on_area_3d_body_exited(body):
	$Label2.hide()
