import 'package:flutter/material.dart';
import 'package:medi_support/ui/widgets/custom_cached_network_image.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? leading;
  final List<Widget> actions;
  final String? profilePicureUrl;

  const CustomAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions = const <Widget>[],
    this.profilePicureUrl,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) => AppBar(
        title: Row(
          mainAxisSize:
              profilePicureUrl != null ? MainAxisSize.max : MainAxisSize.min,
          children: <Widget>[
            if (profilePicureUrl != null)
              Padding(
                padding: const EdgeInsets.only(right: 16.0, bottom: 4.0),
                child: CustomCachedNetworkImage(
                  imageUrl: profilePicureUrl ?? '',
                  width: 50,
                  height: 50,
                ),
              ),
            if (title != null)
              Flexible(
                child: Text(
                  title!,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
          ],
        ),
        centerTitle: true,
        leading: leading,
        actions: actions,
      );
}
