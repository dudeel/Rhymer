import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  const BaseContainer({
    Key? key,
    required this.width,
    required this.child,
    this.margin,
    this.padding = const EdgeInsets.only(left: 12),
  }) : super(key: key);

  final double width;
  final Widget child;
  final EdgeInsets? margin;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: width,
      height: 40,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
