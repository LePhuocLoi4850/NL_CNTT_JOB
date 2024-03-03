import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  final int currentTab;
  final Function(int) onTabSelected;

  const CustomBottomAppBar({
    super.key,
    required this.currentTab,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildMaterialButton(Icons.home, 'Home', 0),
            buildMaterialButton(Icons.search, 'Search', 1),
            buildMaterialButton(Icons.person_outlined, 'Profile', 2),
          ],
        ),
      ),
    );
  }

  Widget buildMaterialButton(IconData icon, String label, int index) {
    return MaterialButton(
      minWidth: 50,
      onPressed: () {
        onTabSelected(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: currentTab == index
                ? const Color.fromARGB(255, 40, 255, 3)
                : Colors.grey,
          ),
          Text(
            label,
            style: TextStyle(
              color: currentTab == index ? Colors.blue : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
