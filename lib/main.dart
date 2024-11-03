import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'core/app/app.dart';
import 'core/app/service.dart';

Future<void> main() async {
  await initServices();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  final GeolocatorPlatform _geolocatorPlatform = GeolocatorPlatform.instance;
  FlutterNativeSplash.remove();
  LocationPermission permission;
  permission = await _geolocatorPlatform.checkPermission();
  // Check the current permission status
  permission = await _geolocatorPlatform.checkPermission();

  // If permission is not granted, request it
  if (permission == LocationPermission.denied) {
    permission = await _geolocatorPlatform.requestPermission();
  }

  // If permission is denied forever, handle the case (e.g., show an alert)
  if (permission == LocationPermission.deniedForever) {
    // Handle the case where the user has permanently denied permission
    // You might want to show a message explaining that the app requires location access
    print(
        "Location permissions are permanently denied. Please enable them in settings.");
  }
  runApp(const App());
}
