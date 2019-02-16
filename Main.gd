extends Node

var score

func new_game():
	score = 0
	$StartMenu.update_score(score)
	$Player.start($PlayerStartPosition.position)
	$MainMusic.play()

func _ready():
	pass

func _on_SoundBox_pickup():
	$CollectItem.play()
	score += 1
	$StartMenu.update_score(score)
