int posY=490;//220, 445
int posYT=490;

void setup() {
  size(500, 500);
}

void draw() {
  background(200);
  posY= opciones1(5, posY, 100, 50);
  posY= opciones1(395, posY, 100, 50);
  posYT= returnTxt(30,posYT,420 );
  inicio(color(#FFFFFF), 30, 25);
}

void inicio(color filltxt,int Tamtxt, int Tamtxt2){

    fill(filltxt);
    textSize(Tamtxt);
    text("Blancanieves y los 7 enanitos", 15, 50);
    textSize(Tamtxt2);
    text("Aventura gráfica", 130, 100);
    noFill();
    
}

  
int opciones1(int posX, int _posY, int tamX, int tamY) {
  noFill();
    fill(0);
    if (mouseX>posX && mouseX<posX+tamX && mouseY>posY && mouseY<posY+tamY) {
     fill(#1F1B1B);
    }
    stroke(#FFFFFF);
    rect(posX, _posY, tamX, tamY);   
    _posY--;
    if(_posY<445){
      _posY=445;    
    }
    return _posY;
  }
  
int returnTxt(int posX,int _posYT, int posX2 ){
    textSize(10);
    fill(#FFFFFF);
    text("Huir al\nbosque", posX, _posYT); //475
    fill(#86FFAF);
    text("Enfrentar al\ncazador", posX2, _posYT); //470
     _posYT--;
    if(_posYT<467){
      _posYT=467;    
    }
    return _posYT;
  }
