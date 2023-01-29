import 'movement.dart';

class Transaction {
  final int id;
  final Movement? origin; // debita
  final Movement? destiny; // credita
  final String dateTime;

  Transaction(
    this.id,
    this.origin,
    this.destiny,
    this.dateTime,
  ) : assert(origin == null && destiny == null,
            'Deve ser informado pelo menos uma mmovimentação.');
}
