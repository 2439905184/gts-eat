extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_client_pressed():
	var root=get_parent()
	var ip=root.get_node("ip")
	var net=NetworkedMultiplayerENet.new()
	var success=net.create_client(ip.text,0)
	print(ip.text)
	print(success)
	pass # Replace with function body.
