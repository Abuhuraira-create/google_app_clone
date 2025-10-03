import 'package:flutter/material.dart';

class TranslationButtons extends StatelessWidget {
  const TranslationButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center, // same vertical center
      children: [
        const Text('Google offered in:'),
        const SizedBox(width: 8),
        TextButton(
          onPressed: () {},
          child: const Text('Urdu'),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('日本語'), // Japanese
        ),
        TextButton(
          onPressed: () {},
          child: const Text('中文'),   // Chinese
        ),
        TextButton(
          onPressed: () {},
          child: const Text('العربية'), // Arabic
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Français'), // French
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Español'),  // Spanish
        ),
      ],
    );
  }
}
