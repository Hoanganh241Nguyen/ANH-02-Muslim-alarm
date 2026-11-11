part of '../tasbih_page.dart';

class _CustomGoalPopupCard extends StatefulWidget {
  const _CustomGoalPopupCard({
    required this.initialRounds,
    required this.initialCountPerRound,
  });

  final int initialRounds;
  final int initialCountPerRound;

  @override
  State<_CustomGoalPopupCard> createState() => _CustomGoalPopupCardState();
}

// Owns its controllers so they live until the popup route is fully gone,
// instead of being disposed while the close animation still renders them.
class _CustomGoalPopupCardState extends State<_CustomGoalPopupCard> {
  late final TextEditingController roundsController = TextEditingController(
    text: '${widget.initialRounds}',
  );
  late final TextEditingController countController = TextEditingController(
    text: '${widget.initialCountPerRound}',
  );

  @override
  void dispose() {
    roundsController.dispose();
    countController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: .94),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withValues(alpha: .82)),
        boxShadow: [
          BoxShadow(
            color: _emerald.withValues(alpha: .18),
            blurRadius: 28,
            offset: const Offset(0, 16),
          ),
          BoxShadow(
            color: Colors.black.withValues(alpha: .08),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 16, 18, 14),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    color: _emerald.withValues(alpha: .12),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(AppIcons.tune, color: _emerald),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    AppLocalizations.of(context).customGoal,
                    style: AppTypography.sectionTitle(
                      context,
                      color: _ink,
                      size: 17,
                    ),
                  ),
                ),
                IconButton(
                  visualDensity: VisualDensity.compact,
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(AppIcons.close),
                  color: _ink.withValues(alpha: .58),
                  tooltip: AppLocalizations.of(context).close,
                ),
              ],
            ),
            const SizedBox(height: 14),
            TextField(
              controller: roundsController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context).rounds,
                filled: true,
                fillColor: Colors.white.withValues(alpha: .72),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: countController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context).countsPerRound,
                filled: true,
                fillColor: Colors.white.withValues(alpha: .72),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            const SizedBox(height: 14),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: _emerald,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 13),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () {
                final rounds = int.tryParse(roundsController.text);
                final countPerRound = int.tryParse(countController.text);
                if (rounds == null ||
                    rounds <= 0 ||
                    countPerRound == null ||
                    countPerRound <= 0) {
                  return;
                }
                Navigator.pop(
                  context,
                  _CustomGoalConfig(
                    rounds: rounds,
                    countPerRound: countPerRound,
                  ),
                );
              },
              child: Text(AppLocalizations.of(context).saveGoal),
            ),
          ],
        ),
      ),
    );
  }
}
