extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var sound
var state
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=get_parent()
	sound=root.get_node("sound/EnterSound")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_set_button_down():
	sound.play()
	#print("down")
	pass # Replace with function body.
func _on_set_pressed():
	print("pressed")
	print(sound.is_playing())
	if sound.state=="finished":
		print("finish")
		get_tree().change_scene("res://scenes/layout/设置.tscn")
	pass # Replace with function body.
