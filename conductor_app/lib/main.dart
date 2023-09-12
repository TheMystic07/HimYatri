import 'package:conductor_app/pages/splashscreen/splash.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp(
    child: MaterialApp(
      title: 'Bus Demo',
      home: Splash(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class MyApp extends StatefulWidget {
  final Widget? child; // wtf  if null safety
  // bhenco pta nahi par yeh ! aur ? uske liye hi hai , ki jo input aa  rha voh null na hoo
  //achha hai par mere 2 ghanthe  mujeh vapis dedo
  const MyApp({super.key, this.child});

  static void restartApp(BuildContext context) {
    context.findRootAncestorStateOfType<_MyAppState>()!.restartApp();
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Key key = UniqueKey();
  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child!,
    );
  }
}
