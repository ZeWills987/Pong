////////////////////////// Constante - Bouton ///////////////////////////////////////////

final int WBOUTTON = 80; /** Largueur boutton */
final int HBOUTTON = 40; /** Hauteur boutton */

////////////////////////////////// Déclaration ///////////////////////////////////////////

PImage background, jeux, ballImage, j1, j2, menu, playr, playj, quitr, quitj, pauser, pausej, selectMode;

/////////////////////////////////////////////////////////////////////////////////////////

/** 
 * Chargement des images du jeux et les mets à la bonne taille. 
 * @author : William Tchang 
 **/
void Image() {

  jeux = loadImage("Backgroud.jpg");

  ballImage = loadImage("ball.png"); 
  ballImage.resize(10, 10);

  j1 = loadImage("player01.png"); 
  j1.resize(10, 40);

  j2 = loadImage("player02.png"); 
  j2.resize(10, 40);

  menu = loadImage("menu.jpg"); 
  menu.resize(640, 400);

  playr = loadImage("playr.png"); 
  playr.resize(WBOUTTON, HBOUTTON);
  playj = loadImage("playj.png"); 
  playj.resize(WBOUTTON, HBOUTTON);
  quitr = loadImage("quitr.png"); 
  quitr.resize(WBOUTTON, HBOUTTON);
  quitj = loadImage("quitj.png"); 
  quitj.resize(WBOUTTON, HBOUTTON);

  pauser = loadImage("pauser.png");
  pauser.resize(WBOUTTON, HBOUTTON);
  pausej = loadImage("pausej.png");
  pausej.resize(WBOUTTON, HBOUTTON);

  selectMode = loadImage("selectMode.png");
  selectMode.resize(640, 400);
}
/**
 * Fonction de l'affichage du bouton Play de couler rouge à une position (x,y).
 * @author : William Tchang 
 **/

void showRedP() {
  image(playr, X_PLAY, Y_PLAY );
}

/**
 * Fonction de l'affichage du bouton Quit de couleur rougeà une position (x,y).
 * @author : William Tchang 
 **/
void showRedQ() {
  image(quitr, X_QUIT, Y_PLAY);
}

/** 
 * Fonction de l'affichage du bouton Play de couleur jaune à une position (x,y).
 * @author : William Tchang 
 **/
void showYellowP() {
  image(playj, X_PLAY, Y_PLAY);
}

/* 
 * Fonction de l'affichage du bouton Quit de couler jaune à une position (x,y).
 * @author : William Tchang 
 **/
void showYellowQ() {
  image(quitj, X_QUIT, Y_QUIT);
} 
