part of '../tasbih_page.dart';

class _ModeSelector extends StatelessWidget {
  const _ModeSelector({required this.provider, required this.onModeSelected});

  final TasbihProvider provider;
  final ValueChanged<TasbihMode> onModeSelected;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: TasbihMode.values.map((mode) {
          final selected = mode == provider.mode;
          final accent = _tasbihAccent(context);
          final isDark = _tasbihDark(context);
          return Padding(
            padding: const EdgeInsets.only(right: 6),
            child: ChoiceChip(
              selected: selected,
              label: Text(mode.label(context)),
              showCheckmark: false,
              labelPadding: const EdgeInsets.symmetric(horizontal: 8),
              visualDensity: VisualDensity.compact,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              selectedColor: accent,
              backgroundColor: AppColors.adaptiveMutedSurface(context),
              labelStyle: TextStyle(
                color: selected
                    ? (isDark ? AppColors.darkBackground : Colors.white)
                    : _tasbihMuted(context),
                fontWeight: FontWeight.w700,
              ),
              side: BorderSide(
                color: selected ? accent : _tasbihBorder(context, alpha: .78),
              ),
              onSelected: (_) => onModeSelected(mode),
            ),
          );
        }).toList(),
      ),
    );
  }
}
