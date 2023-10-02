import 'package:flutter/material.dart';

class WelcomeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Image.asset('assets/images/report.png'),
          SizedBox(height: 20.0),
          Text(
            'Selamat datang di aplikasi kami!',
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(
            height: 10,
          ),
          const Text(
            'Perlu menghubungi kami? Isi formulir dengan pertanyaan Anda atau temukan email departemen yang ingin Anda hubungi di bawah ini.',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
