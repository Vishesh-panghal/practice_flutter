import 'package:authentication_pages/API_%20practice/user_api/coordinates_modal.dart';

class CompanyModal {
  String department;
  String name;
  String title;
  AddressModal address;

  CompanyModal({
    required this.address,
    required this.department,
    required this.name,
    required this.title,
  });

  factory CompanyModal.fromJson(Map<String, dynamic> json) {
    return CompanyModal(
      address: json['address'],
      department: json['department'],
      name: json['name'],
      title: json['title'],
    );
  }
}
