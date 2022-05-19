import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:peru/src/home/view.dart';
import 'package:peru/src/shared/providers/theme.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  final settings = ValueNotifier(ThemeSettings(
    sourceColor: Colors.lightBlue,
    themeMode: ThemeMode.system,
  ));
  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) => ThemeProvider(
        lightDynamic: lightDynamic,
        darkDynamic: darkDynamic,
        settings: settings,
        child: NotificationListener<ThemeSettingChange>(
          onNotification: (notification) {
            settings.value = notification.settings;
            return true;
          },
          child: ValueListenableBuilder<ThemeSettings>(
            valueListenable: settings,
            builder: (context, value, _) {
              final theme = ThemeProvider.of(context);
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: theme.light(settings.value.sourceColor),
                darkTheme: theme.dark(settings.value.sourceColor),
                themeMode: theme.themeMode(),
                home: const MyHomePage(),
                // routeInformationParser: appRouter.routeInformationParser,
                // routerDelegate: appRouter.routerDelegate,
              );
            },
          ),
        ),
      ),
    );
  }
}
