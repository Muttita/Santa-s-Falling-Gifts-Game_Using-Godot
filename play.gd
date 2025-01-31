#653380279-5 มุตธิตา จันดาวงค์
extends Node2D
@onready var sfx = $sfx

func _ready():
	sfx.play()

func _process(delta):
	$CanvasLayer/ScoreLabel.text = "Score : " + str(Global.score)


func _on_button_pressed():
	get_tree().quit()
	sfx.stop()
	pass # Replace with function body.


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
	sfx.stop()
	pass # Replace with function body.
