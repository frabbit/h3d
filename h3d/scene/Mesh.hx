package h3d.scene;

class Mesh extends Object {

	public var primitive : h3d.prim.Primitive;
	public var material : h3d.mat.MeshMaterial;
	
	public function new( prim, ?mat, ?parent ) {
		super(parent);
		this.primitive = prim;
		if( mat == null ) mat = new h3d.mat.MeshMaterial(null);
		this.material = mat;
	}
	
	override function draw( engine : h3d.Engine ) {
		material.setMatrixes(this.absPos, engine.curProjMatrix);
		engine.selectMaterial(material);
		primitive.render(engine);
	}
	
}