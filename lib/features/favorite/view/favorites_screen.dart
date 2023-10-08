import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer/core/ui/widgets/widgets.dart';

@RoutePage()
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        MainAppBar(),
        SliverToBoxAdapter(child: SizedBox(height: 10)),
        FeaturesBlock(),
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
        'Избранное',
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

class FeaturesBlock extends StatelessWidget {
  const FeaturesBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 30,
        itemBuilder: (context, index) => const RhymeListCard(
              isFavorite: true,
            ));
  }
}
