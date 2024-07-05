import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets contentPadding;

  const CustomCard({
    super.key,
    required this.child,
    this.contentPadding = const EdgeInsets.all(16),
  });

  @override
  Widget build(BuildContext context) => Card(
        margin: EdgeInsets.zero,
        elevation: 0,
        borderOnForeground: true,
        color: Theme.of(context).colorScheme.surfaceBright,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            strokeAlign: BorderSide.strokeAlignInside,
            color: Theme.of(context).colorScheme.primaryContainer,
            width: 1,
          ),
        ),
        child: Padding(
          padding: contentPadding,
          child: child,
        ),
      );
}
