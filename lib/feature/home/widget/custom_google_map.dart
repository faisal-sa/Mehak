import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomGoogleMap extends StatelessWidget {
  const CustomGoogleMap({
    super.key,
    required CameraPosition kGooglePlex,
    required Completer<GoogleMapController> controller,
  }) : _kGooglePlex = kGooglePlex,
       _controller = controller;

  final CameraPosition _kGooglePlex;
  final Completer<GoogleMapController> _controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 440.w,
      height: MediaQuery.heightOf(context),
      child: GoogleMap(
        mapType: MapType.normal,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
        zoomControlsEnabled: false,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
