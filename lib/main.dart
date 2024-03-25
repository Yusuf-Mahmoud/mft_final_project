import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mft_final_project/Tabs/settings/settingprovider.dart';
import 'package:mft_final_project/Theme.dart';
import 'package:mft_final_project/homescreen.dart';
import 'package:mft_final_project/login.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(ChangeNotifierProvider(    
      create: (context) {
        return settingsprovider();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    settingsprovider settingsproviderr = Provider.of<settingsprovider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(settingsproviderr.languagecode),
      themeMode: settingsproviderr.themeMode,
      darkTheme: apptheme.darktheme,
      theme: apptheme.lighttheme,
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
      },
    );
  }
}
