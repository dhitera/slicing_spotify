import 'package:flutter/material.dart';

class UnselectedRoundedButton extends StatelessWidget {
  const UnselectedRoundedButton({
    required this.labelText,
    super.key,
  });

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              backgroundColor: const Color.fromRGBO(119, 119, 119, 0.315)),
          child: Text(
            labelText,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(width: 10)
      ],
    );
  }
}
