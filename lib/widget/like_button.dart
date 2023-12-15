// ignore_for_file: deprecated_member_use

import 'package:facebookclone/theme/themedata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LikeButton extends StatefulWidget {
  final bool initialIsLiked;

  const LikeButton({Key? key, required this.initialIsLiked}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  void initState() {
    super.initState();
    isLiked = widget.initialIsLiked;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isLiked = !isLiked;
        });
      },
      child: Row(
        children: [
          !isLiked
              ? SvgPicture.asset(
                  'assets/svg/like.svg',
                  height: 30,
                  color: Colors.grey[700],
                )
              : SvgPicture.asset(
                  'assets/svg/like fill.svg',
                  height: 30,
                  color: defaultBlue,
                ),
          Text(
            'Likes',
            style: TextStyle(
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }
}
