import 'package:flutter/material.dart';

class RoundedTextButton extends StatelessWidget {
  const RoundedTextButton({
    super.key,
    required this.label,
    this.onPressed,
  });

  final String label;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        maximumSize: MaterialStateProperty.all<Size>(Size.infinite),
        minimumSize: MaterialStateProperty.all<Size>(Size.infinite),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            side: BorderSide(color: Colors.grey.shade600),
            borderRadius: const BorderRadius.all(
              Radius.circular(40),
            ),
          ),
        ),
      ),
      child: Text(label),
    );
  }
}
