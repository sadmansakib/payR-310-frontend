class Customer {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String mobile;

  Customer({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.mobile,
  });

  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      mobile: json['mobile'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    return data;
  }
}
