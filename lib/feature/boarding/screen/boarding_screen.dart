import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackathon_project/common/app_theme.dart';
import 'package:hackathon_project/common/context_extension.dart';
import 'package:hackathon_project/feature/home/screen/home_screen.dart';
import 'package:hackathon_project/feature/navigation/screen/navigation_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingScreen extends StatefulWidget {
  const BoardingScreen({super.key});

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
            height: 600.h,

            child: PageView(
              reverse: false,
              controller: _controller,
              onPageChanged: (index) {
                setState(() => _currentPage = index);
              },
              children: [
                IntroCard(
                  path: "assets/images/boarding3.svg",
                  text: 'مرحبًا بك في ',
                  hasSVG: true,
                  description: 'اكتشف المكان المثالي لمشروعك بسهوله وذكاء !',
                ),
                IntroCard(
                  hasSVG: false,
                  isPng: true,
                  path: "assets/images/boarding2.svg",
                  text: 'الأمان',
                  description:
                      'كل شيء عن أمان الحي، معدل النمو، في خريطة\n واحدة',
                ),
                IntroCard(
                  hasSVG: false,
                  path: "assets/images/boarding1.svg",
                  text: 'الفرص',
                  description: 'توصيات أذكى ... فرص أوضح بدعم الذكاء الاصطناعي',
                ),
              ],
            ),
          ),
          SizedBox(height: 32.h),
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
              child: Column(
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      backgroundColor: AppTheme.green,
                      fixedSize: Size(MediaQuery.widthOf(context), 46.h),
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
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: 'IBM Plex Sans Arabic',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      backgroundColor: const Color(0xFFEAEBF4),

                      fixedSize: Size(MediaQuery.widthOf(context), 46.h),
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
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontFamily: 'IBM Plex Sans Arabic',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ] else
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30).w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  backgroundColor: const Color(0xFF23B48D),
                  fixedSize: Size(MediaQuery.widthOf(context), 46.h),
                ),
                onPressed: () {
                  if (_controller.page == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavigationScreen(),
                      ),
                    );
                  } else {
                    _controller.nextPage(
                      duration: Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: Text(
                  (_currentPage == 2) ? "التالي" : "boarding_start_button".tr(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: 'IBM Plex Sans Arabic',
                    fontWeight: FontWeight.w400,
                    height: 1.50,
                  ),
                ),
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
  final bool hasSVG;
  bool isPng = false;

  IntroCard({
    super.key,
    required this.path,
    required this.text,
    required this.description,
    required this.hasSVG,
    this.isPng = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: Column(
        children: [
          isPng
              ? Image.asset(
                  "assets/images/boarding2.png",
                  fit: BoxFit.fill,
                  height: 395.h,
                  width: 402.w,
                )
              : SvgPicture.asset(
                  path,
                  height: 395.h,
                  width: 402.w,
                  clipBehavior: Clip.none,
                  fit: BoxFit.cover,
                ),
          SizedBox(height: 32.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontFamily: 'IBM Plex Sans Arabic',
                  fontWeight: FontWeight.w700,
                  height: 1.15,
                ),
              ),
              if (hasSVG) SvgPicture.asset("assets/images/mahak.svg"),
            ],
          ),
          SizedBox(height: 31.h),
          Text(
            description,
            textAlign: TextAlign.center,

            style: TextStyle(
              color: const Color(0xFF555555),
              fontSize: 18,
              fontFamily: 'IBM Plex Sans Arabic',
              fontWeight: FontWeight.w400,
              height: 1.50,
            ),
          ),
        ],
      ),
    );
  }
}
