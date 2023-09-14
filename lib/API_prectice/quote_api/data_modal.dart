import 'package:authentication_pages/API_prectice/quote_api/quote.dart';

class QuoteModal {
  int limit;
  int skip;
  int total;
  List<UserModal> quotes;

  QuoteModal(
      {required this.limit,
      required this.skip,
      required this.total,
      required this.quotes});

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
