class BankDetails {
  late int _id;
  late String _name;
  late String _email;
  late String _phoneNumber;
late String _balance;

  BankDetails(
      this._id, this._name, this._email, this._phoneNumber, this._balance);
  int get id => _id;
  String get name => _name;
  String get email => _email;
  String get phoneNumber => _phoneNumber;
  String get balance => _balance;
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }

    map['name'] = _name;
    map['email'] = _email;
    map['phone number'] = _phoneNumber;
    map['balance'] = _balance;
    return map;
  }

  BankDetails.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
   this._name = map['name'];
   this. _email = map['email'];
    this._phoneNumber = map['phone number'];
    this._balance = map['balance'];
  }
}
