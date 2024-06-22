import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? leading;
  final List<Widget> actions;

  const CustomAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions = const <Widget>[],
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) => AppBar(
        title: title != null
            ? Text(
                title!,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
              )
            : null,
        centerTitle: true,
        leading: leading,
        actions: actions,
      );
}
