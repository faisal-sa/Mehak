import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hackathon_project/common/app_theme.dart';
import 'package:hackathon_project/common/context_extension.dart';
import 'package:hackathon_project/feature/card_details/screen/card_details_screen.dart';
import 'package:hackathon_project/feature/home/widget/custom_google_map.dart';

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
      body: Stack(
        children: [
          // CustomGoogleMap(kGooglePlex: _kGooglePlex, controller: _controller),
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
    return DraggableScrollableSheet(
      // --- FIX 1: Adjusted sheet sizes ---
      // This initial size is enough to show the handle and the top of the first card.
      initialChildSize: 0.28,
      // A smaller min size to ensure only the handle area is visible when collapsed.
      minChildSize: 0.04,
      maxChildSize:
          0.99, // Usually best to not go fully to 1.0 to not cover status bar
      snap: true,
      snapSizes: const [
        0.05,
        0.5,
        0.9,
      ], // Snap points for collapsed, half, and full
      // The builder provides the scrollController that MUST be attached to your scrollable view
      builder: (context, scrollController) {
        // --- FIX 2: Make the entire sheet content a single scrollable list ---
        // This ensures dragging works on the handle, not just the cards.
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
          ),
          // We use a ListView to contain BOTH the handle and the content.
          // This makes the whole area scrollable and thus draggable.
          child: ListView.builder(
            // IMPORTANT: Connect the controller here!
            controller: scrollController,
            // Add 1 to the item count for our custom handle widget
            itemCount: 31, // 30 cards + 1 handle
            itemBuilder: (context, index) {
              // The first item (index 0) is the handle
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Center(
                    child: Container(
                      width: 60,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                );
              }
              // The rest of the items are your EstateCards
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CardDetailsScreen(),
                    ),
                  ),
                  // We subtract 1 from the index because index 0 was the handle
                  child: const EstateCard(),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
// class ScrollableSheet extends StatelessWidget {
//   const ScrollableSheet({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DraggableScrollableSheet(
//       initialChildSize: 0.25,
//       minChildSize: 0.1,
//       maxChildSize: 1.0,
//       snap: true,
//       builder: (context, scrollController) {
//         return Container(
//           decoration: const BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//             boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
//           ),
//           child: Column(
//             children: [
//               // This is your draggable handle
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 10.0),
//                 child: Container(
//                   width:
//                       60, // Using .w can cause issues if ScreenUtil isn't initialized
//                   height:
//                       4, // Using .h can cause issues if ScreenUtil isn't initialized
//                   decoration: BoxDecoration(
//                     color: Colors.grey[400],
//                     borderRadius: BorderRadius.circular(2),
//                   ),
//                 ),
//               ),
//               // Your scrollable content
//               Expanded(
//                 child: ListView.builder(
//                   // IMPORTANT: Pass the scrollController to your scrollable content
//                   controller: scrollController,
//                   itemCount: 30,
//                   itemBuilder: (context, index) => Padding(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: 16,
//                     ), // Use static values or MediaQuery
//                     child: InkWell(
//                       onTap: () => Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => CardDetailsScreen(),
//                         ),
//                       ),
//                       child: EstateCard(),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

class EstateCard extends StatelessWidget {
  const EstateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 8.h),
          child: Container(
            width: 262.w,
            height: 201.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16.r),
                bottomRight: Radius.circular(16.r),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "محل للتقبيل",
                        style: context.headlineSmall!.copyWith(
                          color: Colors.black,
                        ),
                      ),

                      SvgPicture.asset("assets/images/Archive_add.svg"),
                    ],
                  ),
                  Text(
                    "الدمام , حي البادية",
                    style: context.bodyLarge!.copyWith(
                      color: Color(0xff545454),
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Chip(
                        backgroundColor: Color(0xffa33838),
                        shape: RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadiusGeometry.circular(8.r),
                        ),
                        label: Text(
                          "القيمة منخفضة",
                          style: context.bodySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppTheme.white,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "117,100",
                            style: context.bodyLarge!.copyWith(
                              color: AppTheme.green,
                              fontSize: 17.w,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SvgPicture.asset("assets/images/SRS.svg"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Container(
              height: 201.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/house1.png"),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  bottomLeft: Radius.circular(16.r),
                ),
              ),
            ),
          ),
        ),
      ],
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