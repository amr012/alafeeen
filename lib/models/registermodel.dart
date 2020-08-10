class RegisterModel {
  String username;
  String email;
  String phone;
  String password;
  Address address;
  String role;
  int active;
  bool card;

  RegisterModel(
      {this.username,
        this.email,
        this.phone,
        this.password,
        this.address,
        this.role,
        this.active,
        this.card});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    phone = json['phone'];
    password = json['password'];
    address =
    json['address'] != null ? new Address.fromJson(json['address']) : null;
    role = json['role'];
    active = json['active'];
    card = json['card'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['password'] = this.password;
    if (this.address != null) {
      data['address'] = this.address.toJson();
    }
    data['role'] = this.role;
    data['active'] = this.active;
    data['card'] = this.card;
    return data;
  }
}

class Address {
  String country;
  String city;
  String addressDet;

  Address({this.country, this.city, this.addressDet});

  Address.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    city = json['city'];
    addressDet = json['addressDet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country'] = this.country;
    data['city'] = this.city;
    data['addressDet'] = this.addressDet;
    return data;
  }
}
