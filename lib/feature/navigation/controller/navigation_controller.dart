import 'package:flutter/material.dart';
import 'package:hackathon_project/feature/account/screen/account_screen.dart';
import 'package:hackathon_project/feature/account/widget/account_app_bar.dart';
import 'package:hackathon_project/feature/chat/screen/messages_screen.dart';
import 'package:hackathon_project/feature/chat/widget/chat_app_bar.dart';
import 'package:hackathon_project/feature/favorite/screen/favorite_screen.dart';
import 'package:hackathon_project/feature/favorite/widget/favorite_app_bar.dart';
import 'package:hackathon_project/feature/home/screen/home_screen.dart';
import 'package:hackathon_project/feature/home/widget/home_app_bar.dart';

class NavigationController {
  NavigationController({required this.signedin});
  late bool signedin;
  int index = 0;
  late List<Widget> screens = [
    HomeScreen(),
    FavoriteScreen(signed: signedin ? true : false),
    MessagesScreen(signed: signedin ? true : false),
    AccountScreen(signed: signedin ? true : false),
  ];
  List<PreferredSizeWidget> appbars = [
    HomeAppBar(),
    FavoriteAppBar(),
    ChatAppBar(),
    AccountAppBar(),
  ];
}
