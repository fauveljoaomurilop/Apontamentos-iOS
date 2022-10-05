import 'package:flutter/cupertino.dart';
import 'package:apontamentos_ios/screens/home.dart';

void main() => runApp(const ApontamentosApp());

class ApontamentosApp extends StatelessWidget {
  const ApontamentosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(),
      home: HomeScreen(),
    );
  }
}
