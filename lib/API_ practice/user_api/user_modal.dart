import 'package:authentication_pages/API_%20practice/user_api/bank.dart';
import 'package:authentication_pages/API_%20practice/user_api/company_modal.dart';
import 'package:authentication_pages/API_%20practice/user_api/coordinates_modal.dart';

class UserModal {
  int id;
  int age;
  int height;
  int weight;
  String firstName;
  String lastName;
  String maidenName;
  String gender;
  String email;
  String phone;
  String username;
  String password;
  String birthDate;
  String image;
  String eyeColor;
  String macAddress;
  String university;
  String ein;
  String ssn;
  String userAgent;
  HairModal hair;
  AddressModal address;
  CompanyModal company;
  BankModal bank;

  UserModal({
    required this.address,
    required this.age,
    required this.bank,
    required this.birthDate,
    required this.company,
    required this.ein,
    required this.email,
    required this.eyeColor,
    required this.firstName,
    required this.gender,
    required this.hair,
    required this.height,
    required this.id,
    required this.image,
    required this.lastName,
    required this.macAddress,
    required this.maidenName,
    required this.password,
    required this.phone,
    required this.ssn,
    required this.university,
    required this.userAgent,
    required this.username,
    required this.weight,
  });

  factory UserModal.fromJson(Map<String, dynamic> json) {
    return UserModal(
      address: AddressModal.fromJson(json['address']),
      age: json['age'],
      bank: BankModal.fromJson(json['bank']),
      birthDate: json['birthDate'],
      company: CompanyModal.fromJson(json['company']),
      ein: json['ein'],
      email: json['email'],
      eyeColor: json['eyeColor'],
      firstName: json['firstName'],
      gender: json['gender'],
      hair: HairModal.fromJson(json['hair']),
      height: json['height'],
      id: json['id'],
      image: json['image'],
      lastName: json['lastName'],
      macAddress: json['macAddress'],
      maidenName: json['maidenName'],
      password: json['password'],
      phone: json['phone'],
      ssn: json['ssn'],
      university: json['university'],
      userAgent: json['userAgent'],
      username: json['username'],
      weight: json['weight'],
    );
  }
}
