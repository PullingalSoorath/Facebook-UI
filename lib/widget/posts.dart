// ignore_for_file: deprecated_member_use

import 'package:facebookclone/theme/themedata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          padding: const EdgeInsets.all(12.0),
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
                            //close buttton
                          },
                          icon: const Icon(Icons.more_horiz),
                        ),
                        IconButton(
                          onPressed: () {
                            //close buttton
                          },
                          icon: const Icon(Icons.close),
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
        Container(
          width: double.infinity,
          color: Colors.grey,
          child: Image.network(
            widget.pics,
            fit: BoxFit.cover,
          ),
        ),
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
              Divider(thickness: 1, color: Colors.grey[600]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        isliked
                            ? SvgPicture.asset(
                                'assets/svg/like fill.svg',
                                color: defaultBlue,
                                height: 30,
                              )
                            : SvgPicture.asset(
                                'assets/svg/like.svg',
                                height: 30,
                              ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text('Like'),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/chat.svg',
                        height: 25,
                        color: Colors.grey[900],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text('Comment')
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/whatsapp.svg',
                        height: 25,
                        color: Colors.grey[900],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text('Sent')
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/share.svg',
                        height: 26,
                        color: Colors.grey[900],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text('Share')
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


// Image.network(
//           'https://picsum.photos/250?image=9',
//           fit: BoxFit.cover,
//         ),

            // '',
