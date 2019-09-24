import 'package:flutter/material.dart';
import 'package:receipe_app/screens/filters_screen.dart';
import 'package:receipe_app/screens/tab_screen.dart';

import 'screens/meal_detail_screen.dart';
import 'screens/catogories_screen.dart';
import 'screens/catrgory_meals_screen.dart';

void main() => runApp(RecipeApp());

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.purpleAccent,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              title: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      routes: {
        '/': (context) => TabsScreen(),
        CategoryMeals.routeName: (context) => CategoryMeals(),
        MealDetailsScreen.routeName: (context) => MealDetailsScreen(),
        FiltersScreen.rounteName: (context) => FiltersScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => TabsScreen(),
        );
      },
    );
  }
}
