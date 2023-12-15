import 'package:facebookclone/data/datas.dart';
import 'package:facebookclone/widget/posts.dart';
import 'package:flutter/material.dart';
import '../../widget/friends_story.dart';
import '../../widget/join_groups.dart';
import '../../widget/my_story.dart';
import '../../widget/search_bar_home.dart';
import '../../widget/shorts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var gapContainer = Container(
      color: Theme.of(context).colorScheme.onPrimary,
      height: 8,
    );

    return SizedBox(
      // Wrap ListView with a Container
      child: ListView.separated(
        itemBuilder: (context, index) {
          final comments = comment[index];
          final name = names[index];
          return index == 0
              ? const SearchBarHome()
              : index == 1
                  ? SizedBox(
                      height: 280,
                      child: ListView.builder(
                        itemCount: statusNames.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final statusname = statusNames[index];
                          return index == 0
                              ? const MyStory()
                              : FriendsStory(
                                  statusname: statusname,
                                  index: index,
                                );
                        },
                      ),
                    )
                  : index == 3
                      ? const JoinGroups()
                      : index == 5
                          ? const Shorts()
                          : Posts(
                              comment: comments,
                              name: name,
                              index: index,
                              pics: 'https://picsum.photos/1000?image=$index',
                              profilePics:
                                  'https://picsum.photos/100?image=${index + 30}',
                            );
        },
        separatorBuilder: (context, index) {
          return gapContainer;
        },
        itemCount: 10,
      ),
    );
  }
}
