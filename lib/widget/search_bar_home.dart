import 'package:flutter/material.dart';

class SearchBarHome extends StatelessWidget {
  const SearchBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
    );
  }
}
