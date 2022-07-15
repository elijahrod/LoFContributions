// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:lab_on_fhir_flutter/Navigation.dart';
import 'package:lab_on_fhir_flutter/getHeart.dart';

class cardiacHomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    postCardiac();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.cyan),
        home: Scaffold(
          //style elements for entire screen
          body: Container(
            color: Colors.white, //style elements for the column elements
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text('Cardiac Management Suite', //title for page
                    textAlign: TextAlign.center, //style elements for title
                    style: TextStyle(fontSize: 42.0)),
                SizedBox(height: 25.0),
                Row(
                    //row to have buttons side by side
                    mainAxisAlignment: MainAxisAlignment
                        .spaceAround, //alignment atributes for row buttons
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('Pulse',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 25.0)),
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.refresh),
                              label: Text('72 bpm'),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.cyan,
                                  onPrimary: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  textStyle: TextStyle(fontSize: 20)),
                            ),
                          ]),
                      SizedBox(height: 50.0),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('Pulse Ox',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 25.0)),
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.refresh),
                              label: Text('98%'),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.cyan,
                                  onPrimary: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  textStyle: TextStyle(fontSize: 20)),
                            ),
                          ]),
                    ]),
                Row(
                    //row to have buttons side by side
                    mainAxisAlignment: MainAxisAlignment
                        .spaceAround, //alignment attributes for second row buttons
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('Systolic BP',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 25.0)),
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.refresh),
                              label: Text('120'),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.cyan,
                                  onPrimary: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  textStyle: TextStyle(fontSize: 20)),
                            ),
                          ]),
                      SizedBox(height: 50.0),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('Diastolic BP',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 25.0)),
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.refresh),
                              label: Text('80'),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.cyan,
                                  onPrimary: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  textStyle: TextStyle(fontSize: 20)),
                            ),
                          ]),
                    ]),
                Row(
                    //row to have buttons side by side
                    mainAxisAlignment: MainAxisAlignment
                        .spaceAround, //alignment attributes for second row buttons
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('Peak Flow Meter',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 25.0)),
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.refresh),
                              label: Text('550 L/min'),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.cyan,
                                  onPrimary: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  textStyle: TextStyle(fontSize: 20)),
                            ),
                          ]),
                      SizedBox(height: 50.0),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('History',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 25.0)),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            NavigationCardiacHistory()));
                              },
                              child: Text(
                                'View History',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.cyan,
                                  onPrimary: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  textStyle: TextStyle(fontSize: 20)),
                            )
                          ]),
                    ]),
              ],
            ),
          ),
        ));
  }
}
