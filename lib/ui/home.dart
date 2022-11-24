import 'package:flutter/material.dart';
import 'package:flutter_application_2/helper/dbhelper.dart';
import 'package:flutter_application_2/models/contact.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DbHelper dbHelper = DbHelper();
  int count = 0;
  List<contact> contactList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: createListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var contact = await navigateToEntryForm(context, contact('', ''));
          if (contact.name != '' && contact.phone != '') addContact(contact);
        },
        child: Icon(Icons.add),
        tooltip: 'Tambah Data',
      ),
    );
  }
}
