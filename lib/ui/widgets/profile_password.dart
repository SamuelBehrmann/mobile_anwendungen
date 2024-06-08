import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final String labelText;
  final String? hintText;
  final bool includeTextField;

  const PasswordField({
    super.key,
    required this.labelText,
    this.hintText,
    this.includeTextField = true,
  });

  @override
  PasswordFieldState createState() => PasswordFieldState();
}

class PasswordFieldState extends State<PasswordField> {
  static const EdgeInsets _contentPadding = EdgeInsets.all(15);
  static const EdgeInsets _paddingBetweenLabelField = EdgeInsets.only(top: 10);
  bool _passwordVisible = false;

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
          obscureText: !_passwordVisible,
          decoration: InputDecoration(
            hintText: widget.hintText,
            border: const OutlineInputBorder(),
            contentPadding: _contentPadding,
            prefixIcon: const Icon(Icons.lock_outline),
            suffixIcon: IconButton(
              icon: Icon(
                _passwordVisible ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              },
            ),
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