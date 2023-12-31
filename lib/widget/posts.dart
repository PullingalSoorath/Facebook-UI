// ignore_for_file: deprecated_member_use

import 'package:facebookclone/theme/themedata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'image_view.dart';

class Posts extends StatefulWidget {
  const Posts(
      {super.key,
      required this.name,
      required this.pics,
      required this.comment,
      required this.profilePics,
      required this.index});
  final String name;
  final String pics;
  final String comment;
  final String profilePics;
  final int index;

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  int likes = 0;
  bool isliked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          foregroundImage: NetworkImage(widget.profilePics),
                          radius: 25,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              children: [
                                const Text('10 Nov'),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    radius: 2,
                                    backgroundColor: Colors.grey[900],
                                  ),
                                ),
                                SvgPicture.asset(
                                  'assets/svg/globe.svg',
                                  height: 15,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            //more buttton
                          },
                          icon: const Icon(
                            Icons.more_horiz,
                            size: 30,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            //close buttton
                          },
                          icon: const Icon(
                            Icons.close,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 10),
                  child: Text(
                    widget.comment,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ),
        ImageView(widget: widget),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/svg/likeblue.svg', height: 25),
                      const SizedBox(
                        width: 5,
                      ),
                      Text('${widget.index * 18 + likes + 100}')
                    ],
                  ),
                  Row(
                    children: [
                      Text('${widget.index * 23}'),
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        isliked = !isliked;
                        isliked ? likes == likes++ : likes--;
                      });
                    },
                    child: Row(
                      children: [
                        isliked
                            ? SvgPicture.asset(
                                'assets/svg/like fill.svg',
                                color: defaultBlue,
                                height: 30,
                              )
                            : SvgPicture.asset(
                                'assets/svg/like.svg',
                                height: 30,
                                color: Colors.grey[600],
                              ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Like',
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
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
                      SvgPicture.asset(
                        'assets/svg/whatsapp.svg',
                        height: 25,
                        color: Colors.grey[600],
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
    );
  }
}
