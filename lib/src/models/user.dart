
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class User extends Equatable {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String countryCode;
  final String phone;
  final String fullPhone;
  final String code;
  final String bday;
  final String avatar;
  final bool confirmed;
  final DateTime createdAt;
  final DateTime updatedAt;

  const User({
    this.id:0,
    this.firstName:"",
    this.lastName:"",
    this.email:"",
    @required this.countryCode,
    @required this.phone,
    @required this.fullPhone,
    this.code: "",
    this.bday:"",
    this.avatar:"",
    this.confirmed:false,
    this.createdAt,
    this.updatedAt
  });

  static User fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      countryCode: json['country_code'],
      phone: json['phone'],
      fullPhone: json['full_phone'],
      code: json['code'] ?? "",
      bday: json['bday'],
      avatar: json['avatar'],
      confirmed: json['confirmed'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  @override
  List<Object> get props => [
    id,
    firstName,
    lastName,
    email,
    countryCode,
    phone,
    fullPhone,
    code,
    avatar,
    bday,
    confirmed,
    createdAt,
  ];

  @override
  bool get stringify => true;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id ?? 0;
    data['first_name'] = this.firstName ?? "";
    data['last_name'] = this.lastName ?? "";
    data['email'] = this.email ?? "";
    data['country_code'] = this.countryCode ?? "";
    data['phone'] = this.phone ?? "";
    data['full_phone'] = this.fullPhone ?? "";
    data['code'] = this.code ?? "";
    data['bday'] = this.bday ?? "";
    data['avatar'] = this.avatar ?? "";
    data['confirmed'] = this.confirmed ?? false;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
