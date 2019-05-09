extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var game_NetWork_State
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_localServe_pressed():
	print("正在建立本地服务器...")
	game_NetWork_State="Local server"
	print("网络状态"+game_NetWork_State)
	var net=NetworkedMultiplayerENet.new()
	var root=find_parent("Panel")
	var port=root.get_node("Label3/port")
	net.create_server(port.text,2)
	
	pass # Replace with function body.
