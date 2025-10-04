import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackathon_project/common/app_theme.dart';
import 'package:hackathon_project/common/context_extension.dart';

class Filter extends StatefulWidget {
  Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  double minAmount = 0;
  double maxAmount = 500;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: MediaQuery.widthOf(context)),
          Text(
            "التصفية",
            style: context.titleMedium!.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            "عن ماذا تبحث؟",
            style: context.titleMedium!.copyWith(color: Color(0xff555555)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Chip(
                side: BorderSide(color: Color(0xff23b48d)),
                backgroundColor: Color(0xffe9f8f4),
                label: SizedBox(
                  width: MediaQuery.widthOf(context) * 0.30,
                  height: 111.h,

                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/keys.png"),
                        Text(
                          "إيجار",
                          style: context.titleMedium!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Chip(
                side: BorderSide(color: Color(0xffe9e9eb), width: 2),
                backgroundColor: Colors.white,
                label: SizedBox(
                  width: MediaQuery.widthOf(context) * 0.30,
                  height: 111.h,

                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/house.png"),
                        Text(
                          "تمليك",
                          style: context.titleMedium!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            "نوع المكان",
            style: context.titleMedium!.copyWith(color: Color(0xff555555)),
          ),
          Container(
            width: MediaQuery.widthOf(context),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffe9e9eb)),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Chip(
                    side: BorderSide(color: Color(0xff23b48d)),
                    backgroundColor: Color(0xffe9f8f4),
                    label: SizedBox(
                      width: MediaQuery.widthOf(context) * 0.15,

                      child: Center(
                        child: Text(
                          "أرض",
                          style: context.titleMedium!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(width: 1.w, height: 45.h, color: Colors.grey),

                  Chip(
                    side: BorderSide(color: Colors.white), //Color(0xff23b48d)),
                    backgroundColor: Colors.white, // Color(0xffe9f8f4),
                    label: SizedBox(
                      width: MediaQuery.widthOf(context) * 0.15,

                      child: Center(
                        child: Text(
                          "محل",
                          style: context.titleMedium!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(width: 1.w, height: 45.h, color: Colors.grey),
                  Chip(
                    side: BorderSide(color: Colors.white),
                    backgroundColor: Colors.white,
                    label: SizedBox(
                      width: MediaQuery.widthOf(context) * 0.15,

                      child: Center(
                        child: Text(
                          "مكتب",
                          style: context.titleMedium!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            "نطاق السعر",
            style: context.titleMedium!.copyWith(color: Color(0xff555555)),
          ),
          SliderTheme(
            data: SliderThemeData(),
            child: RangeSlider(
              inactiveColor: Color(0xffe9f8f4),
              activeColor: Color(0xff23b48d),
              min: 0,
              max: 500,
              values: RangeValues(minAmount, maxAmount),
              onChanged: (RangeValues value) => setState(() {
                minAmount = value.start;
                maxAmount = value.end;
              }),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Chip(
                side: BorderSide(color: Color(0xffe9e9eb)),
                backgroundColor: Colors.white,
                label: SizedBox(
                  width: MediaQuery.widthOf(context) * 0.25,

                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "500",
                          style: context.titleMedium!.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                        SvgPicture.asset(
                          "assets/images/SRS.svg",
                          colorFilter: ColorFilter.mode(
                            Colors.grey,
                            BlendMode.srcIn,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(color: Color(0xffe9e9eb), width: 21.w, height: 4.h),
              Chip(
                side: BorderSide(color: Color(0xffe9e9eb)),
                backgroundColor: Colors.white,
                label: SizedBox(
                  width: MediaQuery.widthOf(context) * 0.25,

                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "0",
                          style: context.titleMedium!.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                        SvgPicture.asset(
                          "assets/images/SRS.svg",
                          colorFilter: ColorFilter.mode(
                            Colors.grey,
                            BlendMode.srcIn,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
