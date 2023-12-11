import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MarketPlace extends StatelessWidget {
  const MarketPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Friends',
              style: TextStyle(
                fontFamily: 'facebook',
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SvgPicture.asset(
              'assets/svg/search.svg',
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
