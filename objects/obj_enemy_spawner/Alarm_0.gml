/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1CFE33F3
/// @DnDArgument : "steps" "120"
alarm_set(0, 120);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3E31A80A
/// @DnDArgument : "var" "new_x_pos"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "300"
/// @DnDArgument : "max" "700"
var new_x_pos = floor(random_range(300, 700 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 04896705
/// @DnDArgument : "var" "new_y_pos"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "50"
/// @DnDArgument : "max" "300"
var new_y_pos = floor(random_range(50, 300 + 1));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 40FC65C6
/// @DnDArgument : "xpos" "new_x_pos"
/// @DnDArgument : "ypos" "new_y_pos"
/// @DnDArgument : "var" "new_enemy"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_enemy"
/// @DnDArgument : "layer" ""lyr_entities""
/// @DnDSaveInfo : "objectid" "446dbf7e-0dd2-4fdb-b23b-1753863a4fe1"
var new_enemy = instance_create_layer(new_x_pos, new_y_pos, "lyr_entities", obj_enemy);

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 289625AE
/// @DnDApplyTo : new_enemy
/// @DnDArgument : "path" "choose(pth_0, pth_1, pth_2)"
/// @DnDArgument : "speed" "8"
/// @DnDArgument : "atend" "path_action_restart"
with(new_enemy) path_start(choose(pth_0, pth_1, pth_2), 8, path_action_restart, false);