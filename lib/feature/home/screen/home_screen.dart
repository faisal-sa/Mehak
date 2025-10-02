import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hackathon_project/common/app_theme.dart';
import 'package:hackathon_project/feature/home/widget/custom_google_map.dart';
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
    target: LatLng(24.7136, 46.6753),
    zoom: 10,
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
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        toolbarHeight: 82.h,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 16.h),
          child: SizedBox(
            width: 58.w,
            height: 58.h,
            child: Card(
              color: Colors.white,
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(50),
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: SvgPicture.asset("assets/images/Search.svg"),
              ),
            ),
          ),
        ),
        title: SizedBox(
          width: MediaQuery.widthOf(context),
          height: 58.h,
          child: Card(
            color: Colors.white,
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(16.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  SvgPicture.asset("assets/images/filter.svg"),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("الرياض"), Text("ايجار, شقة")],
                  ),
                  SvgPicture.asset("assets/images/Arrow.svg"),
                ],
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 16.h),
            child: SizedBox(
              width: 58.w,
              height: 58.h,
              child: Card(
                color: Colors.white,
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(50),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset("assets/images/Notifications.svg"),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 137.h,

        child: BottomNavigationBar(
          iconSize: 32.w,
          backgroundColor: Colors.white,
          selectedItemColor: AppTheme.green,
          unselectedItemColor: AppTheme.grey,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/home.svg",
                colorFilter: ColorFilter.mode(
                  Color(0xff198065),
                  BlendMode.srcIn,
                ),
              ),
              label: "الرئيسية",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/archive.svg"),
              label: "المفضلة",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/messages.svg"),
              label: "الرسائل",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/Users.svg"),
              label: "الحساب",
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          CustomGoogleMap(kGooglePlex: _kGooglePlex, controller: _controller),
          Align(
            alignment: AlignmentGeometry.bottomCenter,
            child: ScrollableSheet(),
          ),
        ],
      ),
    );
  }
}

class ScrollableSheet extends StatelessWidget {
  const ScrollableSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: DraggableScrollableSheet(
        initialChildSize: 0.2, // Start size (20% of screen)
        minChildSize: 0.1, // Minimum size
        maxChildSize: 0.8, // Maximum size
        builder: (context, scrollController) {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
            ),
            child: Column(
              children: [
                // Small bar at the top
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                    width: 60.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                // List content
                Expanded(
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: 30,
                    itemBuilder: (context, index) => ListTile(
                      tileColor: Colors.white,

                      title: Text("Item $index"),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}





    // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: _goToTheLake,
      //   label: const Text('To the lake!'),
      //   icon: const Icon(Icons.directions_boat),
      // ),


        // Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }