import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton(
      {Key? key,
      required this.icon,
      required this.iconSize,
      required this.onPressed})
      : super(key: key);

  final IconData icon;
  final double iconSize;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(3.0),
      decoration:
          BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: InkWell(
          onTap: onPressed,
          child: Icon(
            icon,
            size: iconSize,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
