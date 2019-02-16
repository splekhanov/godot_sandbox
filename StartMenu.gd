extends CanvasLayer

signal start_game

func _ready():
	pass

func show_message(text):
	$WelcomeMessage.text = text
	$WelcomeMessage.show()
	$MessageTimer.start()

func _on_StartButton_pressed():
	$StartButton.hide()
	$WelcomeMessage.hide()
	var world = get_tree().get_nodes_in_group("world")
	for w in world:
		w.show()
	emit_signal("start_game")
	
func update_score(score):
	$Score.text = str(score)
