import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:medi_support/ui/screens/create_post/create_post_controller.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/custom_text_form_field.dart';

class CreatePostView extends StatelessWidget {
  CreatePostView({super.key, required this.controller});
  final CreatePostController controller;

  final TextEditingController bodyController = TextEditingController();
  final TextEditingController titleController = TextEditingController();

  Widget _buildTitleField() => Builder(
        builder: (BuildContext context) => CustomTextFormField(
          hint: "title",
          label: 'Title',
          controller: titleController,
        ),
      );

  Widget _buildBodyField() => Builder(
        builder: (BuildContext context) => CustomTextFormField(
          hint: "body",
          label: 'Body',
          controller: bodyController,
          minLines: 5,
          maxLines: 25,
        ),
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(
          leading: some(
            IconButton(
              onPressed: controller.goHome,
              icon: const Icon(Icons.close),
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                controller.send(
                    body: bodyController.text, title: titleController.text);
              },
              icon: const Icon(Icons.send),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildTitleField(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildBodyField(),
              ),
            ],
          ),
        ),
      );
}
