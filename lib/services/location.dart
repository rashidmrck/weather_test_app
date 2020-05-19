import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;
  Geolocator geolocator = Geolocator();

  Future<void> getCurrentLocation() async {
    if (await geolocator.isLocationServiceEnabled()) {
      try {
        Position position = await Geolocator()
            .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

        latitude = position.latitude;
        longitude = position.longitude;
        print(latitude);
        print(longitude);
      } catch (e) {
        print(e);
      }
    } else {
      latitude = null;
      longitude = null;
    }
  }
}
