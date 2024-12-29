import 'package:flutter/material.dart';
import 'package:sevenapp/Widgets/wrapper.dart';
import 'package:sevenapp/services/userservice.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: UserServices.checkHasUserName(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else {
          bool hasUserName = snapshot.data ?? false;

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Wrapper(showmainPage: hasUserName),
          );
        }
      },
    );
  }
}
