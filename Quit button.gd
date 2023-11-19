extends Button


func _ready():
	Utils.saveGame()
	Utils.loadGame()

func _on_pressed():
	get_tree().quit()


func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://world.tscn")
