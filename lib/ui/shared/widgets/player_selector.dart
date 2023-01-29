import 'package:flutter/material.dart';

import '../utils/position.dart';

class PlayerSelected extends StatelessWidget {
  const PlayerSelected({
    super.key,
    required this.position,
    required this.backgroundColor,
    required this.playerColor,
    required this.playerName,
  });

  final Position position;
  final Color backgroundColor;
  final Color playerColor;
  final String playerName;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        double distance = constraints.maxWidth - constraints.maxHeight;
        return Container(
          height: 200,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: position == Position.right
                ? borderRadiusRight()
                : borderRadiusLeft(),
          ),
          child: Stack(
            alignment: Alignment.centerRight,
            fit: StackFit.expand,
            clipBehavior: Clip.antiAlias,
            children: [
              position == Position.left
                  ? Positioned.fill(
                      left: distance,
                      child: _playerWidget(constraints.maxHeight),
                    )
                  : Positioned.fill(
                      right: distance,
                      child: _playerWidget(constraints.maxHeight),
                    ),
            ],
          ),
        );
      },
    );
  }

  BorderRadius borderRadiusLeft() {
    return const BorderRadius.only(
      bottomRight: Radius.circular(100),
      topRight: Radius.circular(100),
    );
  }

  BorderRadius borderRadiusRight() {
    return const BorderRadius.only(
      bottomLeft: Radius.circular(100),
      topLeft: Radius.circular(100),
    );
  }

  Padding _playerWidget(double maxHeight) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: CircleAvatar(
        backgroundColor: playerColor,
        child: Text(
          playerName,
          style: TextStyle(
            color: Colors.black,
            fontSize: maxHeight * 0.3,
          ),
        ),
      ),
    );
  }
}
