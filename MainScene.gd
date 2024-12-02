extends Button

# Reference to the AudioStreamPlayer
@onready var audio_player = $AudioStreamPlayer  # Ensure the player is a child of this button or adjust the path accordingly

# Path to the sound file (you can also assign this via the inspector if needed)
var sound = preload("res://assets/Sounds/")

func _ready():
	# Optionally, preload sound here if not using a direct path in the inspector
	audio_player.stream = sound

	# Connect the button press signal
	self.pressed.connect(_on_button_pressed)

func _on_button_pressed():
	# Play sound when the button is pressed
	audio_player.play()
