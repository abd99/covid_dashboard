import 'package:covid_dashboard/src/resources/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bloc/stats_bloc.dart';
import 'ui/screens/details_page.dart';
import 'ui/screens/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StatsBloc(Repository()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          appBarTheme: AppBarTheme(
            brightness: Brightness.light,
            color: Colors.white,
          ),
        ),
        routes: {
          HomePage.routeName: (context) => HomePage(),
          DetailsPage.routeName: (context) => DetailsPage(),
        },
        initialRoute: HomePage.routeName,
      ),
    );
  }
}
