import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hackathon_project/common/app_theme.dart';
import 'package:hackathon_project/common/context_extension.dart';
import 'package:hackathon_project/common/widget/field.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Card(
            color: Colors.white,
            elevation: 1,
            child: Field(
              label: Text("ابحث", style: TextStyle(color: Colors.grey)),
              radius: 16.r,
              borderColor: Colors.transparent,
              suffixIcon: Icon(CupertinoIcons.search, color: Colors.grey),
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            "الاقتراحات",
            style: context.titleMedium!.copyWith(color: Colors.black),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SuggestionChip(label: "ايجار"),
              SuggestionChip(label: "تمليك"),
              SuggestionChip(label: "ارض"),
              SuggestionChip(label: "مكتب"),
            ],
          ),
          Row(
            spacing: 8,
            children: [
              SuggestionChip(label: "محل"),
              SuggestionChip(label: "النرجس"),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "سجل البحث",
                style: context.titleMedium!.copyWith(color: Colors.black),
              ),
              Text(
                "حذف الكل",
                style: context.titleMedium!.copyWith(color: Colors.grey),
              ),
            ],
          ),
          ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: Icon(CupertinoIcons.clock, fontWeight: FontWeight.bold),
            title: Text(
              "ارض بالرياض",
              style: context.bodyLarge!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: Icon(Icons.close, color: Colors.grey),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: Icon(CupertinoIcons.clock, fontWeight: FontWeight.bold),
            title: Text(
              "ايجار مكتب",
              style: context.bodyLarge!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: Icon(Icons.close, color: Colors.grey),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: Icon(CupertinoIcons.clock, fontWeight: FontWeight.bold),
            title: Text(
              "محل للإيجار",
              style: context.bodyLarge!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: Icon(Icons.close, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class SuggestionChip extends StatelessWidget {
  const SuggestionChip({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Chip(
      side: BorderSide(color: Colors.transparent),
      backgroundColor: Color(0xffe9f8f4),
      label: SizedBox(
        width: 46.w,

        child: Center(
          child: Text(
            label,
            style: context.bodySmall!.copyWith(
              color: AppTheme.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
