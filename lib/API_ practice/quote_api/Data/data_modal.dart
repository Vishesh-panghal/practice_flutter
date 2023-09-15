import 'package:authentication_pages/API_%20practice/quote_api/Data/quote.dart';

class QuoteModal {
  int? limit;
  int? skip;
  int? total;
  List<UserModal>? quotes;

  QuoteModal(
      { this.limit,
       this.skip,
       this.total,
       this.quotes});

  factory QuoteModal.fromJson(Map<String, dynamic> json) {
    List<UserModal> mQuotes = [];

    for (Map<String, dynamic> eachQuote in json['quotes']) {
      mQuotes.add(UserModal.fromJson(eachQuote));
    }

    return QuoteModal(
      limit: json['limit'],
      skip: json['skip'],
      total: json['total'],
      quotes: mQuotes,
    );
  }
}
