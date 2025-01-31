#653380279-5 มุตธิตา จันดาวงค์ SEC1
extends Sprite2D

var direction = 1  
var gift_types = ["res://gift.tscn", "res://candy.tscn", "res://candy_2.tscn"]

func _process(delta):
	position.x += 2 * direction 

	if position.x >= 2600:
		direction = -2.2 #Change direction 
		self.scale.x = -abs(self.scale.x)  #Flip horizontally
	elif position.x <= -100:
		direction = 2.2  # Change direction
		self.scale.x = abs(self.scale.x) 

	
	if randf() < 0.02:  
		spawn_gift()

func spawn_gift():
	
	var gift_type = gift_types[randi() % gift_types.size()]
	var gift_scene = ResourceLoader.load(gift_type)
	
	if gift_scene:
		var gift = gift_scene.instantiate()
		if gift:
			
			gift.position = position
			get_parent().add_child(gift)
			print(gift)
		else:
			print("Failed to instance the gift", gift_types)
	else:
		print("Failed to load scene : ", gift_types)

