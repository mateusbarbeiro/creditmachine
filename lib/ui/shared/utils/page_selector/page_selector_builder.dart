import 'package:flutter/material.dart';

import 'page_selector_dto.dart';

class PageSelector {

  final List<PageSelectorDto> _pagesInfo = [];

  PageSelector addPageItem(PageSelectorDto info) {
    if (_pagesInfo.any((e) => e.index == info.index)) {
      throw Exception('Já existe uma página com esse index');
    }

    _pagesInfo.add(info);
    return this;
  }

  List<NavigationDestination> getItems() {
    return _pagesInfo.map((e) => NavigationDestination(
      icon: Icon(e.icon),
      label: e.label,
      selectedIcon: Icon(e.selectedIcon),
    )).toList();
  }

  Widget getWidgetByIndex(int index) {
    return _pagesInfo.where((e) => e.index == index)
        .first.page;
  }
}