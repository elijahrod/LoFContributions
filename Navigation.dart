// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:lab_on_fhir_flutter/cardiacHistory.dart';
import 'package:lab_on_fhir_flutter/cardiacHomeScreen.dart';
import 'package:lab_on_fhir_flutter/Homescreen.dart';
import 'package:lab_on_fhir_flutter/fitnessHistory.dart';
import 'package:lab_on_fhir_flutter/fitnessHomeScreen.dart';
import 'package:lab_on_fhir_flutter/diabetesHomeScreen.dart';

class Navigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigationScreenPageState();
  }
}

class NavigationScreenPageState extends State<Navigation> {
  int currentIndex = 0;
  final screens = [
    homeScreenPage(),
    diabetesHomeScreen(),
    fitnessHomeScreen(),
    cardiacHomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.cyan),
        home: Scaffold(
            appBar: AppBar(
                title: Image.asset('assets/labonfhir-appbar.png',
                    fit: BoxFit.contain, height: 40),
                actions: [
                  IconButton(
                    //adds the icon button for the account in the top right: Currently not functional
                    icon: Icon(Icons.person),
                    onPressed: () => {},
                  )
                ]),
            body: screens[currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              //bottom navigation bar construction
              backgroundColor: Colors.cyan, //sets background of navbar
              iconSize: 40, //sets icon size
              type:
                  BottomNavigationBarType.fixed, //prevents  animation of icons
              selectedItemColor: Colors.white,
              currentIndex: currentIndex,
              onTap: (index) => setState(() => currentIndex = index),
              items: [
                BottomNavigationBarItem(
                  // makes home icon item
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.water_drop),
                  label: 'Diabetes', //makes diabetes icon item
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.fitness_center),
                  label: 'Fitness', //makes fitness icon item
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Cardiac', //makes cardiac icon item
                )
              ],
            )));
  }
}

class NavigationDiabetes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigationScreenPageStateDiabetes();
  }
}

class NavigationScreenPageStateDiabetes extends State<NavigationDiabetes> {
  int currentIndex = 1;
  final screens = [
    homeScreenPage(),
    diabetesHomeScreen(),
    fitnessHomeScreen(),
    cardiacHomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.cyan),
        home: Scaffold(
            appBar: AppBar(
                title: Image.asset('assets/labonfhir-appbar.png',
                    fit: BoxFit.contain, height: 40),
                actions: [
                  IconButton(
                    //adds the icon button for the account in the top right: Currently not functional
                    icon: Icon(Icons.person),
                    onPressed: () => {},
                  )
                ]),
            body: screens[currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              //bottom navigation bar construction
              backgroundColor: Colors.cyan, //sets background of navbar
              iconSize: 40, //sets icon size
              type: BottomNavigationBarType.fixed, //prevents animation of icons
              selectedItemColor: Colors.white,
              currentIndex: currentIndex,
              onTap: (index) => setState(() => currentIndex = index),
              items: [
                BottomNavigationBarItem(
                  // makes home icon item
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.water_drop),
                  label: 'Diabetes', //makes diabetes icon item
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.fitness_center),
                  label: 'Fitness', //makes fitness icon item
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Cardiac', //makes cardiac icon item
                )
              ],
            )));
  }
}

class NavigationFitness extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigationScreenPageStateFitness();
  }
}

class NavigationScreenPageStateFitness extends State<NavigationFitness> {
  int currentIndex = 2;
  final screens = [
    homeScreenPage(),
    diabetesHomeScreen(),
    fitnessHomeScreen(),
    cardiacHomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.cyan),
        home: Scaffold(
            appBar: AppBar(
                title: Image.asset('assets/labonfhir-appbar.png',
                    fit: BoxFit.contain, height: 40),
                actions: [
                  IconButton(
                    //adds the icon button for the account in the top right: Currently not functional
                    icon: Icon(Icons.person),
                    onPressed: () => {},
                  )
                ]),
            body: screens[currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              //bottom navigation bar construction
              backgroundColor: Colors.cyan, //sets background of navbar
              iconSize: 40, //sets icon size
              type:
                  BottomNavigationBarType.fixed, //prevents  animation of icons
              selectedItemColor: Colors.white,
              currentIndex: currentIndex,
              onTap: (index) => setState(() => currentIndex = index),
              items: [
                BottomNavigationBarItem(
                  // makes home icon item
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.water_drop),
                  label: 'Diabetes', //makes diabetes icon item
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.fitness_center),
                  label: 'Fitness', //makes fitness icon item
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Cardiac', //makes cardiac icon item
                )
              ],
            )));
  }
}

class NavigationFitnessHistory extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigationScreenPageStateFitnessHistory();
  }
}

class NavigationScreenPageStateFitnessHistory
    extends State<NavigationFitnessHistory> {
  int currentIndex = 2;
  final screens = [
    homeScreenPage(),
    diabetesHomeScreen(),
    fitnessHistory(),
    cardiacHomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.cyan),
        home: Scaffold(
            appBar: AppBar(
                title: Image.asset('assets/labonfhir-appbar.png',
                    fit: BoxFit.contain, height: 40),
                actions: [
                  IconButton(
                    //adds the icon button for the account in the top right: Currently not functional
                    icon: Icon(Icons.person),
                    onPressed: () => {},
                  )
                ]),
            body: screens[currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              //bottom navigation bar construction
              backgroundColor: Colors.cyan, //sets background of navbar
              iconSize: 40, //sets icon size
              type:
                  BottomNavigationBarType.fixed, //prevents  animation of icons
              selectedItemColor: Colors.white,
              currentIndex: currentIndex,
              onTap: (index) => setState(() => currentIndex = index),
              items: [
                BottomNavigationBarItem(
                  // makes home icon item
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.water_drop),
                  label: 'Diabetes', //makes diabetes icon item
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.fitness_center),
                  label: 'Fitness', //makes fitness icon item
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Cardiac', //makes cardiac icon item
                )
              ],
            )));
  }
}

class NavigationCardiac extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigationScreenPageStateCardiac();
  }
}

class NavigationScreenPageStateCardiac extends State<NavigationCardiac> {
  int currentIndex = 3;
  final screens = [
    homeScreenPage(),
    diabetesHomeScreen(),
    fitnessHomeScreen(),
    cardiacHomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.cyan),
        home: Scaffold(
            appBar: AppBar(
                title: Image.asset('assets/labonfhir-appbar.png',
                    fit: BoxFit.contain, height: 40),
                actions: [
                  IconButton(
                    //adds the icon button for the account in the top right: Currently not functional
                    icon: Icon(Icons.person),
                    onPressed: () => {},
                  )
                ]),
            body: screens[currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              //bottom navigation bar construction
              backgroundColor: Colors.cyan, //sets background of navbar
              iconSize: 40, //sets icon size
              type:
                  BottomNavigationBarType.fixed, //prevents  animation of icons
              selectedItemColor: Colors.white,
              currentIndex: currentIndex,
              onTap: (index) => setState(() => currentIndex = index),
              items: [
                BottomNavigationBarItem(
                  // makes home icon item
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.water_drop),
                  label: 'Diabetes', //makes diabetes icon item
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.fitness_center),
                  label: 'Fitness', //makes fitness icon item
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Cardiac', //makes cardiac icon item
                )
              ],
            )));
  }
}

class NavigationCardiacHistory extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigationScreenPageStateCardiacHistory();
  }
}

class NavigationScreenPageStateCardiacHistory
    extends State<NavigationCardiacHistory> {
  int currentIndex = 3;
  final screens = [
    homeScreenPage(),
    diabetesHomeScreen(),
    fitnessHomeScreen(),
    cardiacHistory(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.cyan),
        home: Scaffold(
            appBar: AppBar(
                title: Image.asset('assets/labonfhir-appbar.png',
                    fit: BoxFit.contain, height: 40),
                actions: [
                  IconButton(
                    //adds the icon button for the account in the top right: Currently not functional
                    icon: Icon(Icons.person),
                    onPressed: () => {},
                  )
                ]),
            body: screens[currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              //bottom navigation bar construction
              backgroundColor: Colors.cyan, //sets background of navbar
              iconSize: 40, //sets icon size
              type:
                  BottomNavigationBarType.fixed, //prevents  animation of icons
              selectedItemColor: Colors.white,
              currentIndex: currentIndex,
              onTap: (index) => setState(() => currentIndex = index),
              items: [
                BottomNavigationBarItem(
                  // makes home icon item
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.water_drop),
                  label: 'Diabetes', //makes diabetes icon item
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.fitness_center),
                  label: 'Fitness', //makes fitness icon item
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Cardiac', //makes cardiac icon item
                )
              ],
            )));
  }
}
