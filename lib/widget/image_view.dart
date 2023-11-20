// ignore_for_file: deprecated_member_use

import 'package:facebookclone/theme/themedata.dart';
import 'package:facebookclone/widget/posts.dart';
import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({
    super.key,
    required this.widget,
  });

  final Posts widget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          height: 300,
          color: Colors.grey,
        ),
        Container(
          width: double.infinity,
          color: Colors.grey,
          child: Image.network(
            widget.pics,
            fit: BoxFit.cover,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                return child;
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    backgroundColor: defaultBlue,
                    strokeWidth: 2,
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            (loadingProgress.expectedTotalBytes ?? 1)
                        : null,
                  ),
                );
              }
            },
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
