import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AccountAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,

      elevation: 2.0,
      shadowColor: Colors.black.withAlpha(89),
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      toolbarHeight: 82.h,

      title: Center(child: Text("الحساب")),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(82.h);
}
