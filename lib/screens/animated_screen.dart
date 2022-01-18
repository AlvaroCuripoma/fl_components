import 'dart:math';

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50, _height = 50;
  Color _color = AppTheme.primary;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(10);

  void changeShape() => setState(() {
        final random = Random();
        _width = random.nextInt(300).toDouble() + 70;
        _height += random.nextInt(300).toDouble() + 70;
        _color = Color.fromARGB(
          random.nextInt(255),
          random.nextInt(255),
          random.nextInt(255),
          random.nextInt(255),
        );
        _borderRadiusGeometry =
            BorderRadius.circular(random.nextInt(300).toDouble() + 70);
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: const Text('Animated SCreen'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(microseconds: 400),
          curve: Curves.easeInOutCubic,
          width: _width,
          height: _height,
          decoration:
              BoxDecoration(color: _color, borderRadius: _borderRadiusGeometry),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.play_circle_outline,
          size: 35,
        ),
        backgroundColor: _color,
        onPressed: () => changeShape(),
      ),
    );
  }
}
