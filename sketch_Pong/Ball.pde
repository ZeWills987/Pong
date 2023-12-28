//////////////////// Constantes - Ball //////////////////////

final int BALL_WIDTH = 10;      /** Diamètre de la balle */
final int BALL_SPEED = 3;     /** vitesse de déplacement de la balle */
final color BALL_COLOR = BLANC; /** couleur de la balle */

//////////////////////////////////////////////////////

Ball ball;

/**
 * Classe ball qui a pour position x et y, et pour mouvement mvt_x et mv.
 * @author : William Tchang.
 **/
class Ball {

  int x;       /** déclaration de l'abscisse du centre de la balle */
  int y;       /** déclaration de l'ordonnée du centre de la balle */
  int mvt_x;   /** déclaration de l' mouvement sur l'axe des abscisses */
  int mvt_y;   /** mouvement sur l'axe des ordonnées */
  
  /**
   * Initialisation d'une balle : tous les attributs prennent des valeurs par défaut.
   * @author : William Tchang. 
   **/
  Ball() {
    x = width/2;         /** abscisse du centre de la balle */
    y = height/2;        /** ordonnée du centre de la balle */
    mvt_x = BALL_SPEED;  /** mouvement sur l'axe des abscisses */
    mvt_y = BALL_SPEED;  /** mouvement sur l'axe des ordonnées */
  }
}

/**
 * Affichage de la balle.
 * @parm b      la ball   
 * @author : William Tchang. 
 **/
void showBall(Ball b)
{
  image(ballImage,b.x - BALL_WIDTH/2,b.y - BALL_WIDTH/2 ); 
}

/**
 * Déplacement de la balle en fonction des collisions entre la ball et l'interface d'affichage du jeux.
 * @opmaram b ball 
 * @author : William Tchang. 
 **/
void moveBall(Ball b)
{
  // Mouvement Horizontal
  b.x += b.mvt_x;
  if (collisionHorizontale(b))
  {
    b.x -= b.mvt_x; // mouvement annulé
    b.mvt_x *= -1; // changement de direction
  }

  // Mouvement Vertical
  b.y += b.mvt_y;
  if (collisionVerticale(b))
  {
    b.y -= b.mvt_y; // mouvement annulé
    b.mvt_y *= -1; // changement de direction
  }
}

/**
 * Retourne vrai si la balle touche le bord de linterface graphique ou si la balle touche le bord d'une rackert.
 * @param  b ball :  la balle
 * @return True si il y a collision entre la balle et le bord de l'interfa graphique.
 * @author William Tchang.
 **/
boolean collisionHorizontale(Ball b)
{
  //Collision Rackets et Ball Verticale
  return collision(b.x - BALL_WIDTH/2, b.y - BALL_WIDTH/2, BALL_WIDTH, BALL_WIDTH, racket_Bleu.x, racket_Bleu.y, racket_Bleu.l, racket_Bleu.h) || 
    collision(b.x - BALL_WIDTH/2, b.y - BALL_WIDTH/2, BALL_WIDTH, BALL_WIDTH, racket_Vert.x, racket_Vert.y, racket_Vert.l, racket_Vert.h);
}

/**
 * Retourne vrai si la balle touche le bord de linterface graphique ou si la balle touche le bord d'une rackert
 *  @param  b ball :  la balle
 *  @return True si il y a collision entre la balle et le bord de l'interfa graphique
 *  @author William Tchang
 **/
boolean collisionVerticale(Ball b)
{
  return (b.y + BALL_WIDTH/2 > height) || (b.y - BALL_WIDTH/2< 0) || 
    //Collision Rackets et Ball Verticale
    collision(b.x - BALL_WIDTH/2, b.y - BALL_WIDTH/2, BALL_WIDTH, BALL_WIDTH, racket_Bleu.x, racket_Bleu.y, racket_Bleu.l, racket_Bleu.h)||
    collision(b.x - BALL_WIDTH/2, b.y - BALL_WIDTH/2, BALL_WIDTH, BALL_WIDTH, racket_Vert.x, racket_Vert.y, racket_Vert.l, racket_Vert.h);
}
