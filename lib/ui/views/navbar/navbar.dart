import 'package:flutter/material.dart';

import '../../shared/widgets/page_selector/page_selector_builder.dart';
import '../../shared/widgets/page_selector/page_selector_dto.dart';
import '../pay/pay.dart';
import '../player/player.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    PageSelector pages = getPageSelector();

    return Scaffold(
      body: pages.getWidgetByIndex(_selectedIndex),
      bottomNavigationBar: NavigationBar(
        destinations: pages.getItems(),
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
      ),
    );
  }

  PageSelector getPageSelector() {
    return PageSelector()
        .addPageItem(const PageSelectorDto(
          label: 'Pay',
          icon: Icons.credit_card,
          selectedIcon: Icons.credit_score,
          index: 0,
          page: Pay(),
        ))
        .addPageItem(const PageSelectorDto(
          label: 'Jogadores',
          icon: Icons.people_outline,
          selectedIcon: Icons.people,
          index: 1,
          page: Player(),
        ));
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
