extends CharacterBody2D

signal game_over

var gravity: float = 800.0
var flap_stregth: float = -300.0
var atras: float = -200.0
var fente: float = 200.0

func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	
	if Input.is_action_just_pressed("flap"):
		velocity.y = flap_stregth
		
	if Input.is_action_just_pressed("tras"):
		velocity.x = atras
		
	if Input.is_action_just_pressed("descer"):
		velocity.y = gravity
		
	if Input.is_action_just_pressed("frente"):
		velocity.x = fente
	
	move_and_slide()

  
func _on_area_2d_area_entered(area: Area2D) -> void:
	game_over.emit()


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	game_over.emit()
