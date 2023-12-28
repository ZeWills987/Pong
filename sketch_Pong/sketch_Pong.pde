////////////////// Constantes - Couleurs ////////////////////////////////// //<>// //<>//

final color NOIR = color(0);
final color BLANC = color(255);
final color ROUGE = color(255, 0, 0);
final color VERT = color(0, 255, 0);
final color BLEU = color(0, 0, 255);

////////////////////////Etat du jeu//////////////////////////////////////

boolean enPause = true;                                                      
boolean inGame = false;  
boolean inSelectMode = false;
Racket racket_Bleu;                                                           
Racket racket_Vert;                                                           

//////////////////////////Main//////////////////////////////////////////

/**
 * Initialisation Processing.
 * @author : William Tchang
 **/
void setup()
{
  size(640, 400);                                       
  ball = new Ball(); 
  racket_Bleu = new Racket(BORDER_SPACE, BLEU);            
  racket_Vert = new Racket(width - BORDER_SPACE_V, VERT); 
  Image();
}

/**
 * Rafraichissement Processing.
 * @author : William Tchang 
 **/
void draw()
{  
  if (!inGame) {
    menu ();
  }
  if (inGame) {
    jeux();
    if (!enPause) { 
      showPause();
    }
  }
}

/**
 * Fonction de déplacement des rackets quand les touches du claviers sont presser. 
 * @author : William Tchang.
 **/
void keyPressed() {
  switch (key)
  {
  case 'z' :                              
    racket_Bleu.mvtY = - RACKET_SPEED ; 
    break;
  case 's' :                          
    racket_Bleu.mvtY = RACKET_SPEED; 
    break ;
  case 'i' :                           
    racket_Vert.mvtY = - RACKET_SPEED ; 
    break;
  case 'k' :                             
    racket_Vert.mvtY = RACKET_SPEED; 
    break ;
  case ' ' :                            
    if (!enPause) {
      noLoop();
      enPause = true;
    } else {
      loop();
      enPause = false;
    }
    break ;
  }
}

/**
 * Fonction de déplacement des rackets quand les touches du claviers ne sont pas presser. 
 * @author : William Tchang. 
 **/
void keyReleased() {
  switch (key)
  {
  case 'z' :                
    racket_Bleu.mvtY = 0  ;
    break;
  case 's' :
    racket_Bleu.mvtY = 0 ;
    break ;
  case 'i' :                
    racket_Vert.mvtY = 0  ;
    break;
  case 'k' :             
    racket_Vert.mvtY = 0 ;
    break ;
  }
}
