// ignore_for_file: deprecated_member_use

import 'package:facebookclone/screen/tabs/friends.dart';
import 'package:facebookclone/screen/tabs/home.dart';
import 'package:facebookclone/screen/tabs/marketplace.dart';
import 'package:facebookclone/screen/tabs/profile.dart';
import 'package:facebookclone/screen/tabs/notifications.dart';
import 'package:facebookclone/screen/tabs/reels.dart';
import 'package:facebookclone/theme/themedata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key? key}) : super(key: key);

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
      body: SafeArea(
        child: DefaultTabController(
          length: 6,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              if (showLabel)
                SliverAppBar(
                  backgroundColor: Theme.of(context).colorScheme.background,
                  floating: true,
                  pinned: false,
                  elevation: 0,
                  title: Text(
                    'facebook',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).brightness == Brightness.light
                          ? defaultBlue
                          : Colors.white,
                    ),
                  ),
                  actions: [
                    IconButton(
                      icon: const Icon(
                        Icons.add_circle,
                        size: 28,
                      ),
                      color: Theme.of(context).colorScheme.primary,
                      onPressed: () {},
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/svg/search.svg',
                        height: 22,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/svg/messages.svg',
                        height: 22,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    controller: _tabController,
                    indicatorColor: defaultBlue,
                    indicatorWeight: 3,
                    tabs: [
                      Tab(
                        child: SvgPicture.asset(
                          'assets/svg/home.svg',
                          height: 30,
                          color: _tabController.index == 0
                              ? defaultBlue
                              : Colors.grey[600],
                        ),
                      ),
                      Tab(
                        icon: SvgPicture.asset(
                          'assets/svg/reels.svg',
                          height: 30,
                          color: _tabController.index == 1
                              ? defaultBlue
                              : Colors.grey[600],
                        ),
                      ),
                      Tab(
                        icon: SvgPicture.asset(
                          'assets/svg/friends.svg',
                          height: 30,
                          color: _tabController.index == 2
                              ? defaultBlue
                              : Colors.grey[600],
                        ),
                      ),
                      Tab(
                        icon: SvgPicture.asset(
                          'assets/svg/market.svg',
                          height: 30,
                          color: _tabController.index == 3
                              ? defaultBlue
                              : Colors.grey[600],
                        ),
                      ),
                      Tab(
                        icon: SvgPicture.asset(
                          'assets/svg/notifications.svg',
                          height: 30,
                          color: _tabController.index == 4
                              ? defaultBlue
                              : Colors.grey[600],
                        ),
                      ),
                      const Tab(
                        icon: CircleAvatar(
                          radius: 15.0,
                          backgroundImage:
                              AssetImage('assets/images/profilepic.jpeg'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            body: TabBarView(
              controller: _tabController,
              children: const [
                HomeScreen(),
                ReelsPage(),
                FriendsPage(),
                MarketPlace(),
                NotificationPage(),
                MyProfile(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  _SliverAppBarDelegate(this._tabBar);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return _tabBar;
  }

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
