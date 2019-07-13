//Controls
left = keyboard_check(vk_left) or gamepad_button_check(0, gp_padl)
right = keyboard_check(vk_right) or gamepad_button_check(0, gp_padr)
up = keyboard_check(vk_up) or gamepad_button_check(0, gp_padu)
down = keyboard_check(vk_down) or gamepad_button_check(0, gp_padd)

select = gamepad_button_check_pressed(0, gp_select) or keyboard_check_pressed(vk_delete)

primary = keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0, gp_face1)
tertiary = keyboard_check_pressed(ord("C")) or gamepad_button_check_pressed(0, gp_shoulderr)
secondary = keyboard_check_pressed(ord("X")) or gamepad_button_check_pressed(0, gp_face3)


camera = /*keyboard_check_pressed(ord("C")) or */gamepad_button_check(0, gp_shoulderl)
//Movement Values

//Direction
///Probably Irrelevant
if right
{
    lastDir = 1
}
else if left
{
    lastDir = 0
}