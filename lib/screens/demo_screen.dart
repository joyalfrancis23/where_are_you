import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_are_you/services/model.dart';

class ShowLocation extends StatefulWidget {
  @override
  _ShowLocationState createState() => _ShowLocationState();
}

class _ShowLocationState extends State<ShowLocation> {

  

  @override
  Widget build(BuildContext context) {
    var _locationModelLatitude = Provider.of<LocationModel>(context).latitude;
    var _locationModelLongitude = Provider.of<LocationModel>(context).longitude;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        
        alignment: Alignment.center,padding: EdgeInsets.all(10),
        child: Center(
          widthFactor: 20,
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_outlined,size: 100,
                ),
                SizedBox(height: 5),
                Card(
                    child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Latitude:$_locationModelLatitude\nLongitude:$_locationModelLongitude'),
                  ),
                )
              ],
            ),
          
          ),
      ),
    );
  }
}