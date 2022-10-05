import 'package:flutter/cupertino.dart';

class ParadaScreen extends StatelessWidget {
  const ParadaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Parada'),
        ),
        child: Center(
          child: Text('This is the Parada screen!',
              style:
                  CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle),
        ));
  }
}
