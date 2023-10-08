// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:rhymer/core/ui/widgets/base/base_container.dart';

class RhymeListCard extends StatelessWidget {
  const RhymeListCard({
    Key? key,
    this.isFavorite = false,
  }) : super(key: key);

  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseContainer(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Рифма',
            style: theme.textTheme.bodyLarge,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                size: 20,
                color: isFavorite
                    ? theme.primaryColor
                    : theme.hintColor.withOpacity(0.2),
              ))
        ],
      ),
    );
  }
}
