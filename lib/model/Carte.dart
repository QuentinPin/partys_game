class Carte {
  CARD_COLOR color;
  int number;

  Carte(CARD_COLOR color, int number) {
    this.color = color;
    this.number = number;
  }

  String getStringNumber() {
    switch (number) {
      case 2:
        return "2";
      case 3:
        return "3";
      case 4:
        return "4";
      case 5:
        return "5";
      case 6:
        return "6";
      case 7:
        return "7";
      case 8:
        return "8";
      case 9:
        return "9";
      case 10:
        return "10";
      case 11:
        return "V";
      case 12:
        return "D";
      case 13:
        return "R";
      case 14:
        return "AS";
    }
  }
  
  String getStringColorAssets(){
    switch (color) {
      case CARD_COLOR.color_coeur:
        return "assets/carte/coeur.png";
      case CARD_COLOR.color_carreau:
        return "assets/carte/carreau.png";
      case CARD_COLOR.color_pique:
        return "assets/carte/pique.png";
      case CARD_COLOR.color_treffle:
        return "assets/carte/treffle.png";
    }
  }

  COMPARE compareTo(Carte carte){
    if(this.number == carte.number)
      return COMPARE.EGALE;
    if(this.number > carte.number)
      return COMPARE.SUPERIEUR;
    if(this.number < carte.number)
      return COMPARE.INFERIEUR;
  }
}

enum CARD_NUMBER {
  number_2,
  number_3,
  number_4,
  number_5,
  number_6,
  number_7,
  number_8,
  number_9,
  number_10,
  number_valet,
  number_dame,
  number_roi,
  number_as,
}

enum CARD_COLOR {
  color_pique,
  color_treffle,
  color_carreau,
  color_coeur,
}

enum COMPARE {
  SUPERIEUR,
  INFERIEUR,
  EGALE,
}