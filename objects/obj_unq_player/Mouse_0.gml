/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 18C21F18
/// @DnDArgument : "var" "ready_to_fire"
/// @DnDArgument : "value" "true"
if(ready_to_fire == true)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 71E1B594
	/// @DnDParent : 18C21F18
	/// @DnDArgument : "steps" "shot_cooldown"
	alarm_set(0, shot_cooldown);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21DFA7CA
	/// @DnDParent : 18C21F18
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "ready_to_fire"
	ready_to_fire = false;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 496A73A6
	/// @DnDParent : 18C21F18
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "new_bullet"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_bullet_player"
	/// @DnDArgument : "layer" ""lyr_bullets""
	/// @DnDSaveInfo : "objectid" "866cc003-7393-44c1-b6ab-3f2d035541e6"
	var new_bullet = instance_create_layer(x + 0, y + 0, "lyr_bullets", obj_bullet_player);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 1D6B7B99
	/// @DnDParent : 18C21F18
	/// @DnDArgument : "var" "rnd_direction_x"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "-4"
	/// @DnDArgument : "max" "4"
	var rnd_direction_x = floor(random_range(-4, 4 + 1));

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 4F957666
	/// @DnDApplyTo : new_bullet
	/// @DnDParent : 18C21F18
	/// @DnDArgument : "x" "rnd_direction_x"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-30"
	/// @DnDArgument : "y_relative" "1"
	with(new_bullet) direction = point_direction(x, y, x + rnd_direction_x, y + -30);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 15219557
	/// @DnDApplyTo : new_bullet
	/// @DnDParent : 18C21F18
	/// @DnDArgument : "speed" "8"
	with(new_bullet) speed = 8;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 0DD04004
	/// @DnDApplyTo : new_bullet
	/// @DnDParent : 18C21F18
	/// @DnDArgument : "angle" "new_bullet.direction-90"
	with(new_bullet) image_angle = new_bullet.direction-90;
}