extends Node

const SAVE_PATH = "res://savegame.bin"

func saveGame():
	var saveFile = FileAccess.open(SAVE_PATH, FileAccess.WRITE) 
	var data: Dictionary = {
		"playerHP": Game.playerHP,
		"gold": Game.gold
	}
	var jsonData = JSON.stringify(data)
	saveFile.store_line(jsonData)

func loadGame():
	var saveFile = FileAccess.open(SAVE_PATH, FileAccess.READ)
	if FileAccess.file_exists(SAVE_PATH) == true:
		if not saveFile.eof_reached():
			var currentLine = JSON.parse_string(saveFile.get_line())
			if currentLine:
				Game.playerHP = currentLine["playerHP"]
				Game.gold = currentLine["gold"]
