# Creating volume sliders in Godot: https://www.youtube.com/watch?v=aFkRmtGiZCw
# By Shaggy Dev
extends HSlider

@export var bus_name: String

var bus_index: int
var default = 0.25

func _ready() -> void:
	bus_index = AudioServer.get_bus_index(bus_name)
	value_changed.connect(_on_value_changed)
	
	AudioServer.set_bus_volume_db(
		bus_index,
		linear_to_db(default)
	)
	
	value = db_to_linear(
		AudioServer.get_bus_volume_db(bus_index)
	)

func _on_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(
		bus_index,
		linear_to_db(value)
	)
