extends RigidBody
#AI类
var hand
var hand_pos
# Called when the node enters the scene tree for the first time.
func _ready():
	hand=get_node("miku/初音ミク/初音ミク_arm/Skeleton/hand")
	hand_pos=hand.translation
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	hand_pos=hand.translation
	#print("手的实时位置"+str(hand_pos))
	rotate_y(1*delta)
	translate(Vector3(0.1,0,0))
	pass
func grab():#1.7左手相对于脚的全局Z轴坐标
	translate(Vector3(0.1,0,0))
	#print("AI的局部位置"+str(self.translation))
	if self.translation.x > 21:
		self.translation.x=21
	#translate_object_local(Vector3(0,0,4)
	pass

func xun_luo():
	self.rotation_degrees.y+=15
	if self.rotation_degrees.y>=15:
		#print("h")
		translate(Vector3(0,0,0.5))
	pass

