/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 45BF50F1
/// @DnDArgument : "var" "new_alarm_time"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "60"
/// @DnDArgument : "max" "180"
var new_alarm_time = floor(random_range(60, 180 + 1));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7D069CB4
/// @DnDArgument : "steps" "new_alarm_time"
alarm_set(0, new_alarm_time);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 53ACF556
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "new_bullet"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_bullet_enemy"
/// @DnDArgument : "layer" ""lyr_bullets""
/// @DnDSaveInfo : "objectid" "d08201e9-4818-4df9-a9a4-cd2f50cadb49"
var new_bullet = instance_create_layer(x + 0, y + 0, "lyr_bullets", obj_bullet_enemy);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 68528AF3
/// @DnDApplyTo : new_bullet
/// @DnDArgument : "direction" "225,270,315"
with(new_bullet) {
direction = choose(225,270,315);
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3E6BF5C1
/// @DnDApplyTo : new_bullet
/// @DnDArgument : "speed" "10"
with(new_bullet) speed = 10;