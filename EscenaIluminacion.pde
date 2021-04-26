CameraClass cam;              //Variable para la cámara
PShape Chair, table, lamp;    //Modelos Pshape para la silla, mesa y lámpara.
 
void setup() {
  //Declaramos el tamaño de ventana, cargamos los objetos en las variables declaradas anteriormente
  //y los colocamos adecuadamente en la escena.
  size(800, 600, P3D);
  cam = new CameraClass();
  Chair = loadShape("modern chair 11 obj.obj");
  table = loadShape("desk.obj");
  lamp = loadShape("lamp.obj");
  table.scale(0.05);
  lamp.scale(7);
  Chair.rotateX(PI);
  Chair.rotateY(PI/2);
  table.rotateX(PI);
  table.rotateY(PI/2);
  lamp.rotateX(PI);
  lamp.rotateY(-(PI/2));
}
 
void draw() {
  //Gestionamos la iluminación y la llamada al método run() para el movimiento de la cámara.
  perspective(PI/3.0, (float) width/height, 1, 1000000);
  background(0);
  
  ambientLight(51, 102, 126);
  directionalLight(51, 102, 126, 0, 0, -1);
  lightSpecular(255, 255, 255);
  spotLight(102, 153, 204, mouseX, mouseY, 600, 0, 0, -1, PI/2, 800); 
  cam.run();
 
  stroke(255);
  fill(255, 21, 21);
 
  pushMatrix();
  translate(width/2, height/2, 0);
  shape(Chair,50,20, 50,40);
  shape(table,20,20);
  shape(lamp,20,-28);
  popMatrix();
}

//De aquí en adelante es el código para el manejo de la cámara.
void mouseDragged() {
  cam.mouseDragged();
}

void mouseWheel(MouseEvent event) {  // mouse wheel for zoom
  float zoom = event.getCount();  
  cam.camRadius = constrain(cam.camRadius+zoom, 10, 300);
}
 

public class CameraClass {
  PVector camPos, camLookAt, camUp; 
  PVector camPosStart, camLookAtStart, camUpStart; 
  float theta, phi;
  float camRadius = 300;
  float mouseNowX, mouseNowY;
 
 
  CameraClass() {
    camPos = new PVector(width/2.0, height/2.0, 300);
    camLookAt = new PVector(width/2.0, height/2.0, 0);
    camUp = new PVector(0, 1, 0);
    camPosStart = camPos.copy();  
    camLookAtStart = camLookAt.copy();
    camUpStart = camUp.copy();
  }
 
  void mouseDragged() {
    if (mouseButton == LEFT) {
      mouseNowX += mouseX-pmouseX;
      mouseNowY += mouseY-pmouseY;
    }
  }
 
  void run() {
    cam.theta = map(mouseNowX, 0, width, 0, 360);
    cam.phi = map(mouseNowY, 0, height, 40, 240);
    camPos.x = (1.0* camRadius) * cos (radians(theta)) +camLookAt.x; 
    camPos.z = (1.0* camRadius) * sin (radians(theta)) +camLookAt.z;  
    camPos.y = (1.0* camRadius) * cos (radians(phi)) +camLookAt.y;
    camera(camPos.x, camPos.y, camPos.z, 
      camLookAt.x, camLookAt.y, camLookAt.z, 
      camUp.x, camUp.y, camUp.z);
  }
} 
