import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_are_you/services/location_services.dart';

import './screens/demo_screen.dart';
import './services/model.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<LocationModel>(
      initialData: LocationModel(latitude: 0.0,longitude: 0.0),
      create: (_)=>LocationServices().getLocation,
      child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFFFFFFFF),
        primarySwatch: Colors.cyan,
      ),
      home: ShowLocation(),
    ),
    );
    
    
  }
}
