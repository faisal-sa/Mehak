import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hackathon_project/common/context_extension.dart';
import 'package:hackathon_project/feature/account/screen/account_screen.dart';
import 'package:hackathon_project/feature/chat/screen/chat_screen.dart';
import 'package:hackathon_project/feature/chat/widget/message_card.dart';

class MessagesScreen extends StatelessWidget {
  MessagesScreen({super.key, required this.signed});
  bool signed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: signed
          ? SingleChildScrollView(
              child: Column(
                spacing: 32.h,
                children: [
                  MessageCard(
                    image: "assets/images/ej1.png",
                    tital: "عمارة للإيجار",
                    smallTital: "شركة بناء عقارية",
                    msg: "وعليكم السلام",
                    hour: "ساعتان",
                    isRead: true,
                    navigator: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChatScreen()),
                      );
                    },
                  ),
                  MessageCard(
                    image: "assets/images/ej2.png",
                    tital: "محل للإيجار",
                    smallTital: "محمد عبدالله",
                    msg: "نعتذر منك، العاقر لم يعد متوفر",
                    hour: "8 ساعات",
                    isRead: true,
                  ),
                  MessageCard(
                    image: "assets/images/ej3.png",
                    tital: "الهل هيتر - النرجس",
                    smallTital: "شركة بناء عقارية",
                    msg: "نعم متوفر",
                    hour: "14 ساعة",
                    isRead: true,
                  ),
                  MessageCard(
                    image: "assets/images/ej4.png",
                    tital: "عمارة للبيع",
                    smallTital: "شركة ASWL ",
                    msg: "السعر غير قابل للتفاوض",
                    hour: "01/10/2025",
                    isRead: false,
                  ),
                ],
              ),
            )
          : SignInCard(),
    );
  }
}
