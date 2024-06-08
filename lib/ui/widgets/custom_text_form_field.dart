import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final bool includeTextField;
  final String labelText;
  final String hintText;
  final IconData? icon;

  const CustomTextFormField({
    super.key,
    this.includeTextField = true,
    required this.labelText,
    required this.hintText,
    this.icon,
  });

  @override
  CustomTextFormFieldState createState() => CustomTextFormFieldState();
}

class CustomTextFormFieldState extends State<CustomTextFormField> {
  static const EdgeInsets _contentPadding = EdgeInsets.all(15);
  static const EdgeInsets _paddingBetweenLabelField = EdgeInsets.only(top: 10);
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = <Widget>[];

    if (widget.includeTextField) {
      widgets.add(
        Text(
          widget.labelText,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      );
    }

    widgets.add(
      Padding(
        padding: widget.includeTextField ? _paddingBetweenLabelField : EdgeInsets.zero,
        child: TextFormField(
          controller: _controller,
          decoration: InputDecoration(
            contentPadding: _contentPadding,
            hintText: widget.hintText,
            border: const OutlineInputBorder(),
            prefixIcon: widget.icon != null ? Icon(widget.icon) : null,
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