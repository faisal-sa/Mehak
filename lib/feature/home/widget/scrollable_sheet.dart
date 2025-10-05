import 'package:flutter/material.dart';
import 'package:hackathon_project/feature/card_details/screen/card_details_screen.dart';
import 'package:hackathon_project/feature/home/controller/estate_cards.dart';
import 'package:hackathon_project/feature/home/widget/estate_card.dart';
import 'package:hackathon_project/feature/home/widget/estate_card_shimmer.dart';

class ScrollableSheet extends StatefulWidget {
  ScrollableSheet({super.key});

  @override
  State<ScrollableSheet> createState() => _ScrollableSheetState();
}

class _ScrollableSheetState extends State<ScrollableSheet> {
  final Set<int> savedCards = {};
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.28,
      minChildSize: 0.04,
      maxChildSize: 0.99,
      snap: true,
      snapSizes: const [0.05, 0.5, 0.9],
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
          ),

          child: ListView.builder(
            controller: scrollController,
            itemCount: isLoading ? 5 : estateCards.length,
            itemBuilder: (context, index) {
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

              if (isLoading) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: EstateCardShimmer(),
                );
              }

              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CardDetailsScreen(),
                    ),
                  ),
                  child: EstateCard(
                    title: estateCards[index][0],
                    massageTitle: estateCards[index][1],
                    value: estateCards[index][2],
                    valueColor: estateCards[index][3],
                    price: estateCards[index][4],
                    image: estateCards[index][5],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
