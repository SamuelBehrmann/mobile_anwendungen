import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Option<String> title;
  final Option<Widget> leading;
  final List<Widget> actions;

  const CustomAppBar({
    super.key,
    this.title = const None(),
    this.leading = const None(),
    this.actions = const <Widget>[],
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) => AppBar(
        title: title
            .map(
              (String title) => Text(
                title,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
              ),
            )
            .toNullable(),
        centerTitle: true,
        leading: leading.toNullable(),
        actions: actions,
      );
}
