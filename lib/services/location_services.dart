import 'dart:async';


import 'package:location/location.dart';
import 'model.dart';

class LocationServices {
  Location location = Location();
  
  StreamController<LocationModel> _locationController = StreamController<LocationModel>.broadcast();
  Stream<LocationModel> get getLocation => _locationController.stream;
  
  
  LocationServices(){
    location.requestPermission().then((permission){
      if(permission==PermissionStatus.granted){
        location.onLocationChanged.listen((locationChange) {
          

          _locationController.add(
            LocationModel(latitude: locationChange.latitude,longitude: locationChange.longitude)
          );


        });
      }
    });
  }
}