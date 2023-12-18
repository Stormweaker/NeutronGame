extends CharacterBody2D

@export var speed:float = 100.0
@export var angle:float = 45.0

var go_up:bool = true

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("change_direction"):
		go_up = !go_up


func _physics_process(delta: float) -> void:
	var go_up_int:int = int(go_up) * 2 - 1
	var direction:Vector2 = Vector2(cos(angle),go_up_int * sin(angle)).normalized()
	velocity = speed * direction
	move_and_slide()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
