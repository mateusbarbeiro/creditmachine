import 'package:flutter/material.dart';

import '../../shared/utils/number.dart';
import '../../shared/utils/position.dart';
import '../../shared/widgets/buttons/rounded_icon_button.dart';
import '../../shared/widgets/buttons/segmented_button_builder.dart';
import '../../shared/widgets/player_selector.dart';

class Pay extends StatelessWidget {
  const Pay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: display(),
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              debitPlayer(),
              confirmButton(),
              creditPlayer(),
            ],
          ),
        ),
        Expanded(
          flex: 5,
          child: buildKeyboard(),
        ),
      ],
    );
  }

  Padding display() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: const BoxDecoration(
            color: Color(0xff313033),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            )),
      ),
    );
  }

  Widget confirmButton() {
    return Expanded(
      child: LayoutBuilder(
        builder: (_, constraints) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: RoundedIconButton(
              buttonColor: const Color(0xff568552),
              iconColor: Colors.white,
              constraints: constraints,
            ),
          );
        },
      ),
    );
  }

  Expanded creditPlayer() {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: 15, bottom: 15),
        child: PlayerSelected(
          playerName: 'M',
          position: Position.right,
          backgroundColor: Color(0xff6750A4),
          playerColor: Color(0xff4F378B),
        ),
      ),
    );
  }

  Widget debitPlayer() {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: 15, bottom: 15),
        child: PlayerSelected(
          backgroundColor: Color(0xff492532),
          playerColor: Color(0xffEFB8C8),
          playerName: 'M',
          position: Position.left,
        ),
      ),
    );
  }

  Widget buildKeyboard() {
    SegmentedButtonBuilder<NumericKeys> keyboard =
        SegmentedButtonBuilder<NumericKeys>((value) => onPressed)
            .addButton(NumericKeys.one, NumericKeys.one.value)
            .addButton(NumericKeys.two, NumericKeys.two.value)
            .addButton(NumericKeys.three, NumericKeys.three.value)
            .addButton(NumericKeys.four, NumericKeys.four.value)
            .addButton(NumericKeys.five, NumericKeys.five.value)
            .addButton(NumericKeys.six, NumericKeys.six.value)
            .addButton(NumericKeys.seven, NumericKeys.seven.value)
            .addButton(NumericKeys.eight, NumericKeys.eight.value)
            .addButton(NumericKeys.nine, NumericKeys.nine.value)
            .addButton(NumericKeys.cancel, NumericKeys.cancel.value)
            .addButton(NumericKeys.zero, NumericKeys.zero.value)
            .addButton(NumericKeys.dot, NumericKeys.dot.value);

    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: keyboard.buildColumns(3),
      ),
    );
  }

  void onPressed(NumericKeys key) {}
}
