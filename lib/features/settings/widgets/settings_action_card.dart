// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:rhymer/core/ui/widgets/base/base_container.dart';

class SettingsActionCard extends StatelessWidget {
  const SettingsActionCard({
    Key? key,
    required this.title,
    this.icon,
    this.iconColor,
    this.onTap,
  }) : super(key: key);

  final String title;
  final IconData? icon;
  final Color? iconColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 8),
        child: BaseContainer(
          child: BaseContainer(
            padding: const EdgeInsets.only(right: 12),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleMedium?.copyWith(fontSize: 18),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Icon(
                    icon,
                    size: 32,
                    color: iconColor ?? theme.hintColor.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
