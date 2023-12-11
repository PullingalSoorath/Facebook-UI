import 'package:flutter/material.dart';

class SearchBarHome extends StatelessWidget {
  const SearchBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: SizedBox(
        height: 60,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(
                'assets/images/profilepic.jpeg',
              ),
              backgroundColor: Color.fromARGB(255, 81, 81, 81),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: SearchBar(
                  hintText: 'Write something here...',
                  hintStyle: MaterialStatePropertyAll(
                    TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 14,
                    ),
                  ),
                  elevation: const MaterialStatePropertyAll(0),
                  side: const MaterialStatePropertyAll(
                    BorderSide(
                        width: 1, color: Color.fromRGBO(117, 117, 117, 1)),
                  ),
                ),
              ),
            ),
            const Icon(
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
