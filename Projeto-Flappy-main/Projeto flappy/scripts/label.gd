extends Label

var score: int = 0

func _on_timer_timeout() -> void:
	score += 1
	$".".text = "Score: " + str(score)
