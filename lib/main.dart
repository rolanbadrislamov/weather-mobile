import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/hourlyWeatherScreen.dart';
import './provider/weatherProvider.dart';
import 'screens/weeklyWeatherScreen.dart';
import 'screens/homeScreen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  final TextStyle _mainstyle = TextStyle(
    fontFamily: "Barlow",
  );
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      child: MaterialApp(
        title: 'Flutter Weather',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextTheme(
            displayLarge: _mainstyle,
            displayMedium: _mainstyle,
            displaySmall: _mainstyle,
            headlineLarge: _mainstyle,
            headlineMedium: _mainstyle,
            headlineSmall: _mainstyle,
            titleLarge: _mainstyle,
            titleMedium: _mainstyle,
            titleSmall: _mainstyle,
            bodyLarge: _mainstyle,
            bodyMedium: _mainstyle,
            bodySmall: _mainstyle,
            labelLarge: _mainstyle,
            labelMedium: _mainstyle,
            labelSmall: _mainstyle,
          ),
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
              color: Colors.blue[800],
            ),
            elevation: 0,
          ),
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.blue[800],
          visualDensity: VisualDensity.adaptivePlatformDensity,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
        ),
        home: HomeScreen(),
        routes: {
          WeeklyScreen.routeName: (myCtx) => WeeklyScreen(),
          HourlyScreen.routeName: (myCtx) => HourlyScreen(),
        },
      ),
    );
  }
}
