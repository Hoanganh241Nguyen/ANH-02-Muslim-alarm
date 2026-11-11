part of '../tasbih_page.dart';

class _ProgressCard extends StatelessWidget {
  const _ProgressCard({required this.provider});

  final TasbihProvider provider;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: _cardDecoration(context, radius: 22),
      child: Column(
        children: [
          Row(
            children: [
              // The current count is already shown large below this card.
              _ProgressMetric(
                label: l10n.today,
                value: '${provider.stats.today}',
              ),
              _ProgressMetric(
                label: l10n.dailyGoal,
                value: provider.hasGoal ? '${provider.goal}' : l10n.unlimited,
              ),
            ],
          ),
          if (provider.hasGoal) ...[
            const SizedBox(height: 14),
            ClipRRect(
              borderRadius: BorderRadius.circular(999),
              child: LinearProgressIndicator(
                value: provider.progress,
                minHeight: 7,
                backgroundColor: _tasbihAccent(context).withValues(alpha: .1),
                valueColor: AlwaysStoppedAnimation(_tasbihAccent(context)),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
