import 'package:flutter/material.dart';
import 'package:fl_components/models/menu_opction.dart';
import 'package:fl_components/screens/screen.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOpction>[
    MenuOpction(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home_max_sharp),
    MenuOpction(
        route: 'listview1',
        name: 'listview1 Screen',
        screen: const ListView1Screen(),
        icon: Icons.home_max_sharp),
    MenuOpction(
        route: 'listview2',
        name: 'listview2 Screen',
        screen: const ListView2Screen(),
        icon: Icons.home_max_sharp),
    MenuOpction(
        route: 'alert',
        name: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.home_max_sharp),
    MenuOpction(
        route: 'card',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.home_max_sharp),
    MenuOpction(
        route: 'avatar',
        name: 'Avatar Screen',
        screen: const AvatarScreen(),
        icon: Icons.home_max_sharp),
    MenuOpction(
        route: 'animated',
        name: 'Animated Screen',
        screen: const AnimatedScreen(),
        icon: Icons.home_max_sharp),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
