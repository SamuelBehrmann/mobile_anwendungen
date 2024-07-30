import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets contentPadding;

  static const double _borderRadius = 12.0;
  static const double _borderWidth = 1.0;
  static const EdgeInsets _defaultContentPadding = EdgeInsets.all(16);

  const CustomCard({
    super.key,
    required this.child,
    this.contentPadding = _defaultContentPadding,
  });

  @override
  Widget build(BuildContext context) => Card(
        margin: EdgeInsets.zero,
        elevation: 0,
        borderOnForeground: true,
        color: Theme.of(context).colorScheme.surfaceBright,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_borderRadius),
          side: BorderSide(
            strokeAlign: BorderSide.strokeAlignInside,
            color: Theme.of(context).colorScheme.primaryContainer,
            width: _borderWidth,
          ),
        ),
        child: Padding(
          padding: contentPadding,
          child: child,
        ),
      );
}
