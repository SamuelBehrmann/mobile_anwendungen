import 'package:flutter/material.dart';
import 'package:medi_support/ui/screens/profile/profile_model.dart';
import 'package:medi_support/ui/widgets/custom_text_form_field.dart';
import 'package:medi_support/ui/widgets/profile_password.dart';
import 'package:medi_support/ui/widgets/custom_button.dart';

// TODO: user into model, define controller interface & implementation, controller method logout

const User dummyUser = User(
  name: 'John Dow',
  email: 'johnDow@gmail.com',
  phoneNumber: '1234567890',
);

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

  const ProfileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
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
                        labelText: 'Email',
                        hintText: 'Edit your email',
                        icon: Icons.email_outlined,
                      ),
                      SizedBox(height: _spaceBetweenGroups),
                      CustomTextFormField(
                        labelText: 'Phone Number',
                        hintText: 'Edit your phone number',
                        icon: Icons.smartphone_outlined,
                      ),
                      SizedBox(height: _spaceBetweenGroups),
                      PasswordField(
                        labelText: 'Password',
                        hintText: 'Edit your password',
                      ),
                      SizedBox(height: _emptySpaceAfterPassword),
                    ],
                  ),
                ],
              ),
            ),
            CustomButton(text: 'Logout', onPressed: () {}),
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
                child: Image.asset(
                  'assets/images/dummy_profile_pic.png',
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
                      // TODO: implementation
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
              dummyUser.name,
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
