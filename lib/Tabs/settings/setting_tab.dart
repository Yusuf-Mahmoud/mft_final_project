import 'package:flutter/material.dart';
import 'package:mft_final_project/Tabs/settings/settingprovider.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final settingsProvider = Provider.of<settingsprovider>(context);

    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SettingsTab'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (settingsProvider.languagecode == 'ar') {
                  settingsProvider.changelanguage('en');
                } else {
                  settingsProvider.changelanguage('ar');
                }
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor:
                    Colors.blue, // لون النص عندما يكون الزر غير مضغوط
                padding: EdgeInsets.symmetric(
                    horizontal: 20, vertical: 10), // التباعد الداخلي
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)), // شكل الحواف
              ),
              child: Icon(
                Icons.language,
                size: 40, // حجم الأيقونة
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (settingsProvider.themeMode == ThemeMode.light) {
                  settingsProvider.changetheme(ThemeMode.dark);
                } else {
                  settingsProvider.changetheme(ThemeMode.light);
                }
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor:
                    Colors.blue, // لون النص عندما يكون الزر غير مضغوط
                padding: EdgeInsets.symmetric(
                    horizontal: 20, vertical: 10), // التباعد الداخلي
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)), // شكل الحواف
              ),
              child: Icon(
                Icons.lightbulb,
                size: 40, // حجم الأيقونة
              ),
            ),
          ],
        ),
      ),
    );
  }
}
