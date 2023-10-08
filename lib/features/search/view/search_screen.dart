import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer/core/ui/widgets/widgets.dart';
import 'package:rhymer/features/search/widgets/widgets.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        MainAppBar(),
        SliverToBoxAdapter(child: SizedBox(height: 10)),
        HistoryBlock(),
        SliverToBoxAdapter(child: SizedBox(height: 10)),
        RhymesBlock(),
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
      pinned: true,
      snap: true,
      floating: true,
      centerTitle: true,
      title: Text(
        'Rhymer',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SearhLine(),
      ),
    );
  }
}

class HistoryBlock extends StatelessWidget {
  const HistoryBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView.separated(
          padding: const EdgeInsets.only(left: 16),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(width: 16),
          itemCount: 10,
          itemBuilder: (context, index) {
            final rhymes = List.generate(4, (index) => 'Рифма ${index + 1}');
            return RhymeHistoryCard(rhymes: rhymes);
          },
        ),
      ),
    );
  }
}

class RhymesBlock extends StatelessWidget {
  const RhymesBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 30, itemBuilder: (context, index) => const RhymeListCard());
  }
}
