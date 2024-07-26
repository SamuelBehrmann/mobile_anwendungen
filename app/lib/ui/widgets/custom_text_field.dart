import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final void Function(String message) onSubmitted;
  final VoidCallback? onTapOutside;
  final String? hint;

  const CustomTextField({
    super.key,
    required this.onSubmitted,
    this.hint,
    this.onTapOutside,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  static final BorderRadius _buttonBorderRadius = BorderRadius.circular(32.0);
  static const EdgeInsets contentPadding =
      EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0);
  late final TextEditingController _controller;

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
  Widget build(BuildContext context) => TextField(
        controller: _controller,
        onTapOutside: (_) {
          FocusScope.of(context).unfocus();
          widget.onTapOutside?.call();
        },
        autofocus: true,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: widget.hint,
          contentPadding: contentPadding,
          border: OutlineInputBorder(
            borderRadius: _buttonBorderRadius,
          ),
          suffixIcon: IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              widget.onSubmitted(_controller.text);
              FocusScope.of(context).unfocus();
              _clearController();
            },
          ),
        ),
        onSubmitted: (String text) {
          widget.onSubmitted(text);
          FocusScope.of(context).unfocus();
          _clearController();
        },
      );

  void _clearController() => setState(_controller.clear);
}
