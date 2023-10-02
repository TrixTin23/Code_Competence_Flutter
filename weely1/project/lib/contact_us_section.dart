import 'package:flutter/material.dart';

class ContactUsSection extends StatefulWidget {
  @override
  _ContactUsSectionState createState() => _ContactUsSectionState();
}

class _ContactUsSectionState extends State<ContactUsSection> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  void _showAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Data yang Anda masukkan:'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Username: ${usernameController.text}'),
              Text('Email: ${emailController.text}'),
              Text('Message: ${messageController.text}'),
            ],
          ),
          actions: [
            TextButton(
              child: Text('Tutup'),
              onPressed: () {
                usernameController.clear();
                emailController.clear();
                messageController.clear();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: usernameController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Username'),
          ),
          SizedBox(height: 20.0),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Email'),
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 20.0),
          TextField(
            controller: messageController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Message'),
            maxLines: 3,
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              _showAlert();
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent[400],
            ),
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
