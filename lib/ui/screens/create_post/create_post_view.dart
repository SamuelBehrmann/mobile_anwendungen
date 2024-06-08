import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';

class CreatePostView extends StatelessWidget {
  const CreatePostView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(
          leading: some(
            IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          ),
        ),
      );
}
