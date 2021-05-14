import 'package:flutter/material.dart';
import 'package:location/location.dart';

class ShowLocation extends StatefulWidget {
  @override
  _ShowLocationState createState() => _ShowLocationState();
}

class _ShowLocationState extends State<ShowLocation> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Card(
          elevation: 2,
          child: Column(
            children: [
              Icon(
                Icons.location_on_outlined
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  
                ],
              )
            ],
          ),
        ),
        ),
    );
  }
}