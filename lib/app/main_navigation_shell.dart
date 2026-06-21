import 'package:flutter/material.dart';
import 'package:real_estate/core/theme/app_colors.dart';
import 'package:real_estate/home_screen.dart';
import 'package:real_estate/profile_screen.dart';

class MainNavigationShell extends StatefulWidget {
  const MainNavigationShell({super.key});

  @override
  State<MainNavigationShell> createState() => _MainNavigationShellState();
}

class _MainNavigationShellState extends State<MainNavigationShell> {
  int _index = 0;

  static const _items = [
    _NavItemData(icon: Icons.home_rounded, label: "Home"),
    _NavItemData(icon: Icons.search_rounded, label: "Search"),
    _NavItemData(icon: Icons.favorite_rounded, label: 'Saved'),
    _NavItemData(icon: Icons.chat_rounded, label: 'Messages'),
    _NavItemData(icon: Icons.person_rounded, label: 'Profile'),
  ];
  final List<Widget> _screens = const [
    HomeScreen(),
    _PlaceholderScreen(label: 'Search'),
    _PlaceholderScreen(label: 'Saved'),
    _PlaceholderScreen(label: 'Messages'),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _index, children: _screens),
      bottomNavigationBar: _buildNavbar(),
    );
  }

  Widget _buildNavbar() {
    return SafeArea(
      top: false,
      child: SizedBox(
        height: 64,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(_items.length, (i) {
            final selected = i == _index;
            final item = _items[i];

            return Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    _index = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      item.icon,
                      color: selected ? AppColors.gold : AppColors.goldLight,
                    ),
                    Text(
                      item.label,
                      style: TextStyle(
                        fontSize: 11,
                        color: selected ? AppColors.gold : AppColors.goldLight,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

//-------------------------------------
class _NavItemData {
  const _NavItemData({required this.icon, required this.label});
  final IconData icon;
  final String label;
}

//
class _PlaceholderScreen extends StatelessWidget {
  const _PlaceholderScreen({required this.label});

  final String label;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('$label screen'));
  }
}
