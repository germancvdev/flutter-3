import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:peru/src/shared/providers/theme.dart';
import 'package:peru/src/shared/router.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  final settings = ValueNotifier(ThemeSettings(
    sourceColor: Colors.redAccent,
    themeMode: ThemeMode.system,
  ));

  @override
  Widget build(BuildContext context) {
    print(settings.value.sourceColor.value);
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) => ThemeProvider(
        lightDynamic: lightDynamic,
        darkDynamic: darkDynamic,
        settings: settings,
        key: const Key('DynamicColor'),
        child: NotificationListener<ThemeSettingChange>(
          onNotification: (notification) {
            settings.value = notification.settings;
            return true;
          },
          child: ValueListenableBuilder<ThemeSettings>(
            valueListenable: settings,
            builder: (context, value, _) {
              final theme = ThemeProvider.of(context);
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: theme.light(settings.value.sourceColor),
                darkTheme: theme.dark(settings.value.sourceColor),
                themeMode: theme.themeMode(),
                // theme: ThemeData(
                //   useMaterial3: true,
                //   primarySwatch: Colors.pink,
                // ),
                routeInformationParser: appRouter.routeInformationParser,
                routerDelegate: appRouter.routerDelegate,
              );
            },
          ),
        ),
      ),
    );
  }
}
