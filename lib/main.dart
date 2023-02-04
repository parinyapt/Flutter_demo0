// import 'package:flutter/cupertino.dart'; // ios ui
// import 'package:flutter/material.dart'; // android ui
// import 'package:flutter/widgets.dart'; // according to os

import 'package:flutter/material.dart';

main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Text("SWU"),
      ),
    );
  }
}

