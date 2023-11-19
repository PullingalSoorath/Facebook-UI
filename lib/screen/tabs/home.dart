import 'package:facebookclone/data/datas.dart';
import 'package:facebookclone/widget/posts.dart';
import 'package:flutter/material.dart';

import '../../widget/friends_story.dart';
import '../../widget/my_story.dart';
import '../../widget/search_bar_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var gapContainer = Container(
      color: Colors.grey[400],
      height: 10,
    );
    return Column(
      children: [
        const SearchBarHome(),
        gapContainer,
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              final comments = comment[index];
              final name = names[index];
              return index == 0
                  ? Expanded(
                      child: SizedBox(
                        height: 280,
                        child: ListView.builder(
                          itemCount: statusNames.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final statusname = statusNames[index];
                            return index == 0
                                ?
//My story
                                const MyStory()
                                :
//Friends story
                                FriendsStory(
                                    statusname: statusname,
                                    index: index,
                                  );
                          },
                        ),
                      ),
                    )
                  : Posts(
                      comment: comments,
                      name: name,
                      index: index,
                      pics: 'https://picsum.photos/400?image=$index',
                      profilePics:
                          'https://picsum.photos/400?image=${index + 30}',
                    );
            },
            separatorBuilder: (context, index) {
              return gapContainer;
            },
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
