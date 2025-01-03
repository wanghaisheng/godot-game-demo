extends LevelListManager

func set_current_level_id(value):
	super.set_current_level_id(value)
	GameStateExample.level_reached(value)

func get_current_level_id() -> int:
	return GameStateExample.get_current_level() if force_level == -1 else force_level

func _advance_level():
	super._advance_level()
	GameStateExample.set_current_level(current_level_id)
