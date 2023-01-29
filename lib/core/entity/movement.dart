import 'enum/movements.dart';

class Movement {
  final int id;
  final int cardId;
  final Movements movement;
  final double value;

  Movement(
    this.id,
    this.cardId,
    this.movement,
    this.value,
  );
}
