extends Node2D



func _on_play_again_pressed():
	get_tree().change_scene_to_file("res://world.tscn")


func _on_main_menu_pressed():
	get_tree().change_scene_to_file("res://main.tscn")
