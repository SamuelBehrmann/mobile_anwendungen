import 'package:flutter/material.dart';
import 'package:medi_support/ui/widgets/custom_cached_network_image.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? leading;
  final List<Widget> actions;
  final String? profilePicureUrl;

  static const double _toolbarHeight = kToolbarHeight;
  static const double _profilePictureWidth = 50.0;
  static const double _profilePictureHeight = 50.0;
  static const double _profilePicturePaddingRight = 16.0;
  static const double _profilePicturePaddingBottom = 4.0;

  const CustomAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions = const <Widget>[],
    this.profilePicureUrl,
  });

  @override
  Size get preferredSize => const Size.fromHeight(_toolbarHeight);

  @override
  Widget build(BuildContext context) => AppBar(
        title: Row(
          mainAxisSize:
              profilePicureUrl != null ? MainAxisSize.max : MainAxisSize.min,
          children: <Widget>[
            if (profilePicureUrl != null)
              Padding(
                padding: const EdgeInsets.only(
                  right: _profilePicturePaddingRight,
                  bottom: _profilePicturePaddingBottom,
                ),
                child: CustomCachedNetworkImage(
                  imageUrl: profilePicureUrl ?? '',
                  width: _profilePictureWidth,
                  height: _profilePictureHeight,
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
