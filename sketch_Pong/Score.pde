/** Police du texte */ //<>//
PFont font;

/**
 * Affichage de score.
 * @author : William Tchang.
 **/
void showScore() {
  fill(255);
  textSize(25);
  textAlign(CENTER);
  font = loadFont("Kinnari-48.vlw");
  textFont(font, 25);
  text("Score", width/2, height/16);
  text(racket_Bleu.pts, width/3 + BORDER_SPACE_V, height/8);
  text(racket_Vert.pts, width/3*2 -  BORDER_SPACE_V, height/8);
}

/** 
 * Repositionnement de la ball au centre de notre jeux et affichage du score des joueurs.
 * @param b  ball 
 * @author : William Tchang
 **/
void checkPoint(Ball b) {
  if (b.x + BALL_WIDTH/2 >= width) {
    b.x = width/2;
    b.y = height/2;
    racket_Bleu.pts += 1;
  } else {
    //Joueur (2) + 1 points
    if (b.x - BALL_WIDTH/2 <= 0) {
      b.x = width/2;
      b.y = height/2;
      racket_Vert.pts += 1;
    }
  }
}
