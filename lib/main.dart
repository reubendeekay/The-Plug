import 'package:cleaner_app/providers/location_provider.dart';
import 'package:cleaner_app/screens/auth_screen/auth_screen.dart';
import 'package:cleaner_app/screens/service_detail/service_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LocationProvider()),
      ],
      child: GetMaterialApp(
        title: 'Cleaner App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.orange,
          scaffoldBackgroundColor: Colors.blueGrey[50],
        ),
        builder: (context, child) {
          return MediaQuery(
            child: child!,
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          );
        },
        home: const AuthScreen(),
        routes: {
          ServiceDetailsScreen.routeName: (ctx) => const ServiceDetailsScreen(),
        },
      ),
    );
  }
}
