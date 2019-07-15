/// @description Insert description here
// You can write your code in this editor
if spawn
{
		spawn = false;
		puzzle = instance_create_depth(0, 0, 0, obj_PuzzleBox)
		puzzle.goal = self;
}