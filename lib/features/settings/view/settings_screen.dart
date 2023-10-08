import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer/features/settings/widgets/widgets.dart';

@RoutePage()
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const MainAppBar(),
        const SliverToBoxAdapter(child: SizedBox(height: 10)),
        SliverToBoxAdapter(
          child: SettingsListCard(
            title: 'Темная тема',
            value: true,
            onChanged: (v) {},
          ),
        ),
        SliverToBoxAdapter(
          child: SettingsListCard(
            title: 'Уведомления',
            value: true,
            onChanged: (v) {},
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
        'Настройки',
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
