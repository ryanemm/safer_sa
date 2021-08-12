import "package:flutter/material.dart";
//import 'package:google_fonts/google_fonts.dart';

class InfoCard extends StatefulWidget {
  @override
  _InfoCardState createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mall of Africa",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Row(
                    children: [
                      Text(
                        "6/10",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Icon(
                        Icons.location_on_rounded,
                        color: Colors.purpleAccent,
                      )
                    ],
                  ),
                ],
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur dgsdf elit, sed fo eiusmod tempor inciduntut ut wingardium leviosa expecto patronum.",
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(left: 6, right: 6, top: 2, bottom: 2),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.blueAccent, Colors.purpleAccent]),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: (TextButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.directions,
                            color: Colors.white,
                          ),
                          Text(
                            "DIRECTIONS",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      onPressed: () {},
                    )),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 6, right: 6, top: 2, bottom: 2),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.blueAccent, Colors.purpleAccent]),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: (TextButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.report_problem, color: Colors.white),
                          Text(
                            "LOG INCIDENT",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      onPressed: () {},
                    )),
                  ),
                ],
              )
            ]));
  }
}
