import "package:flutter/material.dart";
import "package:glassmorphism/glassmorphism.dart";
import 'package:safer_sa/info_card.dart';
import 'package:safer_sa/search_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 3, 37, 140),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 20.0),
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                    bottomLeft: Radius.circular(50.0),
                  ),
                ),
                child: Stack(
                  children: [Positioned(top: 20, child: SearchBar())],
                )),
          ),
          Container(
            color: Colors.white,
            child: Container(
              padding: EdgeInsets.only(top: 15, bottom: 15, left: 8, right: 8),
              height: 200,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 3, 37, 140),
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(50.0))),
              child: GlassmorphicContainer(
                padding: EdgeInsets.only(left: 20),
                width: double.infinity,
                height: double.infinity,
                blur: 80,
                linearGradient: LinearGradient(
                  colors: [
                    Colors.yellow.withOpacity(0.5),
                    Colors.grey.shade50.withOpacity(0.1)
                  ],
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                ),
                borderRadius: 50,
                border: 0,
                borderGradient: LinearGradient(colors: [
                  Colors.white24.withOpacity(0.2),
                  Colors.white70.withOpacity(0.2)
                ]),
                child: InfoCard(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
