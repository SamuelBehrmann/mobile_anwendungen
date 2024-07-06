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
  late final FocusNode _focusNode;
  bool _isTextFieldVisible = true;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isTextFieldVisible) return const SizedBox.shrink();

    return TextField(
      controller: _controller,
      focusNode: _focusNode,
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
            FocusScope.of(context).unfocus();
            _hideTextField();
          },
          child: const Icon(Icons.send),
        ),
      ),
      onSubmitted: (String text) {
        widget.onSubmitted(text);
        _clearController();
        FocusScope.of(context).unfocus();
        _hideTextField();
      },
    );
  }

  void _clearController() => setState(_controller.clear);

  void _hideTextField() => setState(() => _isTextFieldVisible = false);
}
