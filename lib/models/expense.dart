
class Expense {
  final int? id;
  final String title;
  final double amount;

  Expense({
    this.id,
    required this.title,
    required this.amount,
  });

  // Convert Expense object to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'amount': amount,
    };
  }

  // Convert Map to Expense object
  factory Expense.fromMap(Map<String, dynamic> map) {
    return Expense(
      id: map['id'] as int,
      title: map['title'] as String,
      amount: (map['amount'] as num).toDouble(),
    );
  }
}
