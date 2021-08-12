import "package:flutter/material.dart";
import 'package:safer_sa/info_card.dart';
import 'package:safer_sa/search_bar.dart';
import 'package:location/location.dart';
//import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart' as latLng;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final String token = "pk.eyJ1Ijoicnluby1lbW0iLCJhIjoiY2tzNXc4bHRuMmszNDJxbXI4cmNjbXNrayJ9.q_qEXICxb2AimFTzfyZzeg";
    final String style = "mapbox://styles/ryno-emm/cks5wwzab4rq818kczm3i6dp9";
    return Scaffold(
        body: Container(
      color: Color.fromARGB(255, 3, 37, 140),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 20.0, left: 30.0, right: 30.0, bottom: 10.0),
          ),
          Expanded(
            child: Container(
                //padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                    bottomLeft: Radius.circular(50.0),
                  ),
                ),
                child:
                 FlutterMap(
    options: MapOptions(
      center: latLng.LatLng(51.5, -0.09),
      zoom: 13.0,
    ),
    layers: [
      TileLayerOptions(
        urlTemplate: "https://api.mapbox.com/styles/v1/ryno-emm/cks5wwzab4rq818kczm3i6dp9/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoicnluby1lbW0iLCJhIjoiY2tzNXc4bHRuMmszNDJxbXI4cmNjbXNrayJ9.q_qEXICxb2AimFTzfyZzeg",
      additionalOptions: {
      'accessToken': 'pk.eyJ1Ijoicnluby1lbW0iLCJhIjoiY2tzNXc4bHRuMmszNDJxbXI4cmNjbXNrayJ9.q_qEXICxb2AimFTzfyZzeg',
      'id': 'mapbox.mapbox-streets-v8' },
      ),
      MarkerLayerOptions(
        markers: [
          Marker(
            width: 80.0,
            height: 80.0,
            point: latLng.LatLng(51.5, -0.09),
            builder: (ctx) =>
            Container(
              child: FlutterLogo(),
            ),
          ),
        ],
      ),
    ],
  ),
                 ),
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
              child: InfoCard(),
            ),
          ),
        ],
      ),
    ));
  }
}
