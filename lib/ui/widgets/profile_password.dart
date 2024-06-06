import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  PasswordFieldState createState() => PasswordFieldState();
}

class PasswordFieldState extends State<PasswordField> {
  static const double _inputFieldPadding = 15;
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) => TextFormField(
        obscureText: !_passwordVisible,
        decoration: InputDecoration(
          hintText: 'Edit your password',
          border: const OutlineInputBorder(),
          contentPadding: const EdgeInsets.all(_inputFieldPadding),
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
      );
}