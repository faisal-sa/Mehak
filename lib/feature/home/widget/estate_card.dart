import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackathon_project/common/app_theme.dart';
import 'package:hackathon_project/common/context_extension.dart';

class EstateCard extends StatefulWidget {
  EstateCard({
    super.key,
    required this.title,
    required this.massageTitle,
    required this.value,
    required this.price,
    required this.image,
    required this.valueColor,
  });
  String title;
  String massageTitle;
  String value;
  Color valueColor;
  String price;
  String image;

  @override
  State<EstateCard> createState() => _EstateCardState();
}

class _EstateCardState extends State<EstateCard> {
  bool saved = false;

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
                        widget.title,
                        style: context.headlineSmall!.copyWith(
                          color: Colors.black,
                        ),
                      ),

                      InkWell(
                        onTap: () => setState(() {
                          saved = !saved;
                        }),
                        child: SvgPicture.asset(
                          "assets/images/Archive_add.svg",
                          colorFilter: saved
                              ? ColorFilter.mode(Colors.black, BlendMode.srcIn)
                              : null,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    widget.massageTitle,
                    style: context.bodyLarge!.copyWith(
                      color: Color(0xff545454),
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Chip(
                        backgroundColor: widget.valueColor,
                        shape: RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadiusGeometry.circular(8.r),
                        ),
                        label: Text(
                          widget.value,
                          style: context.bodySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppTheme.white,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            widget.price,
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
                  image: AssetImage(widget.image),
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
