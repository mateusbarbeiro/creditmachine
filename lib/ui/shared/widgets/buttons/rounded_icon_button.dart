import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    super.key,
    required this.constraints,
    required this.buttonColor,
    required this.iconColor,
  });

  final Color buttonColor;
  final Color iconColor;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
        maximumSize: MaterialStateProperty.all<Size>(
          Size.infinite,
        ),
        minimumSize: MaterialStateProperty.all<Size>(
          Size(
            constraints.maxWidth * 0.5,
            constraints.maxHeight * 0.45,
          ),
        ),
      ),
      child: Icon(
        Icons.arrow_forward_ios_outlined,
        color: iconColor,
        size: constraints.maxHeight * (constraints.maxWidth / 100) * 0.2,
      ),
    );
  }
}
