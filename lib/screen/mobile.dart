// ignore_for_file: deprecated_member_use

import 'package:facebookclone/screen/tabs/friends.dart';
import 'package:facebookclone/screen/tabs/home.dart';
import 'package:facebookclone/screen/tabs/marketplace.dart';
import 'package:facebookclone/screen/tabs/messages.dart';
import 'package:facebookclone/screen/tabs/notifications.dart';
import 'package:facebookclone/screen/tabs/reels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widget/icons_app_bar.dart';

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
                    color: Colors.blue[800],
                    fontFamily: 'facebook',
                    fontSize: 40,
                  ),
                ),
              ),
              actions: [
                IconsAppBar(
                  icon: Icons.add,
                  ontap: () {},
                ),
                IconsAppBar(
                  icon: Icons.search,
                  ontap: () {},
                ),
                IconsAppBar(
                  icon: Icons.menu,
                  ontap: () {},
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
                padding: const EdgeInsets.symmetric(vertical: 10),
                labelColor: Colors.red,
                indicatorColor: Colors.transparent,
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
                  Tab(
                    child: SvgPicture.asset(
                      'assets/svg/home.svg',
                      height: 30,
                      color: _tabController.index == 0
                          ? Colors.blue[700]
                          : Colors.grey[700],
                    ),
                  ),
                  Tab(
                    icon: SvgPicture.asset(
                      'assets/svg/friends.svg',
                      height: 30,
                      color: _tabController.index == 1
                          ? Colors.blue[700]
                          : Colors.grey[700],
                    ),
                  ),
                  Tab(
                    icon: SvgPicture.asset(
                      'assets/svg/messages.svg',
                      height: 30,
                      color: _tabController.index == 2
                          ? Colors.blue[700]
                          : Colors.grey[700],
                    ),
                  ),
                  Tab(
                    icon: SvgPicture.asset(
                      'assets/svg/reels.svg',
                      height: 30,
                      color: _tabController.index == 3
                          ? Colors.blue[700]
                          : Colors.grey[700],
                    ),
                  ),
                  Tab(
                    icon: SvgPicture.asset(
                      'assets/svg/notifications.svg',
                      height: 30,
                      color: _tabController.index == 4
                          ? Colors.blue[700]
                          : Colors.grey[700],
                    ),
                  ),
                  Tab(
                    icon: SvgPicture.asset(
                      'assets/svg/market.svg',
                      height: 30,
                      color: _tabController.index == 5
                          ? Colors.blue[700]
                          : Colors.grey[700],
                    ),
                  ),
                ],
              ),
              Expanded(
                flex: 9,
                child: SizedBox(
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      // Content for Tab 1
                      HomeScreen(),

                      // Content for Tab 2
                      FriendsPage(),

                      // Content for Tab 3
                      Messages(),

                      // Content for Tab 4
                      ReelsPage(),

                      // Content for Tab 5
                      NotificationPage(),

                      // Content for Tab 6
                      MarketPlace(),
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
