import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/nav_bar_cubit.dart';
import 'first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: BlocConsumer<NavBarCubit, NavBarState>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
                appBarTheme: const AppBarTheme(
                  systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: Colors.black,
                    statusBarIconBrightness: Brightness.light,
                  ),
                  backgroundColor: Colors.white,
                  elevation: 0.0,
                  titleTextStyle: TextStyle(
                      color: Colors.cyan,
                      fontSize: 20
                  ),
                  iconTheme: IconThemeData(
                      color: Colors.black
                  ),
                ),
                bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                    type: BottomNavigationBarType.fixed,
                    selectedItemColor: Colors.orange,
                )
            ),
            darkTheme:ThemeData(
              primarySwatch: Colors.deepOrange,
                scaffoldBackgroundColor: const Color(0xFF333739),
                appBarTheme: const AppBarTheme(
                  systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: Color(0xFF333739),
                    statusBarIconBrightness: Brightness.light,
                  ),
                  backgroundColor:  Color(0xFF333739),
                  elevation: 0.0,
                  titleTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                  iconTheme: IconThemeData(
                      color: Colors.white
                  ),
                ),
                bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                    type: BottomNavigationBarType.fixed,
                    selectedItemColor: Colors.orange,
                    backgroundColor:  Color(0xFF333739),
                  unselectedItemColor: Colors.grey
                ),
              textTheme: const TextTheme(
                bodyText1: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,

                )
              ),
            ),
            themeMode: NavBarCubit.get(context).isDark? ThemeMode.dark: ThemeMode.light,
            home: const FirstScreen(),
          );
        },
      ),
    );
  }
}
