//////////////////// Constantes - Positions bouton //////////////////////

final int X_PLAY = width*2+12;
final int Y_PLAY = height+HBOUTTON+HBOUTTON/2;
final int X_QUIT = X_PLAY+WBOUTTON*2;
final int Y_QUIT = Y_PLAY ;

/**
 * Fonction menu qui se charge d'afficher notre menu avec un fond d'écran menu et une fontion affichant nos bouton.
 * @author : William Tchang 
 **/
void menu () {
  background(menu);
  showBouton();
}

/**
 * Menu qui se charge d'afficher notre partie jeux.
 * @author : William Tchang 
 **/
void jeux() {
  background(jeux);
  showBall(ball); 
  moveBall(ball);
  showRacket(racket_Bleu);
  showRacket(racket_Vert);
  moveRacket(racket_Bleu);
  moveRacket(racket_Vert);
  showScore();
  checkPoint(ball);
}
/**
 * Menu qui se charge d'afficher notre menu pause.
 * @author : William Tchang. 
 **/
void showPause() {
  background(jeux);
  showBouton();
}

/**
 * Affichage de nos boutons. 
 * @author : William Tchang.
 **/
void showBouton() {
  if (boutonPlay()) {
    showYellowP();
  } else {
    showRedP();
  }
  if (boutonQuit()) {
    showYellowQ();
  } else {
    showRedQ();
  }
}

/** 
 * Execution ou fermeture du jeux.
 * @author : Willliam Tchang.
 */
void mouseClicked() {

  if (boutonPlay()) {
    inGame = true;
    enPause = true;
  }
  if (boutonQuit()) {
    exit();
  }
}

/**
 * Retourne vrai si le curseur de la souris est dans le bouton Play.
 * @return True si le curseur de la souris est dans le bouton Play.
 * @author William Tchang.
 **/
boolean boutonPlay() {
  return (mouseX >= X_PLAY && mouseX <= X_PLAY+WBOUTTON && 
    mouseY >= Y_PLAY && mouseY <= Y_PLAY+HBOUTTON);
}

/**
 * Retourne vrai si le curseur de la souris est dans le bouton Quit.
 *  @return True si le curseur de la souris est dans le bouton Quit.
 *  @author William Tchang.
 **/
boolean boutonQuit() {
  return (mouseX >= X_QUIT && mouseX <= X_QUIT+WBOUTTON && 
    mouseY >= Y_QUIT && mouseY <= Y_QUIT+HBOUTTON);
}
