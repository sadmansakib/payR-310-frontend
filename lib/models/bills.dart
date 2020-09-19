class Bill {
  int billId;
  int id;
  String mobile;
  String billType;
  int equipmentCount;
  int amount;
  int accountId;
  String paymentMethod;
  String submitDate;

  Bill(
      {this.billId,
      this.id,
      this.mobile,
      this.billType,
      this.equipmentCount,
      this.amount,
      this.accountId,
      this.paymentMethod,
      this.submitDate});

  factory Bill.fromJson(Map<String, dynamic> json) {
    return Bill(
        billId: json['bill_id'],
        id: json['id'],
        mobile: json['mobile'],
        billType: json['bill_type'],
        equipmentCount: json['equipment_count'],
        amount: json['amount'],
        accountId: json['account_id'],
        paymentMethod: json['payment_method'],
        submitDate: json['SubmitDate']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bill_id'] = this.billId;
    data['id'] = this.id;
    data['mobile'] = this.mobile;
    data['bill_type'] = this.billType;
    data['equipment_count'] = this.equipmentCount;
    data['amount'] = this.amount;
    data['account_id'] = this.accountId;
    data['payment_method'] = this.paymentMethod;
    data['SubmitDate'] = this.submitDate;
    return data;
  }
}
