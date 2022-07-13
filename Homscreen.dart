 // ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:lab_on_fhir_flutter/Navigation.dart';

class homeScreenPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return homeScreenPageState();
  }
}

class homeScreenPageState extends State<homeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.cyan),
        home: Scaffold(
          body: Container(
            color: Colors.white, //sets background color to white
            padding: EdgeInsets.all(16.0), // adds padding to all edges
            child: Column(
                mainAxisAlignment: MainAxisAlignment
                    .center, //general allignment for buttons in the center axis
                crossAxisAlignment: CrossAxisAlignment
                    .stretch, //general allignemnet for buttons across the screen
                children: <Widget>[
                  Text('Home', //title for homescreen
                      textAlign: TextAlign.center, //aligns title to the center
                      style: TextStyle(
                          fontSize: 64.0,
                          fontWeight: FontWeight.bold)), //text style elements
                  SizedBox(height: 50.0), //spacer between title and buttons
                  ElevatedButton(
                      onPressed: () {
                        //navigates to fitness home screen when pressed
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NavigationDiabetes()));
                      },
                      child: Text(
                        'Diabetes', //diabetes title
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32.0), //text style elements
                      ),
                      style: ElevatedButton.styleFrom(
                          //size of button elements
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          fixedSize: const Size(300, 100))),
                  SizedBox(height: 50.0), //spacer
                  ElevatedButton(
                      onPressed: () {
                        //navigates to fitness home screen when pressed
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NavigationFitness()));
                      },
                      child: Text(
                        'Fitness', //fitness title
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32.0), //fitness style elements
                      ),
                      style: ElevatedButton.styleFrom(
                          //size of button elements
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          fixedSize: const Size(300, 100))),
                  SizedBox(height: 50.0), //spacer
                  ElevatedButton(
                      onPressed: () {
                        //navigates to fitness home screen when pressed
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NavigationCardiac()));
                      },
                      child: Text(
                        'Cardiac ', //cardiac button title
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32.0), //cardiac title style elements
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          fixedSize: const Size(300, 100))), //button size stuff
                  SizedBox(height: 32.0), //spacer
                ]),
          ),
        ));
  }
}
