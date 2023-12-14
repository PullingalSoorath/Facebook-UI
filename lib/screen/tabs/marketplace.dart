// ignore_for_file: deprecated_member_use

import 'package:facebookclone/data/datas.dart';
import 'package:facebookclone/theme/themedata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MarketPlace extends StatelessWidget {
  const MarketPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Market Place',
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
                // SizedBox(
                //   width: double.infinity,
                // ),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Theme.of(context).colorScheme.brightness ==
                                    Brightness.light
                                ? Colors.grey[400]
                                : const Color.fromARGB(255, 45, 45, 45),
                          ),
                        ),
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.mode_edit_outline,
                              size: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Sell'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      flex: 5,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Theme.of(context).colorScheme.brightness ==
                                    Brightness.light
                                ? Colors.grey[400]
                                : const Color.fromARGB(255, 45, 45, 45),
                          ),
                        ),
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.list,
                              size: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Categories'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'New for you',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'https://w0.peakpx.com/wallpaper/929/379/HD-wallpaper-samsung-galaxy-android.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          height: 50,
                          width: 50,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Samsung S23 Ultra',
                        )
                      ],
                    ),
                    const Icon(
                      Icons.more_horiz,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Todat's pics"),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: defaultBlue,
                          ),
                          Text(
                            'Neyyattinkara',
                            style: TextStyle(
                              color: defaultBlue,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 6.0,
                // mainAxisSpacing: 1,
              ),
              itemBuilder: (context, index) {
                var comments = comment[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.grey[900],
                        child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://picsum.photos/400?image=${index + 20}',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        comments,
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
