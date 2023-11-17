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
            height: 90,
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    'assets/images/profilepic.jpeg',
                  ),
                  backgroundColor: Color.fromARGB(255, 81, 81, 81),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                    child: SearchBar(
                      hintText: 'Write something here...',
                      hintStyle: MaterialStatePropertyAll(
                        TextStyle(color: Colors.black87, fontSize: 18),
                      ),
                      elevation: MaterialStatePropertyAll(0),
                      side: MaterialStatePropertyAll(
                        BorderSide(
                          width: 1,
                          color: Colors.black87,
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
                      profilePics:
                          'https://picsum.photos/400?image=${index + 30}',
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
