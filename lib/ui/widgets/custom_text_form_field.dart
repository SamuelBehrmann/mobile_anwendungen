import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  static const EdgeInsets _contentPadding = EdgeInsets.all(15);
  static const EdgeInsets _paddingBetweenLabelField = EdgeInsets.only(top: 10);

  final String labelText;
  final String? hintText;
  final IconData? icon;
  final bool includeTextField;

  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.hintText,
    this.icon,
    this.includeTextField = true,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = <Widget>[];

    if (includeTextField) {
      widgets.add(
        Text(
          labelText,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      );
    }

    widgets.add(
      Padding(
        padding: includeTextField ? _paddingBetweenLabelField : EdgeInsets.zero,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            border: const OutlineInputBorder(),
            contentPadding: _contentPadding,
            prefixIcon: icon != null ? Icon(icon) : null,
          ),
          maxLines: 1,
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widgets,
    );
  }
}
