import 'package:flutter/gestures.dart';
import 'package:flutter_gram/common_widgets/loader.dart';
import 'package:flutter_gram/utils/exporter.dart';
import 'package:flutter_gram/utils/theme.dart';

class FlutterGramApp extends ConsumerStatefulWidget {
  /// Our Material App holder with WidgetsBindingObserver
  ///
  /// Global ref is available in init.
  ///
  /// Global theme settings.
  ///
  /// Navigator key is assigned.
  ///
  /// Custom Scroll behaviour for windows to drag and use ui efficiently.
  ///
  /// Screen util is used for resopnsiveness across widget trees of the app.
  const FlutterGramApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FlutterGramAppState();
}

class _FlutterGramAppState extends ConsumerState<FlutterGramApp>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    Keys.ref = ref;
    Keys.appState = WidgetsBinding.instance.lifecycleState;
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    // CustomKeys.appState = WidgetsBinding.instance.lifecycleState;
    if (state == AppLifecycleState.inactive) {
      //  print('app inactive');
    } else if (state == AppLifecycleState.resumed) {
      try {
        //
      } catch (e) {
        //print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          scrollBehavior: CustomScrollBehaviorForWindows(),
          navigatorKey: Keys.navigatorkey,
          title: 'FluttergramApp',
          theme:
              darkTheme, // use lightTheme for light & darkTheme for dark (Feature will be added later)
          home: const Loader(),
        );
      },
    );
  }
}

class CustomScrollBehaviorForWindows extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
