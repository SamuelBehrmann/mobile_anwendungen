import 'package:flutter/material.dart';
import 'package:medi_support/ui/screens/profile/profile_model.dart';
import 'package:medi_support/ui/widgets/profile_password.dart';

const User dummyUser = User(
  name: 'John Dow',
  email: 'johnDow@gmail.com',
  phoneNumber: '1234567890',
);

class ProfileView extends StatelessWidget {
  const ProfileView({
    super.key,
  });

  static const double _screenPadding = 16;
  static const double _spaceBetweenGroups = 30;
  static const double _emptySpaceAfterPassword = 80;
  static const double _paddingBetweenTitleField = 12;
  static const double _paddingBetweenAvatarName = 18;
  static const double _paddingBetweenDescriptionField = 20;
  static const double _inputFieldPadding = 15;
  static const double _avatarSize = 70;
  static const double _paddingAvatarIcon = 4;
  static const double _containerSize = 35;
  static const double _positionAvatarIcon = 10;
  static const double _logoutButtonWidth = 330;
  static const double _logoutButtonHeight = 50;
  static const double _logoutButtonBorderWidth = 0.8;
  static const double _logoutButtonBorderRadius = 30;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(_screenPadding),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: <Widget>[
                          CircleAvatar(
                            radius: _avatarSize,
                            child: Image.asset(
                              'assets/images/dummy_profile_pic.png',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: _positionAvatarIcon,
                            ),
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
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                                onPressed: () {
                                  // TODO: implementation
                                },
                                padding:
                                    const EdgeInsets.all(_paddingAvatarIcon),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: _paddingBetweenAvatarName),
                      Text(
                        dummyUser.name,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      TextFormField(
                        initialValue: '',
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          hintText: 'Description',
                          border: InputBorder.none,
                        ),
                        // maxLines: 3,
                      ),
                      const SizedBox(height: _paddingBetweenDescriptionField),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Group 1: Email
                          Text(
                            'Email',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: _paddingBetweenTitleField,
                            ),
                            child: TextFormField(
                              initialValue: '',
                              decoration: const InputDecoration(
                                hintText: 'Edit your email',
                                border: OutlineInputBorder(),
                                contentPadding:
                                    EdgeInsets.all(_inputFieldPadding),
                                prefixIcon: Icon(Icons.email_outlined),
                              ),
                            ),
                          ),
                          const SizedBox(height: _spaceBetweenGroups),

                          // Group 2: Phone Number
                          Text(
                            'Phone Number',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: _paddingBetweenTitleField,
                            ),
                            child: TextFormField(
                              initialValue: '',
                              decoration: const InputDecoration(
                                hintText: 'Edit your phone number',
                                border: OutlineInputBorder(),
                                contentPadding:
                                    EdgeInsets.all(_inputFieldPadding),
                                prefixIcon: Icon(Icons.smartphone_outlined),
                              ),
                            ),
                          ),
                          const SizedBox(height: _spaceBetweenGroups),

                          // Group 3: Password
                          Text(
                            'Password',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(top: _paddingBetweenTitleField),
                            child: PasswordField(),
                          ),
                          const SizedBox(height: _emptySpaceAfterPassword),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(_screenPadding),
              child: ElevatedButton(
                onPressed: () {
                  // TODO: implementation
                },
                style: ElevatedButton.styleFrom(
                  minimumSize:
                      const Size(_logoutButtonWidth, _logoutButtonHeight),
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(_logoutButtonBorderRadius),
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      width: _logoutButtonBorderWidth,
                    ),
                  ),
                ),
                child: Text(
                  'Logout',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
          ],
        ),
      );
}
