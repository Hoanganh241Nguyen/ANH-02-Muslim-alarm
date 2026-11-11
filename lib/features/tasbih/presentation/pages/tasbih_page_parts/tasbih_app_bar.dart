part of '../tasbih_page.dart';

class _TasbihAppBar extends StatelessWidget {
  const _TasbihAppBar({required this.onAddDhikr, required this.onReset});

  final VoidCallback onAddDhikr;
  final VoidCallback onReset;

  @override
  Widget build(BuildContext context) {
    final accent = _tasbihAccent(context);
    return AppTopBar(
      title: AppLocalizations.of(context).tasbih,
      leadingIcon: AppIcons.fingerprint,
      titleColor: accent,
      iconColor: accent,
      padding: EdgeInsets.zero,
      actions: [
        AppTopBarIcon(
          icon: AppIcons.add,
          color: _tasbihInk(context),
          onTap: onAddDhikr,
        ),
        AppTopBarIcon(
          icon: AppIcons.refresh,
          color: _tasbihInk(context),
          onTap: onReset,
        ),
        const AppSettingsButton(),
      ],
    );
  }
}
