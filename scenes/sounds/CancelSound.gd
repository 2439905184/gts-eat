extends AudioStreamPlayer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var state
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_CancelSound_finished():
	state=self.is_playing()
	print(state)
	pass # Replace with function body.
