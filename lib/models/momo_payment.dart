class MomoPayment {
  final String amount;
  final String currency;
  final String externalId;
  final String partyIdType;
  final String partyId;
  final String payerMessage;
  final String payeeNote;

  MomoPayment(
      {this.amount,
      this.currency,
      this.externalId,
      this.partyIdType,
      this.partyId,
      this.payerMessage,
      this.payeeNote});

  Map<String, dynamic> toJson() => {
        'amount': amount,
        'currency': currency,
        'externalId': externalId,
        'payer': {'partyIdType': partyIdType, 'partyId': partyId},
        'payerMessage': payerMessage,
        'payeeNote': payeeNote
      };
}
