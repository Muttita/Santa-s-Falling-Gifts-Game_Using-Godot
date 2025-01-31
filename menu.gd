#653380279-5 มุตธิตา จันดาวงค์ SEC1
extends Node2D
@onready var intro = $intro

# Called when the node enters the scene tree for the first time.
func _ready():
	intro.play()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_play_btn_pressed():
	get_tree().change_scene_to_file("res://play.tscn")
	intro.stop()
	pass # Replace with function body.


func _on_exit_pressed():
	get_tree().quit()
	intro.stop()
	pass # Replace with function body.
