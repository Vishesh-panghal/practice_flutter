class BankModal {
  String cardExpire;
  String cardNumber;
  String cardType;
  String currency;
  String iban;

  BankModal({
    required this.cardExpire,
    required this.cardNumber,
    required this.cardType,
    required this.currency,
    required this.iban,
  });

  factory BankModal.fromJson(Map<String, dynamic> json) {
    return BankModal(
      cardExpire: json['cardExpire'],
      cardNumber: json['cardNumber'],
      cardType: json['cardType'],
      currency: json['currency'],
      iban: json['iban'],
    );
  }
}
