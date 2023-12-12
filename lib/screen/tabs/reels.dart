// ignore_for_file: deprecated_member_use

import 'package:facebookclone/theme/themedata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widget/like_button.dart';

class ReelsPage extends StatefulWidget {
  const ReelsPage({Key? key}) : super(key: key);

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  @override
  Widget build(BuildContext context) {
    int likes = 0;
    bool isliked = false;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Video',
                  style: TextStyle(
                    fontFamily: 'facebook',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/user.svg',
                      color: Theme.of(context).colorScheme.primary,
                      height: 25,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset(
                      'assets/svg/search.svg',
                      color: Theme.of(context).colorScheme.primary,
                      height: 25,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    color: Theme.of(context).colorScheme.background,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                foregroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/462119/pexels-photo-462119.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=800'),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        'Optimuz gaming',
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: CircleAvatar(
                                          radius: 3,
                                          backgroundColor: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        ),
                                      ),
                                      const Text(
                                        'Follow',
                                        style: TextStyle(
                                          color: defaultBlue,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Text('2h'),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: CircleAvatar(
                                          radius: 2,
                                          backgroundColor: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        'assets/svg/globe.svg',
                                        height: 15,
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 10),
                          child: Text(
                            'Comments💢💢💢hereo...',
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Flexible(
                            flex: 3,
                            child: Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://picsum.photos/400?image=${index + 20}',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(
                                    'assets/svg/likeblue.svg',
                                    height: 25,
                                  ),
                                  Row(
                                    children: [
                                      Text('${index * 23 + 6}'),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text('Comments'),
                                    ],
                                  ),
                                ],
                              ),
                              const Divider(thickness: 1, color: Colors.grey),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        isliked = !isliked;
                                        isliked ? likes == likes++ : likes--;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        const LikeButton(initialIsLiked: false),
                                        Text(
                                          'Likes',
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/svg/chat.svg',
                                        height: 25,
                                        color: Colors.grey[700],
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Comment',
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      RotatedBox(
                                        quarterTurns: 2,
                                        child: SvgPicture.asset(
                                          'assets/svg/star-shooting.svg',
                                          height: 35,
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Sent',
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/svg/share.svg',
                                        height: 26,
                                        color: Colors.grey[600],
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Share',
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Container(
                    height: 5,
                    color: Theme.of(context).colorScheme.onPrimary,
                  );
                },
                itemCount: 10),
          ),
        ],
      ),
    );
  }
}
