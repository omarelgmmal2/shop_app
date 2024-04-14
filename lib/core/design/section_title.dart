import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  const SectionTitle({super.key, required this.text, required this.onPress,});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(
          onPressed: onPress,
          child: const Text(
            "See All",
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}
