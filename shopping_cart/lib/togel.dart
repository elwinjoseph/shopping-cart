import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToggleButtonPage extends StatefulWidget {
  const ToggleButtonPage({super.key});

  @override
  State<ToggleButtonPage> createState() => _ToggleButtonPageState();
}

class _ToggleButtonPageState extends State<ToggleButtonPage> {
  get isChecked => true;
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: CupertinoSwitch(
        value: _isOn,
        onChanged: (value) {
          setState(() {
            _isOn = value;
          });
        },
      ),
    ));
  }
}
