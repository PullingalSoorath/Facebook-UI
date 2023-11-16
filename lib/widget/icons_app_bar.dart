import 'package:flutter/material.dart';

class IconsAppBar extends StatelessWidget {
  const IconsAppBar({
    super.key,
    required this.icon,
    this.ontap,
  });

  final IconData icon;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
      ),
      child: IconButton(
        onPressed: ontap,
        icon: Icon(icon),
        color: Theme.of(context).colorScheme.primary,
        iconSize: 30, // Set the icon color
      ),
    );
  }
}
