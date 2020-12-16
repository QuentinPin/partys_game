import 'package:partys_game/model/Carte.dart';

class Carte52 {
  List<Carte> cartes;

  Carte52() {
    cartes = new List();
    initialisation();
    cartes.shuffle();
  }

  void initialisation() {
    CARD_COLOR.values.forEach((color) {
      for (int i = 2; i < 15; i++)
        cartes.add(new Carte(color, i));
    });
  }

  Carte getCard(){
    Carte cardToReturn = cartes.first;
    cartes.remove(cartes.first);
    return cardToReturn;
  }
}
