import 'package:facebookclone/data/datas.dart';
import 'package:facebookclone/theme/themedata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class JoinGroups extends StatefulWidget {
  const JoinGroups({
    super.key,
  });

  @override
  State<JoinGroups> createState() => _JoinGroupsState();
}

bool showDialoge = true;

class _JoinGroupsState extends State<JoinGroups> {
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        height: showDialoge ? 50 : 0,
        padding: showDialoge
            ? const EdgeInsets.symmetric(horizontal: 15, vertical: 5)
            : const EdgeInsets.only(left: 300),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Group suggessions Removed',
              style: TextStyle(fontSize: 15),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  showDialoge = !showDialoge;
                });
              },
              icon: const Icon(Icons.close),
            )
          ],
        ),
      ),
      secondChild: SizedBox(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/facebookicon.svg',
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.more_horiz,
                        size: 28,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.close,
                        size: 30,
                      ),
                      onPressed: () {
                        setState(() {
                          groups.clear();
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pullingal , connect with others who share your intrest in these groups',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'See only in English',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: defaultBlue,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 445,
              width: double.infinity,
              color: Colors.transparent,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: groups.length,
                itemBuilder: (context, index) {
                  final group = groups[index];
                  final name = group['name'];
                  final pics = group['pics'];

                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(
                                10,
                              ),
                            ),
                            child: Container(
                              width: 300,
                              height: 300,
                              color: Colors.white,
                              child: Image.network(
                                pics,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(name),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text('${index + 3}K members | 10+ posts a day'),
                                const SizedBox(
                                  height: 5,
                                ),
                                Stack(
                                  alignment: const Alignment(10, 0),
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.grey,
                                      backgroundImage: NetworkImage(
                                        'https://picsum.photos/400?image=$index',
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border: Border.all(
                                            width: 2.5,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .background,
                                          ),
                                        ),
                                        height: 35,
                                        width: 35,
                                        child: CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.grey,
                                          backgroundImage: NetworkImage(
                                            'https://picsum.photos/400?image=${index + 10}',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 180,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              const MaterialStatePropertyAll(
                                            defaultBlue,
                                          ),
                                          foregroundColor:
                                              const MaterialStatePropertyAll(
                                            Colors.white,
                                          ),
                                          shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                10,
                                              ),
                                            ),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: const Text(
                                          'Join',
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(
                                      width: 80,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              const MaterialStatePropertyAll(
                                            Colors.grey,
                                          ),
                                          foregroundColor:
                                              MaterialStatePropertyAll(
                                            Colors.grey[900],
                                          ),
                                          shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                10,
                                              ),
                                            ),
                                          ),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            groups.removeAt(index);
                                          });
                                        },
                                        child: const Text(
                                          'Delete',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: const MaterialStatePropertyAll(0),
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.grey[400],
                    ),
                    foregroundColor: MaterialStatePropertyAll(
                      Colors.grey[900],
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Discover more groups',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      crossFadeState:
          groups.isEmpty ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(
        milliseconds: 500,
      ),
    );
  }
}
