extends Button

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

#停止变大
func _on_resSet_button_down():
	var root=get_parent()
	var player=root.get_node("player")
	player.grow()
	pass # replace with function body