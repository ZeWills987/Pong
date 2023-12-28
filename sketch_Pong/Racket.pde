////////////////////////// Constante Racket ////////////////////////////////////
final int RACKET_WIDTH  = 10;   /** largeur d'une raquette */
final int RACKET_HEIGHT = 40;   /** hauteur d'une raquette */
final int RACKET_SPEED  = 7;    /** vitesse de déplacement vertical d'une raquette */
final int BORDER_SPACE = 20;    /** distance du bord de la fenêtre gauche pour la raquette */
final int BORDER_SPACE_V = 30;  /** distance du bord de la fenêtre droite pour la raquette */

/////////////////////////////////////////////////////////////////////////////////

/**
 * Classe de notre racket de positions x et y, de largueur l, de hauter, de couleur col,   
 **/
class Racket {
  int x;                   /** Abscice du point en haut à gauche de la racket */
  int y;                   /** Ordonnée du point en haut à gauche de la racket */
  int l = RACKET_WIDTH;    /** Largeur de la racket */
  int h = RACKET_HEIGHT;   /** Hauteur de la racket */
  color col;               /**Couleur de la racket **/
  int mvtY = 0;            /** Mouvement de la racket */
  int pts;                 /** Points du joueur */
  PImage j;                /** Image de la racket */

  /** 
   * Initialisation d'une racket : tous les attributs prennent des valeurs par défaut. 
   **/
  Racket(int xr, color cr) {

    x = xr ;        /** Abscice du point en haut à gauche d'une racket */
    y = height/2;   /** Ordonnée du point en haut à gauche d'une racket */
    col = cr;       /** Couleur d'une racket */
    pts = 0;        /** Points d'un joueur */
  }
}
/**
 * Affichage de la racket
 *@param r    ssune Racket
 **/
void showRacket(Racket r)
{
  image(j1, r.x, r.y);
}

/**
 * Déplacement des rackets
 **/
void moveRacket(Racket r) {

  r.y += r.mvtY;
  if (collisionRacketH(r)) {
    r.y -= r.mvtY;
  }
}
/**
 * Retourne vrai si la racket touche le bord de l'interface graphique.
 *
 **/
boolean collisionRacketH(Racket r) {
  return (r.y <= 0) || (r.y >= height - RACKET_HEIGHT);
}
