import 'package:facebookclone/theme/themedata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            // SizedBox(
            //   width: double.infinity,
            // ),
            Row(
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
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Theme.of(context).brightness == Brightness.light
                        ? Colors.grey[400]
                        : Colors.grey[800],
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: const Text(
                    'Suggessions',
                    style: TextStyle(
                        // color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Theme.of(context).brightness == Brightness.light
                        ? Colors.grey[400]
                        : Colors.grey[800],
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: const Text('Your Friends'),
                ),
              ],
            ),
            const Divider(
              thickness: .5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Friend Requests',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '120',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: defaultBlue,
                    // fontSize: 16,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: SizedBox(
                      // height: 80,
                      // color: Colors.red,
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://picsum.photos/400?image=${index + 20}',
                            ),
                            radius: 50,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Name'),
                              Row(
                                children: [
                                  Stack(
                                    alignment: const Alignment(10, 0),
                                    children: [
                                      CircleAvatar(
                                        radius: 12,
                                        backgroundColor: Colors.grey,
                                        backgroundImage: NetworkImage(
                                          'https://picsum.photos/400?image=$index',
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            border: Border.all(
                                              width: 2,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .background,
                                            ),
                                          ),
                                          // height: 35,
                                          // width: 35,
                                          child: CircleAvatar(
                                            radius: 12,
                                            backgroundColor: Colors.grey,
                                            backgroundImage: NetworkImage(
                                              'https://picsum.photos/400?image=${index + 10}',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                      left: 30,
                                    ),
                                    child: Text(
                                      '43 mutual friends',
                                    ),
                                  ),
                                  // const SizedBox(
                                  //   width: 30,
                                  // )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 8,
                                    ),
                                    child: SizedBox(
                                      width: 130,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          foregroundColor:
                                              const MaterialStatePropertyAll(
                                            Colors.white,
                                          ),
                                          backgroundColor:
                                              const MaterialStatePropertyAll(
                                            defaultBlue,
                                          ),
                                          shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                10,
                                              ),
                                            ),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Confirm'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 130,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        foregroundColor:
                                            const MaterialStatePropertyAll(
                                          Colors.black,
                                        ),
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                          Theme.of(context).brightness ==
                                                  Brightness.light
                                              ? Colors.grey[400]
                                              : Colors.grey[800],
                                        ),
                                        shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'Delete',
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
