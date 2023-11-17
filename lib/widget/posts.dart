import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts(
      {super.key,
      required this.name,
      required this.pics,
      required this.comment,
      required this.profilePics});
  final String name;
  final String pics;
  final String comment;
  final String profilePics;

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
                          foregroundImage: NetworkImage(profilePics),
                          radius: 25,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
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
                                const Icon(CupertinoIcons.globe),
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
                  padding: EdgeInsets.only(left: 5, top: 10),
                  child: Text(
                    comment,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.lightBlue,
          child: Image.network(
            pics,
            fit: BoxFit.cover,
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
