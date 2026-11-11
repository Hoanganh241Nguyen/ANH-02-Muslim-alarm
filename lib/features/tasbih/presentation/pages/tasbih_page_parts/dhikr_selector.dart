part of '../tasbih_page.dart';

class _DhikrSelector extends StatelessWidget {
  const _DhikrSelector({required this.provider, required this.onAddCustom});

  final TasbihProvider provider;
  final VoidCallback onAddCustom;

  @override
  Widget build(BuildContext context) {
    final content = provider.dhikrContentFor(context, provider.currentDhikr);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        _DhikrInfoCard(
          content: content,
          selected: true,
          onTap: () => _showDhikrPicker(context),
        ),
        Positioned(
          left: 12,
          top: 12,
          child: _DhikrArrowButton(
            icon: AppIcons.chevronLeft,
            tooltip: AppLocalizations.of(context).previousDhikr,
            onTap: () {
              AnalyticsService().trackButtonTap(
                'tasbih',
                'dhikr_previous',
                params: {'from': provider.currentDhikr},
              );
              provider.selectPreviousDhikr();
            },
          ),
        ),
        Positioned(
          right: 12,
          top: 12,
          child: _DhikrArrowButton(
            icon: AppIcons.chevronRight,
            tooltip: AppLocalizations.of(context).nextDhikr,
            onTap: () {
              AnalyticsService().trackButtonTap(
                'tasbih',
                'dhikr_next',
                params: {'from': provider.currentDhikr},
              );
              provider.selectNextDhikr();
            },
          ),
        ),
      ],
    );
  }

  Future<void> _showDhikrPicker(BuildContext context) async {
    final selected = await showModalBottomSheet<String>(
      context: context,
      showDragHandle: true,
      backgroundColor: AppColors.isDark(context)
          ? AppColors.quranDarkBg
          : AppColors.selectorBg,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      builder: (context) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 0, 18, 18),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Text(
                      AppLocalizations.of(context).chooseDhikr,
                      style: AppTypography.sectionTitle(
                        context,
                        color: _tasbihInk(context),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context, '__custom__');
                      },
                      icon: const Icon(AppIcons.add),
                      color: _tasbihAccent(context),
                      tooltip: AppLocalizations.of(context).addCustomDhikr,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Flexible(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: provider.dhikrContents(context).length,
                    separatorBuilder: (_, _) => const SizedBox(height: 10),
                    itemBuilder: (context, index) {
                      final item = provider.dhikrContents(context)[index];
                      return _DhikrInfoCard(
                        content: item,
                        selected: item.value == provider.currentDhikr,
                        compact: true,
                        onTap: () => Navigator.pop(context, item.value),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
    if (selected == null) return;
    if (selected == '__custom__') {
      onAddCustom();
      return;
    }
    AnalyticsService().trackButtonTap(
      'tasbih',
      'dhikr_select',
      params: {'dhikr': selected},
    );
    provider.setDhikr(selected);
  }
}

class _DhikrArrowButton extends StatelessWidget {
  const _DhikrArrowButton({
    required this.icon,
    required this.tooltip,
    required this.onTap,
  });

  final IconData icon;
  final String tooltip;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: Material(
        color: _tasbihCard(context, opacity: .82),
        shape: const CircleBorder(),
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: onTap,
          child: SizedBox(
            width: 34,
            height: 34,
            child: Icon(icon, color: _tasbihAccent(context), size: 24),
          ),
        ),
      ),
    );
  }
}

class _DhikrInfoCard extends StatelessWidget {
  const _DhikrInfoCard({
    required this.content,
    required this.onTap,
    this.selected = false,
    this.compact = false,
  });

  final DhikrContent content;
  final VoidCallback onTap;
  final bool selected;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(compact ? 18 : 22),
        onTap: onTap,
        child: Ink(
          padding: EdgeInsets.fromLTRB(
            compact ? 14 : 18,
            compact ? 12 : 16,
            compact ? 12 : 14,
            compact ? 12 : 16,
          ),
          decoration: BoxDecoration(
            color: _tasbihCard(context, opacity: selected ? .92 : .76),
            borderRadius: BorderRadius.circular(compact ? 18 : 22),
            border: Border.all(
              color: selected
                  ? _tasbihAccent(context).withValues(alpha: .35)
                  : _tasbihBorder(context, alpha: .8),
            ),
            boxShadow: [
              BoxShadow(
                color: _tasbihAccent(
                  context,
                ).withValues(alpha: compact ? .06 : .12),
                blurRadius: compact ? 14 : 24,
                offset: Offset(0, compact ? 6 : 12),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      content.arabic,
                      textAlign: TextAlign.right,
                      maxLines: compact ? 1 : 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTypography.arabic(
                        color: _tasbihInk(context),
                        size: compact ? 22 : 26,
                        height: 1.15,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Divider(
                      height: 1,
                      color: _tasbihInk(context).withValues(alpha: .12),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      content.value,
                      maxLines: compact ? 1 : 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTypography.body(
                        context,
                        color: _tasbihInk(context),
                        size: compact ? 12 : 13,
                        weight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      content.translation,
                      maxLines: compact ? 1 : 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTypography.caption(
                        context,
                        color: _tasbihInk(context).withValues(alpha: .58),
                        size: compact ? 10 : 11,
                        weight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Icon(
                selected
                    ? AppIcons.checkCircle
                    : AppIcons.chevronRight,
                color: selected
                    ? _tasbihAccent(context)
                    : _tasbihInk(
                        context,
                      ).withValues(alpha: compact ? .32 : .45),
                size: compact ? 20 : 22,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
