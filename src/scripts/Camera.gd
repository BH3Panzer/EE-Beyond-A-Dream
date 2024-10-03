extends Camera3D

@export var camera_speed = 5
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_viewport().get_mouse_position().x > get_viewport().size.x/32*30:
		get_parent_node_3d().position.x += camera_speed * delta
		
	elif get_viewport().get_mouse_position().x < get_viewport().size.x/32*2:
		get_parent_node_3d().position.x -= camera_speed * delta
		
	elif get_viewport().get_mouse_position().y < get_viewport().size.y/32*2:
		get_parent_node_3d().position.z -= camera_speed * delta
		
	elif get_viewport().get_mouse_position().y > get_viewport().size.y/32*30:
		get_parent_node_3d().position.z += camera_speed * delta
