import 'package:flutter/material.dart';
class ProfileItems extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const ProfileItems({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.teal),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label,
                style: const TextStyle(fontSize: 14, color: Colors.grey)),
            Text(value,
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        )
      ],
    );
  }
}
