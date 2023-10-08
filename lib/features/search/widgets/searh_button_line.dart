import 'package:flutter/material.dart';

class SearhButtonLine extends StatelessWidget {
  const SearhButtonLine({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: theme.hintColor.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search_rounded,
              color: theme.hintColor.withOpacity(0.4),
            ),
            const SizedBox(width: 12),
            Text(
              'Поиск рифм...',
              style: TextStyle(
                fontSize: 18,
                color: theme.hintColor.withOpacity(0.4),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
