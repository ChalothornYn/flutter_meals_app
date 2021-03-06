import 'package:flutter/material.dart';
import './screens/tabs_screen.dart';
import './screens/meal_detail.screen.dart';
import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';
import './screens/filters_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(225, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      //home: CategoriesSCreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(),
      },
      // onGenerateRoute: (settings) {
      //   print(settings.name);
      //   if (settings.name == '/meal-detail') {
      //     return ...;
      //   }
      //   else if (settings.name == '/something-else') {
      //     return ...;
      //   }
      //   return MaterialPageRoute(builder: (ctx) => CategoriesSCreen());
      // },
      onUnknownRoute: (settings) {
        // Error Page // Fall back page
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}
