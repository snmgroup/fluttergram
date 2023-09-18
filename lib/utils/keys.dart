import 'package:flutter_gram/utils/exporter.dart';

class Keys {
  Keys._();

  static GlobalKey<NavigatorState> navigatorkey = GlobalKey<NavigatorState>();
  static late GlobalKey<ScaffoldMessengerState> messengerKey;
  static late WidgetRef ref;
  static BuildContext get context => navigatorkey.currentContext!;
  static init(WidgetRef ref, context) {
    ref = ref;
    // context = context;
  }

  static AppLifecycleState? appState;
}
