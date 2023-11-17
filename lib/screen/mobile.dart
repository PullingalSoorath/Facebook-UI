// ignore_for_file: deprecated_member_use

import 'package:facebookclone/screen/tabs/friends.dart';
import 'package:facebookclone/screen/tabs/home.dart';
import 'package:facebookclone/screen/tabs/marketplace.dart';
import 'package:facebookclone/screen/tabs/messages.dart';
import 'package:facebookclone/screen/tabs/notifications.dart';
import 'package:facebookclone/screen/tabs/reels.dart';
import 'package:facebookclone/theme/themedata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool showLabel = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
    _tabController.addListener(_tabListener);
  }

  void _tabListener() {
    setState(() {
      showLabel = _tabController.index == 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: showLabel
          ? AppBar(
              backgroundColor: Theme.of(context).colorScheme.background,
              toolbarHeight: 80.0,
              elevation: 0,
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'facebook',
                  style: TextStyle(
                    color: defaultBlue,
                    fontFamily: 'facebook',
                    fontSize: 40,
                  ),
                ),
              ),
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.add_circle,
                    size: 35,
                  ),
                  color: Theme.of(context).colorScheme.primary,
                  onPressed: () {},
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/svg/search.svg',
                    height: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/svg/messages.svg',
                    height: 30,
                  ),
                ),
              ],
            )
          : null,
      body: SafeArea(
        child: DefaultTabController(
          length: 6,
          child: Column(
            children: [
              TabBar(
                indicatorColor: defaultBlue,
                controller: _tabController,
                onTap: (value) {
                  if (value == 0) {
                    setState(() {
                      showLabel = true;
                    });
                  }
                  if (value == 1) {
                    setState(() {
                      showLabel = false;
                    });
                  }
                  if (value == 2) {
                    setState(() {
                      showLabel = false;
                    });
                  }
                  if (value == 3) {
                    setState(() {
                      showLabel = false;
                    });
                  }
                  if (value == 4) {
                    setState(() {
                      showLabel = false;
                    });
                  }
                  if (value == 5) {
                    setState(() {
                      showLabel = false;
                    });
                  }
                },
                tabs: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Tab(
                      child: SvgPicture.asset(
                        'assets/svg/home.svg',
                        height: 35,
                        color: _tabController.index == 0
                            ? defaultBlue
                            : Colors.grey[700],
                      ),
                    ),
                  ),
                  Tab(
                    icon: SvgPicture.asset(
                      'assets/svg/reels.svg',
                      height: 35,
                      color: _tabController.index == 1
                          ? defaultBlue
                          : Colors.grey[700],
                    ),
                  ),
                  Tab(
                    icon: SvgPicture.asset(
                      'assets/svg/friends.svg',
                      height: 35,
                      color: _tabController.index == 2
                          ? defaultBlue
                          : Colors.grey[700],
                    ),
                  ),
                  Tab(
                    icon: SvgPicture.asset(
                      'assets/svg/market.svg',
                      height: 35,
                      color: _tabController.index == 3
                          ? defaultBlue
                          : Colors.grey[700],
                    ),
                  ),
                  Tab(
                    icon: SvgPicture.asset(
                      'assets/svg/notifications.svg',
                      height: 35,
                      color: _tabController.index == 4
                          ? defaultBlue
                          : Colors.grey[700],
                    ),
                  ),
                  Stack(
                    alignment: const Alignment(1.5, .9),
                    children: [
                      const Tab(
                        icon: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profilepic.jpeg'),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 12,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[700],
                          radius: 10,
                          child: const Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                height: 2,
                color: Colors.grey,
              ),
              Expanded(
                child: SizedBox(
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      // Content for Tab 1
                      HomeScreen(),

                      // Content for Tab 2
                      ReelsPage(),

                      // Content for Tab 3
                      FriendsPage(),

                      // Content for Tab 4
                      MarketPlace(),

                      // Content for Tab 5
                      NotificationPage(),

                      // Content for Tab 6
                      MyProfile(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
