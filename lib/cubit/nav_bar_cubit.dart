import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themes/second_screen.dart';

part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavBarInitial());

  static NavBarCubit get(context) =>BlocProvider.of(context);

  int currentIndex=0;

  List<BottomNavigationBarItem> bottomItem =
      [
        const BottomNavigationBarItem(icon: Icon(Icons.add),label: "lll"),
        const BottomNavigationBarItem(icon: Icon(Icons.add),label: "lll"),
        const BottomNavigationBarItem(icon: Icon(Icons.add),label: "lll"),
      ];

  List<Widget> screens=[
    const SecondScreen(),
    const SecondScreen(),
    const SecondScreen(),
  ];

  void changeBottomNavBar(int index){
    currentIndex = index;
    emit(NavChangeState());
  }

  bool isDark= true;
  ThemeMode appMode = ThemeMode.dark;

  void changAppMode(){
    isDark= !isDark;
    emit(NavChangeNafStateState());
  }
}
