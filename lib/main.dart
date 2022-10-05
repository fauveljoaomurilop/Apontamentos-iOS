import 'package:flutter/cupertino.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(),
      home: HomeScreen(),
    );
  }
}

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
              icon: Icon(CupertinoIcons.person),
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
