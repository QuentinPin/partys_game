import 'package:flutter/material.dart';
import 'package:partys_game/model/Carte52.dart';
import 'package:partys_game/model/Carte.dart';

class PurplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(body: UpdateCard()),
    );
  }
}

class UpdateCard extends StatefulWidget {
  UpdateScreenState createState() => UpdateScreenState();
}

class UpdateScreenState extends State {
  Carte52 carte52 = new Carte52();
  int nbCarteDansPile = 0;
  bool error = false;
  Carte carte;

  changeCard(TYPE_CHOICE type) {
    setState(() {
      Carte newCarte = carte52.getCard();
      nbCarteDansPile = 52 - carte52.cartes.length;
      if (error == false) {
        switch (type) {
          case TYPE_CHOICE.UP:
            if (!(newCarte.compareTo(carte) == COMPARE.SUPERIEUR)) error = true;
            break;
          case TYPE_CHOICE.DOWN:
            if (!(newCarte.compareTo(carte) == COMPARE.INFERIEUR)) error = true;
            break;
          case TYPE_CHOICE.RED:
            if (!(newCarte.color == CARD_COLOR.color_carreau ||
                newCarte.color == CARD_COLOR.color_coeur)) error = true;
            break;
          case TYPE_CHOICE.BLACK:
            if (!(newCarte.color == CARD_COLOR.color_pique ||
                newCarte.color == CARD_COLOR.color_treffle)) error = true;
            break;
        }
        carte = newCarte;
      } else {
        error = false;
        carte52 = new Carte52();
        nbCarteDansPile = 0;
        carte = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: (error) ? Colors.red : Colors.blue,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Purple",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenSize.height * 0.07,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: screenSize.height * 0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  (carte == null) ? "" : carte.getStringNumber(),
                  // On n'affiche rien quand on rentre dans le jeu
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenSize.height * 0.1,
                  ),
                ),
                Opacity(
                  opacity: (carte == null) ? 0 : 1,
                  child: Image(
                    // On n'affiche rien quand on rentre dans le jeux
                    image: AssetImage((carte == null)
                        ? "assets/carte/coeur.png"
                        : carte.getStringColorAssets()),
                    height: screenSize.height * 0.1,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: screenSize.height * 0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  nbCarteDansPile.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenSize.height * 0.04,
                  ),
                ),
                Image(
                  image: AssetImage('assets/carte/paquet.png'),
                  height: screenSize.height * 0.05,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                    right: screenSize.height * 0.01,
                    top: screenSize.height * 0.1,
                    bottom: screenSize.height * 0.05),
                child: SizedBox(
                  width: screenSize.width * 0.4,
                  height: screenSize.width * 0.3,
                  child: RaisedButton(
                    onPressed: () {
                      print("Moin");
                      changeCard(TYPE_CHOICE.DOWN);
                    },
                    color: Colors.blue,
                    child: Text(
                      "-",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: screenSize.height * 0.1),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(width: 2, color: Colors.white)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: screenSize.height * 0.01,
                    top: screenSize.height * 0.1,
                    bottom: screenSize.height * 0.05),
                child: SizedBox(
                  width: screenSize.width * 0.4,
                  height: screenSize.width * 0.3,
                  child: RaisedButton(
                    onPressed: () {
                      print("Plus");
                      changeCard(TYPE_CHOICE.UP);
                    },
                    color: Colors.blue,
                    child: Text(
                      "+",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: screenSize.height * 0.1),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(width: 2, color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: screenSize.height * 0.01),
                child: SizedBox(
                  width: screenSize.width * 0.4,
                  height: screenSize.width * 0.3,
                  child: RaisedButton(
                    onPressed: () {
                      print("Rouge");
                      changeCard(TYPE_CHOICE.RED);
                    },
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: screenSize.height * 0.01),
                child: SizedBox(
                  width: screenSize.width * 0.4,
                  height: screenSize.width * 0.3,
                  child: RaisedButton(
                    onPressed: () {
                      print("Noire");
                      changeCard(TYPE_CHOICE.BLACK);
                    },
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

enum TYPE_CHOICE {
  UP,
  DOWN,
  RED,
  BLACK,
}
