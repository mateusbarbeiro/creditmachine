import 'package:flutter/material.dart';

import 'entity/card.dart' as card;
import 'entity/enum/movements.dart';
import 'entity/movement.dart';
import 'entity/player.dart';
import 'entity/transaction.dart';

List<Player> players = [
  Player(1, 'Mateus', Colors.red),
  Player(2, 'Maria', Colors.white),
];
List<card.Card> cards = [
  card.Card(1, 1),
  card.Card(2, 2),
];
List<Movement> movements = [
  Movement(1, 1, Movements.credit, 15000),
  Movement(2, 2, Movements.credit, 15000),
];
List<Transaction> transactions = [
  Transaction(1, null, movements[0], DateTime.now().toString()),
  Transaction(2, null, movements[1], DateTime.now().toString()),
];
