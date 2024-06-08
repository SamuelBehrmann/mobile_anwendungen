import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  static const double _logoutButtonWidth = 330;
  static const double _logoutButtonHeight = 50;
  static const EdgeInsets _bottomPadding = EdgeInsets.only(bottom: 16);

  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: _bottomPadding,
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(_logoutButtonWidth, _logoutButtonHeight),
          ),
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      );
}
