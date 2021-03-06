import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.indigo[900],
                  Colors.indigo[800],
                  Colors.indigo[700],
                  Colors.indigo[600],
                  Colors.indigo[500],
                  Colors.indigo[400],
                ]),
              ),
              child: Padding(
                  padding: EdgeInsets.fromLTRB(60, 70, 0, 0),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(0, 180, 0, 0),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Center(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60)),
                        color: Colors.white,
                      ),
                      height: 520,
                      width: double.infinity,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 60,
                          ),
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Color(0xFFAAB5C3))),
                                contentPadding: EdgeInsets.all(12),
                                labelText: "User Name",
                                hintText: "user name",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(12, 6, 12, 12),
                            child: TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Color(0xFFAAB5C3))),
                                contentPadding: EdgeInsets.all(12),
                                labelText: "User Name",
                                hintText: "user name",
                              ),
                            ),
                          ),
                        ],
                      ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
