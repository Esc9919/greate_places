import 'package:flutter/material.dart';
import 'package:greate_places/screens/place_form_screen.dart';
import 'package:greate_places/screens/places_list_screen.dart';
import 'package:greate_places/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Great Places',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.indigo,
          secondary: Colors.amber,
        ),
        canvasColor: Colors.white,
        useMaterial3: true,
      ),
      home: const PlacesListScreen(),
      routes: {
        AppRoutes.PLACE_FORM: (ctx) => const PlaceFormScreen(),
      },
    );
  }
}
