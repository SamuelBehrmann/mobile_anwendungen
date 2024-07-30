import 'package:flutter/material.dart';
import 'package:medi_support/ui/screens/profile/profile_controller.dart';
import 'package:medi_support/ui/screens/profile/profile_model.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/custom_cached_network_image.dart';
import 'package:medi_support/ui/widgets/custom_text_form_field.dart';

class ProfileView extends StatelessWidget {
  // Screen padding
  static const EdgeInsets _screenPadding = EdgeInsets.all(16.0);

  // Spacing
  static const double _spaceBetweenGroups = 30.0;
  static const double _emptySpaceAfterPassword = 80.0;
  static const double _paddingBetweenAvatarName = 18.0;
  static const double _paddingBetweenDescriptionField = 20.0;

  // Avatar
  static const double _avatarSize = 70.0;

  // Text field
  static const int _nameMaxLines = 1;
  static const int _descriptionMaxLines = 3;
  static const int _descriptionMinLines = 1;

  // Strings and labels
  static const String _appBarTitle = 'Profil';
  static const String _passwordLabel = 'Password';
  static const String _passwordHint = 'Edit your password';
  static const IconData _passwordIcon = Icons.lock_outline;
  static const String _phoneNumberLabel = 'Phone Number';
  static const String _phoneNumberHint = 'Edit your phone number';
  static const IconData _phoneNumberIcon = Icons.smartphone_outlined;
  static const String _emailLabel = 'Email';
  static const String _emailHint = 'Edit your email';
  static const IconData _emailIcon = Icons.email_outlined;
  static const String _nameHint = 'Name Lastname';
  static const String _descriptionHint = 'Description';
  static const IconData _defaultAvatarIcon = Icons.person_outline;

  final ProfileModel model;
  final ProfileController controller;

  const ProfileView({
    super.key,
    required this.model,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CustomAppBar(title: _appBarTitle),
        body: model.map(
          loading: _buildLoading,
          data: _buildData,
          error: _buildError,
        ),
      );

  Widget _buildData(ProfileModelData data) => Builder(
        builder: (BuildContext context) => Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                padding: _screenPadding,
                children: <Widget>[
                  _buildAvatar(data.user.profilePicturePath),
                  const SizedBox(height: _paddingBetweenAvatarName),
                  _buildNameAndDescription(
                    data.user.name,
                    data.user.description,
                  ),
                  const SizedBox(height: _paddingBetweenDescriptionField),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _buildEmailInput(data),
                      const SizedBox(height: _spaceBetweenGroups),
                      _buildPhoneNumberInput(data),
                      const SizedBox(height: _spaceBetweenGroups),
                      _buildPasswordInput(data),
                      const SizedBox(height: _emptySpaceAfterPassword),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget _buildPasswordInput(ProfileModelData data) => Builder(
        builder: (BuildContext context) => CustomTextFormField(
          onChanged: controller.updatePassword,
          initialText: data.user.name,
          label: _passwordLabel,
          hint: _passwordHint,
          icon: _passwordIcon,
          isPasswordField: true,
          onTapOutside: () => FocusScope.of(context).unfocus(),
        ),
      );

  Widget _buildPhoneNumberInput(ProfileModelData data) => Builder(
        builder: (BuildContext context) => CustomTextFormField(
          onChanged: controller.updatePhoneNumber,
          initialText: data.user.phoneNumber,
          label: _phoneNumberLabel,
          hint: _phoneNumberHint,
          icon: _phoneNumberIcon,
          onTapOutside: () => FocusScope.of(context).unfocus(),
        ),
      );

  Widget _buildEmailInput(ProfileModelData data) => Builder(
        builder: (BuildContext context) => CustomTextFormField(
          onChanged: controller.updateEmail,
          initialText: data.user.email,
          label: _emailLabel,
          hint: _emailHint,
          icon: _emailIcon,
          onTapOutside: () => FocusScope.of(context).unfocus(),
        ),
      );

  Widget _buildAvatar(final Uri? imageUrl) => CircleAvatar(
        radius: _avatarSize,
        child: imageUrl != null
            ? CustomCachedNetworkImage(imageUrl: imageUrl.toString())
            : const Icon(
                _defaultAvatarIcon,
                size: _avatarSize,
              ),
      );

  Widget _buildNameAndDescription(String userName, String? description) =>
      Builder(
        builder: (BuildContext context) => Column(
          children: <Widget>[
            TextFormField(
              initialValue: userName,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: _nameHint,
                border: InputBorder.none,
                isDense: true,
              ),
              style: Theme.of(context).textTheme.titleLarge,
              maxLines: _nameMaxLines,
              onChanged: (String value) => controller.updateName(value),
              onTapOutside: (_) => FocusScope.of(context).unfocus(),
            ),
            TextFormField(
              initialValue: description,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: _descriptionHint,
                border: InputBorder.none,
                isDense: true,
              ),
              minLines: _descriptionMinLines,
              maxLines: _descriptionMaxLines,
              onChanged: (String value) => controller.updateDescription(value),
              onTapOutside: (_) => FocusScope.of(context).unfocus(),
            ),
          ],
        ),
      );

  Widget _buildLoading(ProfileModelLoading _) =>
      const Center(child: CircularProgressIndicator());

  Widget _buildError(ProfileModelError error) => Center(
        child: Text(error.message),
      );
}
