import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class NotificationSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Notifications Settings"),
        ),
        body: SettingsGroup(
          title: 'Group title',
          children: <Widget>[
            CheckboxSettingsTile(
              settingKey: 'key-day-light-savings',
              title: 'Daylight Time Saving',
              enabledLabel: 'Enabled',
              disabledLabel: 'Disabled',
              leading: Icon(Icons.timelapse),
            ),
            SwitchSettingsTile(
              settingKey: 'key-dark-mode',
              title: 'Dark Mode',
              enabledLabel: 'Enabled',
              disabledLabel: 'Disabled',
              leading: Icon(Icons.palette),
            ),
          ],
        ));
  }
}
