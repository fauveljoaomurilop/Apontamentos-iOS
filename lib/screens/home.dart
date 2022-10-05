import 'package:flutter/cupertino.dart';

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
        tabBuilder: (context, i) {
          return CupertinoTabView(
            builder: (context) {
              return CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  middle:
                  (i == 0) ? const Text('Paradas') : const Text('Perfil'),
                ),
                child: Center(
                  child: Text('Hello tab $i',
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .navLargeTitleTextStyle),
                ),
              );
            },
          );
        });
  }
}
