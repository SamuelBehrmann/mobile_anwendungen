import 'package:flutter/material.dart';
import 'package:medi_support/ui/screens/create_post/create_post_controller.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/custom_text_form_field.dart';

class CreatePostView extends StatefulWidget {
  const CreatePostView({super.key, required this.controller});
  final CreatePostController controller;

  @override
  State<CreatePostView> createState() => _CreatePostViewState();
}

class _CreatePostViewState extends State<CreatePostView> {
  static const EdgeInsets _screenPadding =
      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0);
  static const String _titleHint = "Title";
  static const String _titleLabel = "Title";
  static const String _bodyHint = "I have ...";
  static const String _bodyLabel = "Post";
  static const IconData _closeIcon = Icons.close;
  static const IconData _sendIcon = Icons.send;
  static const int _minLinesBody = 5;
  static const int _maxLinesBody = 25;

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

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(
          leading: IconButton(
            onPressed: () {
              widget.controller.goHome();
              bodyController.clear();
              titleController.clear();
            },
            icon: const Icon(_closeIcon),
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
              icon: const Icon(_sendIcon),
            ),
          ],
        ),
        body: ListView(
          padding: _screenPadding,
          children: <Widget>[
            _buildTitleField(),
            _buildBodyField(),
          ],
        ),
      );

  Widget _buildTitleField() => Builder(
        builder: (BuildContext context) => CustomTextFormField(
          hint: _titleHint,
          label: _titleLabel,
          controller: titleController,
          onTapOutside: FocusScope.of(context).unfocus,
        ),
      );

  Widget _buildBodyField() => Builder(
        builder: (BuildContext context) => CustomTextFormField(
          hint: _bodyHint,
          label: _bodyLabel,
          controller: bodyController,
          minLines: _minLinesBody,
          maxLines: _maxLinesBody,
          onTapOutside: FocusScope.of(context).unfocus,
        ),
      );
}
