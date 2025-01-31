#653380279-5 มุตธิตา จันดาวงค์ SEC1
extends Node2D

var v = Vector2(0,0)
var speed = 8


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func play(key):	
	$AnimationTree.play(key)
				
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	v.x = 0
	v.y = 0
		
				
	if Input.is_action_pressed("walk_left"):
		v.x = -speed
		pass
		
	if Input.is_action_pressed("walk right"):
		v.x = speed
		pass
	
	
	if v.x < 0:
		$Player.scale.x = -1
	else:
		$Player.scale.x = 1
		
	if position.y >= 590 && v.y > 0: v.y = 0
	if position.y <= 550 && v.y < 0: v.y = 0
	if position.x <= 0 && v.x < 0: v.x = 0
	if position.x >= 2500 && v.x > 0: v.x = 0
	
	if v.x == 0 && v.y == 0:
		play("idle")
	else:
		play("walk")
	
	position += v


func _on_player_area_entered(area):
	if area.name == "giftbox2":
		Global.score += 20
		area.get_parent().queue_free()
	if area.name == "candy":
		Global.score += 10
		area.get_parent().queue_free()
	if area.name == "candy2":
		Global.score += 10
		area.get_parent().queue_free()
	pass # Replace with function body.
