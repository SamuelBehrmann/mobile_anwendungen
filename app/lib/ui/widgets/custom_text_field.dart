import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final void Function(String message) onSubmitted;
  final VoidCallback? onTapOutside;
  const CustomTextField({
    super.key,
    required this.onSubmitted,
    this.onTapOutside,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
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
          border: const OutlineInputBorder(),
          labelText: 'Enter a reply',
          suffixIcon: GestureDetector(
            onTap: () {
              widget.onSubmitted(_controller.text);
              _clearController();
            },
            child: const Icon(Icons.send),
          ),
        ),
        onSubmitted: (String text) {
          widget.onSubmitted(text);
          _clearController();
        },
      );

  void _clearController() => setState(_controller.clear);
}
