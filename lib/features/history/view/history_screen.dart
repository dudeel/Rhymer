import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer/core/ui/widgets/widgets.dart';

@RoutePage()
class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const MainAppBar(),
        const SliverToBoxAdapter(
          child: SizedBox(height: 10),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1.8,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return const RhymeHistoryCard(
                  rhymes: [
                    'dwa32rfs',
                    'dwadwa',
                    '21dasdas3',
                    'dasad',
                  ],
                );
              },
              childCount: 20,
            ),
          ),
        ),
      ],
    );
  }
}

//  Blocks
class MainAppBar extends StatelessWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      pinned: false,
      snap: true,
      floating: true,
      centerTitle: true,
      title: Text(
        'История',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
      elevation: 0,
      surfaceTintColor: Colors.transparent,
    );
  }
}
