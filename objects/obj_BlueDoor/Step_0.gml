/// @description Insert description here
// You can write your code in this editor
if global.blue
{
	newDoor = instance_create_depth(x, y, depth, obj_door)
	
	newDoor.image_angle = image_angle;
	
	instance_destroy()
}