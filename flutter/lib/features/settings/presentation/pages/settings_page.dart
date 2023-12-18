import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_news/configurations/configurations.dart';
import 'package:my_news/features/authentication/authentication.dart';
import 'package:my_news/features/settings/blocs/setting_cubit.dart';
import 'package:progress_builder/progress_builder.dart';

import '../../../app/presentation/widgets/app_switch.dart';
import '../../../app/presentation/widgets/list_text_widget.dart';
import '../../../app/presentation/widgets/my_favorites.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authCubit = context.read<AuthCubit>();
    final settingsCubit = context.read<SettingCubit>();
    final state = settingsCubit.state;
    final AppUser profile = authCubit.state.user!;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(kPadding * 2),
        child: ListView(
          children: [
            Text(
              'Settings',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: kPadding * 3),
            Center(
                child: GestureDetector(
              onTap: () async => await settingsCubit.updateProfilePicture(),
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.grey[300], shape: BoxShape.circle),
                child: Stack(
                  alignment: Alignment.center,
                  fit: StackFit.expand,
                  children: [
                    const Icon(Icons.person_add, size: 50, color: Colors.grey),
                    BlocBuilder<AuthCubit, AuthState>(
                      buildWhen: (previous, current) =>
                          previous.user?.profilePicture !=
                          current.user?.profilePicture,
                      builder: (context, authState) {
                        final profileUrl = authState.user?.profilePicture;
                        return (profileUrl == null)
                            ? const Offstage()
                            : BlocBuilder<SettingCubit, SettingState>(
                                buildWhen: (previous, current) =>
                                    previous.profilePicture !=
                                    current.profilePicture,
                                builder: (context, settingState) {
                                  final newProfilePicture =
                                      settingState.profilePicture;
                                  return ClipRRect(
                                      borderRadius: BorderRadius.circular(75),
                                      child: newProfilePicture == null
                                          ? Image.network(profileUrl,
                                              fit: BoxFit.cover)
                                          : Image.file(newProfilePicture,
                                              fit: BoxFit.cover));
                                },
                              );
                      },
                    ),
                  ],
                ),
              ),
            )),
            const SizedBox(height: kPadding * 3),
            Text(
              'Account',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: kPadding * 1.25),
            TextField(
              controller: TextEditingController(
                  text: settingsCubit.newProfileName ?? ''),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'name',
                hintText: 'example example',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => settingsCubit.newProfileName = value,
            ),
            const SizedBox(height: kPadding * 1.25),
            TextField(
              readOnly: true,
              controller: TextEditingController(text: profile.email),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.alternate_email),
                labelText: 'Email',
                hintText: 'example@gmail.com',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: kPadding * 1.25),
            if(profile.isAdmin) ...[
              // const Text('Admin Profile'),
              // const SizedBox(height: kPadding * 1.25),

              Center(
                child: CircularProgressBuilder(
                  onSuccess: () =>
                      DjangoflowAppSnackbar.showInfo('Profile Updated'),
                  onError: (e) => throw (e),
                  action: (_) async => await settingsCubit.updateNews(),
                  builder: (_, action, __) => OutlinedButton(
                    onPressed: action,
                    child: const Text('Update News'),
                  ),
                ),
              ),
            ],
            // MyFavorites(
            //     favorites: state.favorites,
            //     allTypes: categoryList,
            //     onChange: settingsCubit.updateFavorites),
            // const SizedBox(height: kPadding * 1.25),
            // BlocBuilder<SettingCubit, SettingState>(
            //   builder: (context, state) => AppSwitch(
            //       value: state.notificationsEnabled,
            //       onChanged: settingsCubit.toggleNotifications,
            //       label: 'Notifications'),
            // ),
            const SizedBox(height: kPadding * 1.25),
            Center(
              child: CircularProgressBuilder(
                onSuccess: () =>
                    DjangoflowAppSnackbar.showInfo('New News Updated'),
                onError: (e) => throw (e),
                action: (_) async => await settingsCubit.saveSettings(),
                builder: (_, action, __) => OutlinedButton(
                  onPressed: action,
                  child: const Text('Save'),
                ),
              ),
            ),
            const SizedBox(height: kPadding * 1.25),
            Center(
              child: CircularProgressBuilder(
                onSuccess: () =>
                    DjangoflowAppSnackbar.showInfo('Logout Success'),
                onError: (e) => throw (e),
                action: (_) async => await authCubit.logout(),
                builder: (_, action, __) => ElevatedButton(
                  onPressed: action,
                  child: const Text('Log Out'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
