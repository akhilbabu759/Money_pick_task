class TransactionModel {
  List<TransactionData> data;

  TransactionModel({
    required this.data,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      data: List<TransactionData>.from(json['data'].map((x) => TransactionData.fromJson(x))),
    );
  }
}

class TransactionData {
  String id;
  String amount;
  String status;
  String sourceId;
  String sourceType;
  String transactionType;
  String currency;
  String createdAt;
  int fee;
  String description;
  String settledAt;
  String estimatedSettledAt;
  String currency1;

  TransactionData({
    required this.id,
    required this.amount,
    required this.status,
    required this.sourceId,
    required this.sourceType,
    required this.transactionType,
    required this.currency,
    required this.createdAt,
    required this.fee,
    required this.description,
    required this.settledAt,
    required this.estimatedSettledAt,
    required this.currency1,
  });

  factory TransactionData.fromJson(Map<String, dynamic> json) {
    return TransactionData(
      id: json['id'] ?? '',
      amount: json['amount'] ?? '',
      status: json['status'] ?? '',
      sourceId: json['sourceId'] ?? '',
      sourceType: json['sourceType'] ?? '',
      transactionType: json['transactionType'] ?? '',
      currency: json['currency'] ?? '',
      createdAt: json['createdAt'] ?? '',
      fee: json['fee'] ?? 0,
      description: json['description'] ?? '',
      settledAt: json['settledAt'] ?? '',
      estimatedSettledAt: json['estimatedSettledAt'] ?? '',
      currency1: json['currency1'] ?? '',
    );
  }
}
