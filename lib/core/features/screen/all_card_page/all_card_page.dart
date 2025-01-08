import 'package:flutter/material.dart';
import 'package:untitled1/core/features/screen/all_card_page/widgets/payment_card_widgets.dart';
import 'package:untitled1/core/features/screen/all_card_page/widgets/top_app_bar_card_widgets.dart';
import 'package:untitled1/core/widgets/spacing_widgets.dart';

class AllCardPage extends StatefulWidget {
  const AllCardPage({super.key});

  @override
  State<AllCardPage> createState() => _AllCardPageState();
}

class _AllCardPageState extends State<AllCardPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          TopAppBarWidgets(),
          PaymentCardWidgets(
            amountOfCard: "23400 IQD",
            nameCard: "X CARD 1",
            numberOfCard:"****  3434" ,
            validUntil: "12/24",
            cardColor: Color(0xff617AFD),
          ),
          HeighSpace(24),
          PaymentCardWidgets(
            amountOfCard: "3209 IQD",
            nameCard: "X CARD 2",
            numberOfCard:"****  4545" ,
            validUntil: "12/24",
            cardColor: Color(0xff4151A6),
          )
        ],
      ),
    );
  }
}