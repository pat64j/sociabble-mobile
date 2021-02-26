import 'package:equatable/equatable.dart';

class AuthModel extends Equatable {
  final bool isAuthenticated;
  final String refreshToken;
  final String accessToken;

  AuthModel({
    this.isAuthenticated: false,
    this.refreshToken,
    this.accessToken,
  });

  @override
  List<Object> get props => [
    isAuthenticated,
    refreshToken,
    accessToken,
  ];

  @override
  bool get stringify => true;



  static AuthModel fromJSON(Map<String, dynamic> json){
    return AuthModel(
      accessToken: json['access_token'] ?? "",
      refreshToken: json['refresh_token'] ?? "",
    );
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this.accessToken;
    data['refresh_token'] = this.refreshToken;
    return data;
  }

}
