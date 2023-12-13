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
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.brightness ==
                            Brightness.dark
                        ? Colors.black
                        : Colors.grey,
                    blurRadius: 5,
                    spreadRadius: -3,
                    offset: const Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                color:
                    Theme.of(context).colorScheme.brightness == Brightness.dark
                        ? const Color.fromARGB(255, 51, 51, 51)
                        : Colors.white,
              ),
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey[900],
                          foregroundImage: const NetworkImage(
                            'https://i.pinimg.com/736x/44/9d/88/449d888ffe68af55c7cfd1951ea617af.jpg',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Pullingal Soorath',
                        )
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                        ),
                        IconButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.grey),
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Text(
                    'Your shortcuts',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 90,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).colorScheme.brightness ==
                                      Brightness.dark
                                  ? Colors.black
                                  : Colors.grey,
                              blurRadius: 5,
                              spreadRadius: -3,
                              offset: const Offset(0, 0),
                            ),
                          ],
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const Text(
                        'Name',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
                itemCount: 10,
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
