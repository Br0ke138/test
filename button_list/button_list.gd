extends Control

var button_list = [
	{ "textLabel": "B1"},
	{ "textLabel": "B2"},
	{ "textLabel": "B3"},
	{ "textLabel": "B4"},
	{ "textLabel": "B5"},
	{ "textLabel": "B6"},
	{ "textLabel": "B7"}
]

func _ready():
	var container
	container = $MarginContainer/VBoxContainer

	for button in button_list:
		var margin_container := MarginContainer.new()
		
		# Set it to fill the parent
		margin_container.set_anchors_preset(Control.PRESET_FULL_RECT)
		margin_container.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		margin_container.size_flags_vertical = Control.SIZE_EXPAND_FILL

		# Set the padding (margin) values
		margin_container.add_theme_constant_override("margin_left", 10)
		margin_container.add_theme_constant_override("margin_top", 10)
		margin_container.add_theme_constant_override("margin_right", 10)
		margin_container.add_theme_constant_override("margin_bottom", 10)
		
		var next_button = Button.new()
		next_button.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		next_button.anchor_right = 1.0
		next_button.anchor_bottom = 1.0
		next_button.custom_minimum_size = Vector2(0, 100)  # z. B. Höhe
		
		next_button.text = button.textLabel
		
		margin_container.add_child(next_button)
		container.add_child(margin_container)
		
	
	
