import 'package:flutter/material.dart';

class SelectedRoundedButton extends StatelessWidget {
  const SelectedRoundedButton({
    required this.labelText,
    super.key,
  });

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          backgroundColor: const Color.fromRGBO(30, 215, 96, 1)),
      child: Text(
        labelText,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
