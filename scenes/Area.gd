extends Area

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var mikuAI
var mikuAI_Action
var rain
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=find_parent("root")
	mikuAI=root.get_node("AI/mikuAI")
	mikuAI_Action=root.get_node("AI/mikuAI/miku/AnimationPlayer")
	rain=root.get_node("rain")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var distance=abs(mikuAI.hand_pos.x-rain.pos.x)
	print("---")
	print("AI手到rain的自身X轴方向的实时位置"+str(distance))
	#mikuAI.translate(Vector3(20,0,0))
	#print("手到rain的位置"+str(distance))
	pass

func _on_Area_area_shape_entered(area_id, area, area_shape, self_shape):
	#print(area.name)
	var root=find_parent("root")
	var rain=get_parent()
	var anim=root.get_node("miku/miku/AnimationPlayer")
	anim.play("up_and_eat")
	var miku=root.get_node("miku/miku")
	var scale=miku.get_scale()
	print(scale)
	pass # Replace with function body.

#当碰撞时
func _on_Area_body_shape_entered(body_id, body, body_shape, area_shape):
	#print(str(body.name)+"和rain产生了碰撞")
	##计算AI应该移动的距离
	#var distance=abs(rain.pos.x-mikuAI.pos.x)

	if body.name=="mikuAI":#1.7全局AI手的Z坐标, 21全局rain x坐标
		#mikuAI.translate()
		mikuAI_Action.play("grab")
	pass # Replace with function body.
