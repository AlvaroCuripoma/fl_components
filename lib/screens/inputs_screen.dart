import 'package:fl_components/custom_input_field.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [
              CustomInputField(
                hintText: '',
                labelText: '',
                helperText: '',
                suffixIcon: Text(''),
                icon: Text(''),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
