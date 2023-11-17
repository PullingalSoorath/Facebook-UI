import 'package:facebookclone/data/datas.dart';
import 'package:facebookclone/theme/themedata.dart';
import 'package:facebookclone/widget/posts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: 70,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    'assets/images/profilepic.jpeg',
                  ),
                  backgroundColor: Color.fromARGB(255, 81, 81, 81),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: SearchBar(
                      hintText: 'Write something here...',
                      elevation: MaterialStatePropertyAll(0),
                      side: MaterialStatePropertyAll(
                        BorderSide(
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.picture_as_pdf,
                  size: 40,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.grey[400],
          height: 10,
        ),
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
                          itemCount: names.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 10),
                              child: Container(
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: defaultBlue,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  : Posts(
                      comment: comments,
                      name: name,
                      pics: 'https://picsum.photos/400?image=$index',
                    );
            },
            separatorBuilder: (context, index) {
              return Container(
                color: Colors.grey[400],
                height: 10,
              );
            },
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}


