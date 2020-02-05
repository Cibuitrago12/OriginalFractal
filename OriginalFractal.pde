float rota, rotb = 0;
public void setup()
{
	size(1000, 1000, P3D);

}
public void draw()
{
	
	background(200);
	noFill();
	cube(500, 500, 500, rota, rotb);

}
public void mouseDragged()
{
	if(pmouseX < mouseX){
		rota+= 0.01;
	} else if( pmouseX > mouseX){
		rota -= 0.01;
	}
	if(pmouseY< mouseY){
		rotb+= 0.01;
	}
	if(pmouseY > mouseY){
		rotb-= 0.01;
	}
	
}
public void cube(float x, float y, float siz, float rotX, float rotY)
{
	if(siz <= 100){
		translate(500, 500, -1000); 
		rotateY(rotX);
		rotateX(rotY);
		box(siz);
	} else {
		cube(x, y-siz/5, siz/2, rotX, rotY);
		cube(x, y+siz/5, siz/2, rotX, rotY);
		cube(x - siz/5, y, siz/2, rotX, rotY);
		cube(x + siz/5, y, siz/2, rotX, rotY);
	}
}