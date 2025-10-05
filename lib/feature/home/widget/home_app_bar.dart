// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackathon_project/common/context_extension.dart';
import 'package:hackathon_project/feature/home/widget/filter.dart';
import 'package:hackathon_project/feature/home/widget/notifications.dart';
import 'package:hackathon_project/feature/home/widget/search.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(82.h);
}

class _HomeAppBarState extends State<HomeAppBar> {
  OverlayEntry? _overlayEntry;
  double _overlayHeight = 200;

  OverlayEntry _buildOverlayEntry({required Widget customWidget}) {
    final screenHeight = MediaQuery.of(context).size.height;

    return OverlayEntry(
      builder: (context) => Stack(
        children: [
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: _removeOverlay,
            child: Container(color: Colors.black.withOpacity(0.3)),
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: _overlayHeight,
            child: Material(
              elevation: 12,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              child: GestureDetector(
                onVerticalDragUpdate: (details) {
                  _overlayHeight = (_overlayHeight - details.delta.dy).clamp(
                    200.0,
                    screenHeight * 0.9,
                  );
                  _overlayEntry?.markNeedsBuild();
                },
                onVerticalDragEnd: (details) {
                  if (_overlayHeight < 250) {
                    _removeOverlay();
                  } else if (_overlayHeight > screenHeight * 0.6) {
                    _overlayHeight = screenHeight * 0.9;
                    _overlayEntry?.markNeedsBuild();
                  } else {
                    _overlayHeight = 300;
                    _overlayEntry?.markNeedsBuild();
                  }
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Container(
                        width: 40,
                        height: 4,
                        margin: const EdgeInsets.only(bottom: 12),
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(child: customWidget),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showOverlay({required Widget customWidget}) {
    if (_overlayEntry != null) return;
    _overlayHeight = 577.h;
    _overlayEntry = _buildOverlayEntry(customWidget: customWidget);
    Overlay.of(context).insert(_overlayEntry!);
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 2.0,
      shadowColor: Colors.black.withAlpha(89),
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      toolbarHeight: 82.h,
      title: Row(
        spacing: 8.w,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 58.w,
            height: 58.h,
            child: Card(
              color: Colors.white,
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(16.r),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () => _showOverlay(customWidget: Search()),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset("assets/images/Search.svg"),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => _showOverlay(customWidget: Filter()),
              child: SizedBox(
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
                          children: [
                            Text(
                              "الرياض",
                              style: context.bodyLarge!.copyWith(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "ايجار, شقة",
                              style: context.bodySmall!.copyWith(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SvgPicture.asset("assets/images/Arrow.svg"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            width: 58.w,
            height: 58.h,
            child: Card(
              color: Colors.white,
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(16.r),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () => _showOverlay(customWidget: Notifications()),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset("assets/images/Notifications.svg"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
