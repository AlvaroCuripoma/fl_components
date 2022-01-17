import 'dart:io';

import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(15),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta'),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(
                  size: 50,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cerrar')),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cerrar'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Screen'),
        elevation: 0,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Text(
              'Mostrar Screen',
              style: TextStyle(fontSize: 16),
            ),
          ),
          onPressed: () {
            // Navigator.pop(context);
            // displayDialog(context);
            Platform.isAndroid;
            // ?
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.close,
        ),
        onPressed: () {},
      ),
    );
  }
}
