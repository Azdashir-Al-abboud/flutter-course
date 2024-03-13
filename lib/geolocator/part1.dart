import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:async';

class GeolocatorP1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _geolocatorP1();
}

class _geolocatorP1 extends State<GeolocatorP1> {
  StreamSubscription<Position>? positionStream;

  double lat1 = 32.774139;
  double long1 = 36.860803;

  double lat2 = 36.624825;
  double long2 = 38.572955;

  /// Determine the current position of the device.
  ///
  /// When the location services are not enabled or permissions
  /// are denied the `Future` will return an error.
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      print("============");
      print("Location services are disabled.");
      print("============");
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.

        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.whileInUse) {
      double distanceInMeters =
          Geolocator.distanceBetween(lat1, long1, lat2, long2);
      print(distanceInMeters);
    }
// ===============================================
    if (permission == LocationPermission.whileInUse) {
      print("============");
      Position position1 =
          await Geolocator.getCurrentPosition(); // get current fixed location
      /**
           * Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
           *  */
      print("============");
      print(position1.latitude);
      print(position1.longitude);

      print("============");
    }
// ===============================================
    if (permission == LocationPermission.whileInUse) {
      // final LocationSettings locationSettings = LocationSettings(
      //     accuracy: LocationAccuracy.high,
      //     distanceFilter: 100,
      //     timeLimit: Duration(seconds: 10));
      positionStream =
          Geolocator.getPositionStream().listen((Position? position) {
        print(position == null
            ? 'Unknown'
            : '${position.latitude.toString()}, ${position.longitude.toString()}');
      });
    }
// ===============================================

// ===============================================
    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    /**
     *  if (permission == LocationPermission.whileInUse) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
     */

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  getCurrentPosition() async {
    print("=============");

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print("=============");
    print(position.latitude);
    print(position.longitude);
    print("=============");
  }

  @override
  void initState() {
    _determinePosition();
    super.initState();
  }

  @override
  void dispose() {
    if (positionStream != null) {
      positionStream!.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Geolocator"),
      ),
      body: Container(
        child: Center(
          child: MaterialButton(
            onPressed: () {
              getCurrentPosition();
            },
            child: Text("Press here to continue"),
            color: Colors.red,
            textColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
