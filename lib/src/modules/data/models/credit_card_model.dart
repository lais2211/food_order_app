class CreditCardModel {
  String cardNumber;
  String expiryDate;
  String cardName;
  String cvvCode;
  bool isCvvFocused;

  CreditCardModel({
    required this.cardNumber,
    required this.expiryDate,
    required this.cardName,
    required this.cvvCode,
    required this.isCvvFocused,
  });
}
