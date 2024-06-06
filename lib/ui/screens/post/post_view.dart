import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(
          title: some('Title of the Post'),
          leading: some(
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          ),
        ),
      );
}
