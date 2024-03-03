import 'package:flutter/material.dart';
import './profile_screen.dart';
import './home_screen.dart';
import './search_screen.dart';
import '../bottom_bar/custom_bottom_app_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentTab = 0;
  final List<Widget> screens = [
    const Home(),
    const Search(),
    Profile(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  late Widget currentScreen = const Home();

  @override
  void initState() {
    super.initState();
    currentScreen = screens[currentTab];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: CustomBottomAppBar(
        currentTab: currentTab,
        onTabSelected: (index) {
          setState(() {
            currentTab = index;
            currentScreen = screens[currentTab];
          });
        },
      ),
    );
  }
}
