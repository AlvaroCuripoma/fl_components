import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: const Text('Card Screen'),
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10.0,
          ),
          CustomCardType2(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrDDWtlCmK6fehp6NQbrEkHgPkQYDTUENZKQ&usqp=CAU',
            name: 'other image',
          ),
          SizedBox(
            height: 10.0,
          ),
          CustomCardType2(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB58BsvuPTLrunlFUjAEklp4XXgcKIpFGppQ&usqp=CAU',
          ),
          SizedBox(
            height: 10.0,
          ),
          CustomCardType2(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYpRAOQVQFJWx8Af4FW7F9-R8AZkEwhes8og&usqp=CAU',
            name: 'other image',
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
