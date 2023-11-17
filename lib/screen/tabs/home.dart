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
                    padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
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
                          itemCount: statusNames.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final statusname = statusNames[index];
                            return index == 0
                                ?
//My story
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 10),
                                    child: Container(
                                      width: 160,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, strokeAlign: 0),
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white,
                                      ),
                                      child: Stack(
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                height: 180,
                                                decoration: const BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(15),
                                                    topRight:
                                                        Radius.circular(15),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: const Padding(
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    child: Text(
                                                      'Create story',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    const BorderRadius.vertical(
                                                  top: Radius.circular(15),
                                                ),
                                                child: SizedBox(
                                                  height: 155,
                                                  child: Image.asset(
                                                    'assets/images/profilepic.jpeg',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              CircleAvatar(
                                                radius: 25,
                                                backgroundColor: Colors.white,
                                                child: Icon(
                                                  Icons.add_circle,
                                                  color: defaultBlue,
                                                  size: 50,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                :
//Friends story
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 10),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Stack(
                                        children: [
                                          Container(
                                            color: Colors.grey,
                                            width: 160,
                                            height: 280,
                                            child: Image(
                                              image: NetworkImage(
                                                'https://picsum.photos/400?image=${index + 40}',
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Container(
                                                      width: 50,
                                                      height: 50,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          50,
                                                        ),
                                                        color:
                                                            Colors.transparent,
                                                        border: Border.all(
                                                          width: 2.5,
                                                          color: defaultBlue,
                                                        ),
                                                      ),
                                                    ),
                                                    CircleAvatar(
                                                      radius: 20,
                                                      backgroundColor:
                                                          Colors.grey,
                                                      backgroundImage: NetworkImage(
                                                          'https://picsum.photos/150?image=${index + 30}'),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                      statusname,
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          )
                                        ],
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
                      index: index,
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
