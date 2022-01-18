import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final String helperText;
  final Widget suffixIcon;
  final Widget icon;
  const CustomInputField({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.helperText,
    required this.suffixIcon,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: 'Fernando Herrera',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => {print('value')},
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo de 3 letras ' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixIcon,
        icon: icon,
      ),
    );
  }
}
