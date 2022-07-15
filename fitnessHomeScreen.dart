// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:lab_on_fhir_flutter/Navigation.dart';
import 'package:lab_on_fhir_flutter/getFitness.dart';

class fitnessHomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    postFitness();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.cyan), //sets theme color for entire screen
        home: Scaffold(
          body: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Fitness Management Suite',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 42.0)),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Body Mass Index',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 25.0)),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.refresh),
                        label: Text('24'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.cyan,
                            onPrimary: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            textStyle: TextStyle(fontSize: 30)),
                      ),
                    ]),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Weight',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 25.0)),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.refresh),
                        label: Text('122 lbs'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.cyan,
                            onPrimary: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            textStyle: TextStyle(fontSize: 30)),
                      ),
                    ]),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NavigationFitnessHistory()));
                    },
                    child: Text(
                      'View History',
                      style: TextStyle(color: Colors.white, fontSize: 28.0),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        fixedSize: const Size(300, 100))),
              ],
            ),
          ),
        ));
  }
}
