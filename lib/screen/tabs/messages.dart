// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Color boxGrey = const Color.fromARGB(255, 51, 51, 51);

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Menu',
                  style: TextStyle(
                    fontFamily: 'facebook',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SvgPicture.asset(
                  'assets/svg/search.svg',
                  height: 25,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:
                    Theme.of(context).colorScheme.brightness == Brightness.dark
                        ? const Color.fromARGB(255, 51, 51, 51)
                        : Colors.white,
              ),
              height: 60,
            ),
            Row(
              children: [
                Text(
                  'Your shortcuts',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
