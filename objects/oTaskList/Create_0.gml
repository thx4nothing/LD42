/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

max_quests = 5;
quests_ = ds_list_create();
ds_list_add(quests_, create_new_quest());
ds_list_add(quests_, create_new_quest());