import 'package:flutter/cupertino.dart';

class contact {
  //atribut kelas
  int _id = 0;
  String _name = '';
  String _phone = '';

  //konstruktor
  contact(this._name, this._phone);

  //konversi dari contact ke map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = this._name;
    map['phone'] = this._phone;
    return map;
  }

  //konversi dari map ke contact
  contact.formMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._phone = map['phone'];
  }

  //getter
  int get id => _id;
  String get name => _name;
  String get phone => _phone;

  //setter
  set name(String value) {
    _name = value;
  }

  set phone(String value) {
    _phone = value;
  }
}
