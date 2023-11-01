import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/nav_bar_cubit.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavBarCubit, NavBarState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = NavBarCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text("yessss2",
            style: Theme.of(context).textTheme.bodyText1),
            actions: [
              IconButton(onPressed: (){
                cubit.changAppMode();
              }, icon: const Icon(Icons.settings))
            ],
          ),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.currentIndex,
            onTap: (index){
              cubit.changeBottomNavBar(index);
            },
            items: cubit.bottomItem,
          ),
        );
      },
    );
  }
}
