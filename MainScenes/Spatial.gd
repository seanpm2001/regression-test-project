extends Node3D


func _ready():
	for i in range(Autoload.RANGE):
		add_child(Node3D.new())
		add_child(XRAnchor3D.new())
		add_child(Camera3D.new())
		add_child(XRCamera3D.new())
		add_child(ClippedCamera3D.new())
		add_child(XRController3D.new())
		add_child(XROrigin3D.new())
		add_child(AnimatedSprite3D.new())
		add_child(Sprite3D.new())
		add_child(CPUParticles3D.new())
		add_child(CSGBox3D.new())
		add_child(CSGCylinder3D.new())
		add_child(CSGMesh3D.new())
		add_child(CSGPolygon3D.new())
		add_child(CSGSphere3D.new())
		add_child(CSGTorus3D.new())
		add_child(CSGCombiner3D.new())
		add_child(ImmediateGeometry3D.new())
		add_child(MeshInstance3D.new())
		add_child(SoftBody3D.new())
		add_child(MultiMeshInstance3D.new())
		add_child(GPUParticles3D.new())
		add_child(BakedLightmap.new())
		add_child(DirectionalLight3D.new())
		add_child(OmniLight3D.new())
		add_child(SpotLight3D.new())
		add_child(GIProbe.new())
		add_child(ReflectionProbe.new())
		add_child(Area3D.new())
		add_child(KinematicBody3D.new())
		add_child(PhysicalBone3D.new())
		add_child(RigidBody3D.new())
		add_child(VehicleBody3D.new())
		add_child(StaticBody3D.new())
		add_child(AudioStreamPlayer3D.new())
		add_child(BoneAttachment3D.new())
		add_child(CollisionPolygon3D.new())
		add_child(CollisionShape3D.new())
		add_child(ConeTwistJoint3D.new())
		add_child(Generic6DOFJoint3D.new())
		add_child(HingeJoint3D.new())
		add_child(PinJoint3D.new())
		add_child(SliderJoint3D.new())
		add_child(GridMap.new())
		add_child(Listener3D.new())
		add_child(Navigation3D.new())
		add_child(Path3D.new())
		add_child(PathFollow3D.new())
		add_child(Position3D.new())
		add_child(ProximityGroup3D.new())
		add_child(RayCast3D.new())
		add_child(RemoteTransform3D.new())
		add_child(Skeleton3D.new())
		add_child(SpringArm3D.new())
		add_child(VehicleWheel3D.new())
		add_child(VisibilityNotifier3D.new())
		add_child(VisibilityEnabler3D.new())
		
		
		add_child(GPUParticlesAttractorBox.new())
		add_child(GPUParticlesAttractorSphere.new())
		add_child(GPUParticlesAttractorVectorField.new())
		
		add_child(GPUParticlesCollisionBox.new())
		add_child(GPUParticlesCollisionHeightField.new())
		add_child(GPUParticlesCollisionSphere.new())
		add_child(GPUParticlesCollisionSDF.new())


func _process(delta: float) -> void:
	for i in get_children():
		if i.get_name() != "Camera":
			i.set_scale(Vector3(delta + 1, delta + 1, delta + 1))
			i.set_translation(Vector3(10 * randf(), 10 * randf(), 10 * randf()))
