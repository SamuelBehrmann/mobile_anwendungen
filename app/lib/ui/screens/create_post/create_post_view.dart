import 'package:flutter/material.dart';
import 'package:medi_support/ui/screens/create_post/create_post_controller.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/custom_text_form_field.dart';

class CreatePostView extends StatefulWidget {
  CreatePostView({super.key, required this.controller});
  final CreatePostController controller;

  @override
  State<CreatePostView> createState() => _CreatePostViewState();
}

class _CreatePostViewState extends State<CreatePostView> {
  late final TextEditingController bodyController;
  late final TextEditingController titleController;

  @override
  void initState() {
    super.initState();
    bodyController = TextEditingController();
    titleController = TextEditingController();
  }

  @override
  void dispose() {
    bodyController.dispose();
    titleController.dispose();
    super.dispose();
  }

  Widget _buildTitleField() => Builder(
        builder: (BuildContext context) => CustomTextFormField(
          hint: "Titel",
          label: 'Titel',
          controller: titleController,
          onTapOutside: FocusScope.of(context).unfocus,
        ),
      );

  Widget _buildBodyField() => Builder(
        builder: (BuildContext context) => CustomTextFormField(
          hint: "Ich habe ...",
          label: 'Beitrag',
          controller: bodyController,
          minLines: 5,
          maxLines: 25,
          onTapOutside: FocusScope.of(context).unfocus,
        ),
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(
          leading: IconButton(
            onPressed: () {
              widget.controller.goHome();
              bodyController.clear();
              titleController.clear();
            },
            icon: const Icon(Icons.close),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                widget.controller.send(
                  body: bodyController.text,
                  title: titleController.text,
                  onSend: () {
                    bodyController.clear();
                    titleController.clear();
                  },
                );
              },
              icon: const Icon(Icons.send),
            ),
          ],
        ),
        body: ListView(
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
      );
}