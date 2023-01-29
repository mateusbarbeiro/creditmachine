import 'package:flutter/material.dart';

import '../../../core/data.dart';
import '../../shared/widgets/list/list_card.dart';

class Player extends StatelessWidget {
  const Player({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (_, constraints) => Column(
            children: players
                .map(
                  (e) => ListCard(
                    title: e.name,
                    color: e.color,
                    onTap: () {},
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
