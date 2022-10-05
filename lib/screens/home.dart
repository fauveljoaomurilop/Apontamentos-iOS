import 'package:flutter/cupertino.dart';
import 'package:apontamentos_ios/screens/parada.dart';
import 'package:apontamentos_ios/screens/perfil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.clock),
              label: 'Paradas',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled),
              label: 'Perfil',
            ),
          ],
        ),
        tabBuilder: (context, index) {
          return (index == 0)
              ? CupertinoTabView(builder: (context) => const ParadaScreen())
              : CupertinoTabView(builder: (context) => const PerfilScreen());
        });
  }
}
