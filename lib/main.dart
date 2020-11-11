import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Party\'s game',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: screenSize.height * 0.01),
                child: Text(
                  "Party's game",
                  style: TextStyle(
                      color: Colors.white, fontSize: screenSize.height * 0.07),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: screenSize.height * 0.05),
                child: Text(
                  "by La Fine Equipe",
                  style: TextStyle(
                      color: Colors.white, fontSize: screenSize.height * 0.02),
                ),
              ),
              SizedBox(
                  width: screenSize.width * 0.65,
                  child: RaisedButton(
                    onPressed: () {
                      // TODO : redirection vers la page du fuck the queen
                    },
                    color: Colors.amber,
                    child: Text("Fuck the queen"),
                  )),
              SizedBox(
                width: screenSize.width * 0.65,
                child: RaisedButton(
                  onPressed: () {
                    // TODO : redirection vers la page du fuck the queen
                  },
                  color: Colors.amber,
                  child: Text("Purple"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
