import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';

class PostView extends StatelessWidget {
  final String postId;

  const PostView({super.key, required this.postId});

  @override
  Widget build(BuildContext context) =>
      Scaffold(appBar: CustomAppBar(title: some('Post: $postId')));
}
