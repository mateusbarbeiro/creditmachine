import 'package:flutter/material.dart';

import 'rounded_text_button.dart';

class SegmentedButtonBuilder<T> {
  final Map<T, String> _possibleValues = {};
  final Function(T value) onPressed;

  SegmentedButtonBuilder(this.onPressed);

  Widget buildButtonsView(int firstPosition, int size) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _possibleValues.entries
            .skip(firstPosition)
            .take(size)
            .map((e) => _getButtonWidget(e.key, e.value))
            .toList(),
      ),
    );
  }

  SegmentedButtonBuilder<T> addButton(T value, String label) {
    _possibleValues[value] = label;
    return this;
  }

  Widget _getButtonWidget(T value, String label) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
        child: RoundedTextButton(
          label: label,
          onPressed: () => onPressed(value),
        ),
      ),
    );
  }

  List<Widget> buildColumns(int amountInRow) {
    List<Widget> result = [];
    for (int i = 0; i < _possibleValues.length; i += amountInRow) {
      result.add(buildButtonsView(i, amountInRow));
    }

    return result;
  }
}
