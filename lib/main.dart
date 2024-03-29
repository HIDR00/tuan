import "package:setting_tab/Tuan/monhoc_state.dart";
import "package:setting_tab/widgets/formnhapSV.dart";

import "/widgets/homepage.dart";
import "/models/user_interface.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserInterface()),
        ChangeNotifierProvider(create: (context) => StudentProvider()),
        ChangeNotifierProvider(create: (context) => MonHocState(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
            home: MyHomePage(),
      ),
    );
  }
}