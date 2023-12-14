// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Color boxGrey = const Color.fromARGB(255, 51, 51, 51);

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
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
                    color: Theme.of(context).colorScheme.brightness ==
                            Brightness.dark
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
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Icon(
                                  Icons.location_searching_outlined,
                                  size: 50,
                                  color: Colors.white,
                                ),
                                const CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: 15,
                                  child: Text(
                                    'PS',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              radius: 15,
                              child: const Icon(
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
                                  color: Theme.of(context)
                                              .colorScheme
                                              .brightness ==
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
                ),
                const Column(
                  children: [
                    Row(
                      children: [
                        ProfileGridItems(
                          icon: Icons.timelapse_rounded,
                          text: "Memories",
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        ProfileGridItems(
                          icon: Icons.restore_sharp,
                          text: "Saved",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        ProfileGridItems(
                          icon: Icons.group,
                          text: "Group",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ProfileGridItems(
                          icon: Icons.video_chat,
                          text: "Video",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        ProfileGridItems(
                          icon: Icons.home,
                          text: "MarketPlace",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ProfileGridItems(
                          icon: Icons.person,
                          text: "Friends",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        ProfileGridItems(
                          icon: Icons.feed,
                          text: "Feeds",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ProfileGridItems(
                          icon: Icons.event,
                          text: "Events",
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                SizedBox(
                  height: 35,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            6,
                          ),
                        ),
                      ),
                      backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(255, 51, 51, 51),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'See more',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.2,
          ),
          const ProfileSupportList(
            icon: Icons.question_mark_rounded,
            text: 'Help & supports',
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.2,
          ),
          const ProfileSupportList(
            icon: Icons.settings,
            text: 'Settings & privacy',
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.2,
          ),
          const ProfileSupportList(
            icon: Icons.gif_box_rounded,
            text: 'Also from Meta',
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.2,
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: SizedBox(
              height: 35,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        6,
                      ),
                    ),
                  ),
                  backgroundColor: const MaterialStatePropertyAll(
                    Color.fromARGB(255, 51, 51, 51),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Log out',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileSupportList extends StatelessWidget {
  const ProfileSupportList({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(
                  icon,
                ),
              ),
              Text(text)
            ],
          ),
          const Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}

class ProfileGridItems extends StatelessWidget {
  const ProfileGridItems({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.brightness == Brightness.dark
                  ? Colors.black
                  : Colors.grey,
              blurRadius: 5,
              spreadRadius: -3,
              offset: const Offset(0, 0),
            ),
          ],
          color: const Color.fromARGB(255, 51, 51, 51),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
