import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'icon_row.freezed.dart';

class IconRow extends StatelessWidget {
  final double iconSize;
  final Iterable<IconWithLabel> icons;
  final MainAxisAlignment mainAxisAlignment;
  final void Function({required String value})? onIconPressed;

  const IconRow({
    super.key,
    required this.iconSize,
    required this.icons,
    this.mainAxisAlignment = MainAxisAlignment.spaceEvenly,
    this.onIconPressed,
  });

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: Theme.of(context).colorScheme.surface,
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          children: icons
              .map(
                (IconWithLabel element) => IconButton(
                  iconSize: iconSize,
                  onPressed: () => onIconPressed?.call(value: element.label),
                  icon: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        element.icon,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      Text(
                        element.label,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      );
}

@freezed
class IconWithLabel with _$IconWithLabel {
  const factory IconWithLabel(
    IconData icon,
    String label,
  ) = _IconWithLabel;
}
