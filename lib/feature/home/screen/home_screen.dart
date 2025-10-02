import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hackathon_project/main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(37.43296265331129, -122.08832357078792),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/home.svg"),
            label: "الرئيسية",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/archive.svg"),
            label: "المفضلة",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/messages.png", color: Colors.red),
            label: "الرسائل",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/Users.svg"),
            label: "الحساب",
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: ColoredBox(
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.heart_broken),
                    Icon(Icons.heart_broken),
                    Icon(Icons.heart_broken),
                    Icon(Icons.heart_broken),
                  ],
                ),
              ),
            ),

            // SizedBox(
            //   width: 440.w,
            //   height: MediaQuery.heightOf(context) * 0.5,
            //   // child: GoogleMap(
            //   //   mapType: MapType.normal,
            //   //   myLocationButtonEnabled: true,
            //   //   myLocationEnabled: true,

            //   //   initialCameraPosition: _kGooglePlex,
            //   //   onMapCreated: (GoogleMapController controller) {
            //   //     _controller.complete(controller);
            //   //   },
            //   // ),
            // ),
            // Text("hello"),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: _goToTheLake,
      //   label: const Text('To the lake!'),
      //   icon: const Icon(Icons.directions_boat),
      // ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
