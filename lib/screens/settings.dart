import 'package:flutter/material.dart';
import 'package:rainbow_hack/screens/src/settings_list.dart';
import 'package:rainbow_hack/screens/src/settings_section.dart';
import 'package:rainbow_hack/screens/src/settings_tile.dart';
import 'package:rainbow_hack/widgets/menu_drawer.dart';

class SettingScreen extends StatelessWidget {
  static String routeName = "settings";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      drawer: MainDrawer(),
      body: Container(
        child: SettingsList(
          sections: [
            SettingsSection(
              title: 'Section',
              tiles: [
                SettingsTile(
                  title: 'Language',
                  subtitle: 'English',
                  leading: Icon(Icons.language),
                  onTap: () {},
                ),
                SettingsTile.switchTile(
                  title: 'Use fingerprint',
                  leading: Icon(Icons.fingerprint),
                  switchValue: true,
                  onToggle: (bool value) {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
