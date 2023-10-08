import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer/features/settings/widgets/widgets.dart';

@RoutePage()
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomScrollView(
      slivers: [
        const MainAppBar(),
        const SliverToBoxAdapter(child: SizedBox(height: 10)),
        SliverToBoxAdapter(
          child: SettingsToggleCard(
            title: 'Темная тема',
            value: false,
            onChanged: (v) {},
          ),
        ),
        SliverToBoxAdapter(
          child: SettingsToggleCard(
            title: 'Уведомления',
            value: true,
            onChanged: (v) {},
          ),
        ),
        SliverToBoxAdapter(
          child: SettingsToggleCard(
            title: 'Разрешить аналитику',
            value: false,
            onChanged: (v) {},
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SettingsActionCard(
          title: 'Очистить историю',
          icon: Icons.delete_outline,
          iconColor: theme.primaryColor,
          onTap: () {},
        ),
        SettingsActionCard(
          title: 'Поддержка',
          icon: Icons.message_outlined,
          onTap: () {},
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
