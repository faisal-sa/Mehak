import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackathon_project/common/app_theme.dart';
import 'package:hackathon_project/common/context_extension.dart';
import 'package:hackathon_project/feature/home/screen/home_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingScreen extends StatefulWidget {
  BoardingScreen({super.key});

  @override
  State<BoardingScreen> createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          SizedBox(
            height: 586.h,

            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() => _currentPage = index);
              },
              children: [
                IntroCard(
                  path: "assets/images/boarding1.svg",
                  text: 'intro1'.tr(),
                  description: 'intro1_description'.tr(),
                ),
                IntroCard(
                  path: "assets/images/boarding2.svg",
                  text: 'intro2'.tr(),
                  description: 'intro2_description'.tr(),
                ),
                IntroCard(
                  path: "assets/images/boarding3.svg",
                  text: 'intro3'.tr(),
                  description: 'intro3_description'.tr(),
                ),
              ],
            ),
          ),
          SizedBox(height: 104.h),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
              spacing: 7.w,
              dotHeight: 7.h,
              dotWidth: 15.w,

              expansionFactor: 1.46,
              activeDotColor: AppTheme.green,
              dotColor: Colors.grey.shade300,
            ),
          ),
          SizedBox(height: 42.h),
          if (_currentPage != 2) ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30).w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      backgroundColor: AppTheme.grey,
                      fixedSize: Size(101.w, 46.h),
                    ),
                    onPressed: () {
                      if (_controller.page == 2) {
                      } else {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: Text(
                      "boarding_skip_button".tr(),
                      style: context.bodyLarge,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      backgroundColor: AppTheme.green,
                      fixedSize: Size(101.w, 46.h),
                    ),
                    onPressed: () {
                      if (_controller.page == 2) {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => LoginScreen()),
                        // );
                      } else {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: Text(
                      "boarding_next_button".tr(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ] else
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                backgroundColor: AppTheme.green,
                fixedSize: Size(
                  MediaQuery.widthOf(context) * 0.82,
                  MediaQuery.heightOf(context) * 0.06,
                ),
              ),
              onPressed: () {
                if (_controller.page == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                } else {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: Text(
                (_currentPage == 2)
                    ? "Let's Start"
                    : "boarding_start_button".tr(),
                style: TextStyle(color: Colors.white),
              ),
            ),
          SizedBox(height: 77.h),
        ],
      ),
    );
  }
}

class IntroCard extends StatelessWidget {
  final String path;
  final String text;
  final String description;

  const IntroCard({
    super.key,
    required this.path,
    required this.text,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: Column(
        children: [
          SvgPicture.asset(
            path,
            height: 395.h,
            width: 402.w,
            clipBehavior: Clip.none,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 61.h),
          Text(text, style: context.bodyMedium),
          SizedBox(height: 31.h),
          Text(description, style: context.bodyMedium),
        ],
      ),
    );
  }
}
