import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String? label;
  final String hint;
  final IconData? icon;
  final bool isPasswordField;
  final TextEditingController? controller;
  final int minLines;
  final int maxLines;
  final void Function()? onTapOutside;

  const CustomTextFormField({
    super.key,
    this.label,
    required this.hint,
    this.icon,
    this.isPasswordField = false,
    this.controller,
    this.minLines = 1,
    this.maxLines = 1,
    this.onTapOutside,
  });

  @override
  CustomTextFormFieldState createState() => CustomTextFormFieldState();
}

class CustomTextFormFieldState extends State<CustomTextFormField> {
  static const EdgeInsets _contentPadding = EdgeInsets.all(16);
  static const double _paddingBetweenLabelField = 10;
  late TextEditingController _controller;
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _passwordVisible = !widget.isPasswordField;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (widget.label != null) ...<Widget>[
            Text(
              widget.label ?? '',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: _paddingBetweenLabelField),
          ],
          TextFormField(
            controller: _controller,
            obscureText: !widget.isPasswordField ? false : !_passwordVisible,
            onTapOutside: (_) => widget.onTapOutside?.call(),
            decoration: InputDecoration(
              contentPadding: _contentPadding,
              hintText: widget.hint,
              border: const OutlineInputBorder(),
              prefixIcon: widget.icon != null ? Icon(widget.icon) : null,
              suffixIcon: widget.isPasswordField
                  ? IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    )
                  : null,
            ),
            maxLines: widget.maxLines,
            minLines: widget.minLines,
          ),
        ],
      );
}
