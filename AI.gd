extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal move#移动到小人位置的信号
var miku
var anim
var Miku_transform
var AI_height=1.5
var AI_NanDu
#自身位置
var trans=Vector3(0,0,0.01)
var distanceTo_tiny=Vector3()
var rain
#位置
var pos
#手的位置
var hand_pos=0
#手关节的节点
var hand=0
#自身角度
var self_rotation
# Called when the node enters the scene tree for the first time.
func _ready():
	miku=get_node("mikuAI")
	pos=self.translation
	hand=get_node("mikuAI/miku/初音ミク/初音ミク_arm/Skeleton/hand")
	hand_pos=hand.translation
#	rain=get_node("StaticBody")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pos=self.translation
	
	pass
func grab_target():
	emit_signal("move")
	miku.translate(Vector3(0,0,0.1))
	#如果miku到达目标位置，执行抓起动画
	"""if miku.translation==rain.translation :
		anim.play("grab")"""
	pass
func _init():
	pass


func _on_AI_move():
	print("移动到小人位置，只执行一次")
	pass # Replace with function body.
