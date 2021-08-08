import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mall of Africa",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  Row(
                    children: [
                      Text(
                        "6/10",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                      Icon(
                        Icons.my_location_rounded,
                        color: Colors.greenAccent,
                      )
                    ],
                  ),
                ],
              ),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur dgsdf elit, sed fo eiusmod tempor inciduntut ut wingardium leviosa expecto patronum."),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.blue, Colors.purpleAccent]),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: (TextButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.remove_red_eye,
                            color: Colors.white,
                          ),
                          Text(
                            "DIRECTIONS",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      onPressed: () {},
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.blue, Colors.purpleAccent]),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: (TextButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.remove_red_eye,
                            color: Colors.white,
                          ),
                          Text(
                            "REPORT INCIDENT",
                            style: GoogleFonts.nunito(
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
