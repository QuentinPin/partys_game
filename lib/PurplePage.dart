import 'package:flutter/material.dart';

class PurplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        backgroundColor: Colors.blue,
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
            SizedBox(
              width: screenSize.width * 0.65,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PurplePage()),
                  );
                },
                color: Colors.red,

              ),
            ),SizedBox(
              width: screenSize.width * 0.65,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PurplePage()),
                  );
                },
                color: Colors.black,

              ),
            ),

          ],
        ),
      ),
    );
  }
}
