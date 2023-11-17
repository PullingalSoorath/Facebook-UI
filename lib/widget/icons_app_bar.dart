import 'package:flutter/material.dart';

class IconsAppBar extends StatelessWidget {
  const IconsAppBar({
    super.key,
    required this.icon,
    this.ontap,
    this.bgColor,
    this.iconColor,
  });

  final IconData icon;
  final Function()? ontap;
  final Color? bgColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: bgColor,
      child: IconButton(
        onPressed: ontap,
        icon: Icon(icon),
        color: iconColor,
        iconSize: 25,
      ),
    );
  }
}
