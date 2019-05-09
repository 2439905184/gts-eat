extends Spatial

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	print("ready")
	pass

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	if(Input.is_action_pressed("walk")):		
		print("Walk")
		var root=get_node(".SceneRoot")
		var node=get_node("Scene Root")
		print(node)
		print(root)
		pass
		
	pass
