import 'package:flutter/material.dart';
import 'package:task_flutter/connectivity.dart';
import 'package:task_flutter/screens/first_screen.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:task_flutter/show_toast.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Connectivity().onConnectivityChanged.listen((event) {
    checkConnectivity(event);
  },);
  InternetConnectionChecker().onStatusChange.listen(
        (event) {
      if (event == InternetConnectionStatus.disconnected) {
        showToast('انت غير متصل بالانترنت');
      } else {
        showToast( 'انت متصل ',color: Colors.green);
      }
    },
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FirstScreen(),
    );
  }
}
