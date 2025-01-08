import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/core/features/screen/main/widgets/custome_card.dart';
import 'package:untitled1/core/widgets/spacing_widgets.dart';

class CustomeCaroselWidget extends StatefulWidget {
  const CustomeCaroselWidget({super.key});

  @override
  State<CustomeCaroselWidget> createState() => _CustomeCaroselWidgetState();
}

class _CustomeCaroselWidgetState extends State<CustomeCaroselWidget> {
  int currentIndexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 263.h,
            padEnds: false,
            viewportFraction: 0.6,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
            enableInfiniteScroll: true,
            onPageChanged:(index, reason) {
              setState(() {
                currentIndexPage = index;
              });
            },
          ),
          items: [
            const CustomeCard(
              nameCard: 'X-Card 1',
              amountOfCard: '23400 IQD',
              numberOfCard: '****  3434',
              validUntil: '12/24',
            ),
            const CustomeCard(
              nameCard: 'X-Card 2',
              amountOfCard: '12400 IQD',
              numberOfCard: '****  5678',
              validUntil: '11/25',
              cardColor: Color(0xff4151A6),
            ),
            const CustomeCard(
              nameCard: 'X-Card 3',
              amountOfCard: '53400 IQD',
              numberOfCard: '****  9876',
              validUntil: '09/26',
            ),
          ],
        ),
        const HeighSpace(16),
        DotsIndicator(
          dotsCount: 3,
          position: currentIndexPage,
          decorator: DotsDecorator(
            spacing: EdgeInsets.symmetric(horizontal: 4.w),
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        )
      ],
    );
  }
}
