import 'package:bot_toast/bot_toast.dart';
import 'package:country_picker/country_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'helpers/routes/app_routers.dart';
import 'helpers/theme/style.dart';
import 'helpers/theme/theme_enum.dart';
import 'view/layout/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ThemeEnumAdapter());
  await Hive.openBox('app');
  timeago.setLocaleMessages('en', timeago.EnMessages());
  timeago.setLocaleMessages('en_short', timeago.EnShortMessages());
  timeago.setLocaleMessages('ar', timeago.ArMessages());
  timeago.setLocaleMessages('ar_short', timeago.ArShortMessages());

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      path: 'i18n',
      fallbackLocale: const Locale('ar'),
      startLocale: const Locale('ar'),
      saveLocale: true,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static void setMyAppState(BuildContext context) async {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setMyAppState();
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void setMyAppState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ZMall",
      localizationsDelegates: [
        ...context.localizationDelegates,
        CountryLocalizations.delegate,
      ],
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: appThemeData(context),
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      initialRoute: HomeScreen.routeName,
      onGenerateRoute: AppRouters.onGenerateRoute,
      navigatorKey: AppRouters.navigatorKey,
    );
  }
}
