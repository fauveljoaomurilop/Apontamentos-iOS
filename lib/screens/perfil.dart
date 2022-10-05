import 'package:flutter/cupertino.dart';

// class PerfilScreen extends StatelessWidget {
//   const PerfilScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//         navigationBar: const CupertinoNavigationBar(
//           middle: Text('Perfil'),
//         ),
//         child: Center(
//           child: Text('This is the Perfil screen!',
//               style:
//                   CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle),
//         ));
//   }
// }

class PerfilScreen extends StatefulWidget {
  const PerfilScreen({Key? key}) : super(key: key);

  @override
  State<PerfilScreen> createState() => _PerfilFormState();
}

class _PerfilFormState extends State<PerfilScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Perfil'),
        ),
        child: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Text('Test')),
              ],
            ),
          ],
        ));
  }
}
