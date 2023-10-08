// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:rhymer/core/ui/widgets/base/base_container.dart';

class RhymeListCard extends StatelessWidget {
  const RhymeListCard({
    Key? key,
    required this.rhyme,
    this.sourceWord,
    this.isFavorite = false,
  }) : super(key: key);

  final String rhyme;
  final String? sourceWord;
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
          Row(
            children: [
              if (sourceWord != null) ...[
                Text(
                  sourceWord!,
                  style: theme.textTheme.bodyLarge,
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: theme.hintColor.withOpacity(0.4),
                  ),
                )
              ],
              Text(
                rhyme,
                style: theme.textTheme.bodyLarge
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
            ],
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
