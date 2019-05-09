extends AnimationPlayer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var miku
var scale
var EatCounts=0
var score
var height=1.5
var weight=45
var root
var sound
# Called when the node enters the scene tree for the first time.
func _ready():
	miku=get_parent()
	root=find_parent("miku")
	sound=root.get_node("sound")
	scale=miku.get_scale()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_AnimationPlayer_animation_finished(anim_name):
	var rain
	if anim_name=="grab":
		var RainRes=load("res://rain.tscn")
		rain=RainRes.instance()
		var hand=miku.get_node("初音ミク/初音ミク_arm/Skeleton/hand")
		hand.add_child(rain)
	if anim_name=="up_and_eat":
		print(scale)
		EatCounts+=1
		scale.x+=0.05
		scale.y+=0.05
		scale.z+=0.05
		miku.set_scale(scale)
		sound.eat.play()
		sound.grow.play()
		print(rain)
		var miku=get_parent()
		var Myaudio=miku.get_node("Audio")
		"""Myaudio.stream=load("res://sounds/bite-mordisco.ogg")
		print(Myaudio.loopMode)
		Myaudio.play()"""
		if EatCounts >= 1:
			print("吃了几个小人"+str(EatCounts))
			score=10*EatCounts
			height+=0.1
			weight+=2
	pass # Replace with function body.
