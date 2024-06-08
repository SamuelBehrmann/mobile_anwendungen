import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:medi_support/ui/screens/profile/profile_controller.dart';
import 'package:medi_support/ui/screens/profile/profile_model.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/custom_cached_network_image.dart';
import 'package:medi_support/ui/widgets/custom_text_form_field.dart';

class ProfileView extends StatelessWidget {
  static const EdgeInsets _screenPadding = EdgeInsets.all(16);
  static const double _spaceBetweenGroups = 30;
  static const double _emptySpaceAfterPassword = 80;
  static const double _paddingBetweenAvatarName = 18;
  static const double _paddingBetweenDescriptionField = 20;
  static const double _avatarSize = 70;
  static const double _paddingAvatarIcon = 4;
  static const double _containerSize = 35;
  static const double _positionAvatarIcon = 10;

  final ProfileModel model;
  final ProfileController controller;

  const ProfileView({
    super.key,
    required this.model,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(
          title: some('Profile'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                padding: _screenPadding,
                children: <Widget>[
                  _buildAvatar(),
                  const SizedBox(height: _paddingBetweenAvatarName),
                  _buildNameAndDescription(),
                  const SizedBox(height: _paddingBetweenDescriptionField),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CustomTextFormField(
                        label: 'Email',
                        hint: 'Edit your email',
                        icon: Icons.email_outlined,
                      ),
                      SizedBox(height: _spaceBetweenGroups),
                      CustomTextFormField(
                        label: 'Phone Number',
                        hint: 'Edit your phone number',
                        icon: Icons.smartphone_outlined,
                      ),
                      SizedBox(height: _spaceBetweenGroups),
                      CustomTextFormField(
                        label: 'Password',
                        hint: 'Edit your password',
                        icon: Icons.lock_outline,
                        isPasswordField: true,
                      ),
                      SizedBox(height: _emptySpaceAfterPassword),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: _screenPadding,
              child: OutlinedButton(
                onPressed: () => controller.logout,
                style: Theme.of(context).outlinedButtonTheme.style,
                child: Text(
                  'Logout',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
          ],
        ),
      );

  Widget _buildAvatar() => Builder(
        builder: (BuildContext context) => FittedBox(
          fit: BoxFit.scaleDown,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: _avatarSize,
                child: model.user.profilePicturePath != null
                    ? CustomCachedNetworkImage(
                        imageUrl: model.user.profilePicturePath!,
                      )
                    : const Icon(
                        Icons.person_outline,
                        size: _avatarSize,
                      ),
              ),
              Positioned(
                right: _positionAvatarIcon,
                bottom: 0,
                child: Container(
                  width: _containerSize,
                  height: _containerSize,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.outline,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.create_outlined,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    onPressed: () {
                      controller.editProfil();
                    },
                    padding: const EdgeInsets.all(_paddingAvatarIcon),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buildNameAndDescription() => Builder(
        builder: (BuildContext context) => Column(
          children: <Widget>[
            Text(
              model.user.name,
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            TextFormField(
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: 'Description',
                border: InputBorder.none,
              ),
              maxLines: 1,
            ),
          ],
        ),
      );
}
