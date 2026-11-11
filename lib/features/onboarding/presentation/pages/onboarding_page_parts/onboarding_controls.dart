part of '../onboarding_page.dart';

class _BellHalo extends StatelessWidget {
  const _BellHalo({required this.gold});

  final Color gold;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 156,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: gold.withValues(alpha: .45)),
        boxShadow: [
          BoxShadow(color: gold.withValues(alpha: .12), blurRadius: 36),
        ],
      ),
      child: Center(
        child: Container(
          width: 92,
          height: 92,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: gold.withValues(alpha: .14),
          ),
          child: Icon(AppIcons.notifications, color: gold, size: 46),
        ),
      ),
    );
  }
}

class _PermissionPoint extends StatelessWidget {
  const _PermissionPoint({required this.text, required this.gold});

  final String text;
  final Color gold;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(AppIcons.notificationsActive, color: gold, size: 17),
          const SizedBox(width: 8),
          Text(
            text,
            style: AppTypography.body(
              context,
              color: Colors.white,
              size: 13,
              weight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

class _InputLabel extends StatelessWidget {
  const _InputLabel(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2, bottom: 6),
      child: Text(
        text,
        style: AppTypography.caption(
          context,
          color: Colors.white.withValues(alpha: .82),
          size: 12,
          weight: FontWeight.w800,
        ),
      ),
    );
  }
}

class _TextFieldShell extends StatelessWidget {
  const _TextFieldShell({required this.child, this.onTap});

  final Widget child;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: onTap,
      child: Container(
        height: 52,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: .08),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.white.withValues(alpha: .12)),
        ),
        child: Theme(
          data: Theme.of(context).copyWith(
            inputDecorationTheme: InputDecorationTheme(
              border: InputBorder.none,
              hintStyle: AppTypography.body(
                context,
                color: Colors.white.withValues(alpha: .48),
              ),
              suffixIconColor: Colors.white.withValues(alpha: .64),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}

class _GoalDropdown extends StatelessWidget {
  const _GoalDropdown({
    required this.value,
    required this.options,
    required this.onChanged,
  });

  final String value;
  final List<_DailyGoalOption> options;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTypography.body(
      context,
      color: Colors.white,
      size: 13,
      weight: FontWeight.w900,
    );

    return Container(
      height: 48,
      padding: const EdgeInsets.only(left: 16, right: 8),
      decoration: BoxDecoration(
        color: AppColors.quranDarkBg.withValues(alpha: .34),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withValues(alpha: .16)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .08),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
          BoxShadow(
            color: Colors.white.withValues(alpha: .04),
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          isExpanded: true,
          borderRadius: BorderRadius.circular(16),
          dropdownColor: _panelGreen,
          menuMaxHeight: 220,
          icon: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: .08),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              AppIcons.expandMore,
              color: Colors.white.withValues(alpha: .78),
              size: 20,
            ),
          ),
          style: textStyle,
          selectedItemBuilder: (context) => options
              .map(
                (option) => Center(
                  child: Text(
                    option.label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textStyle,
                  ),
                ),
              )
              .toList(),
          items: options
              .map(
                (option) => DropdownMenuItem(
                  value: option.value,
                  child: Text(
                    option.label,
                    style: textStyle.copyWith(fontSize: 13),
                  ),
                ),
              )
              .toList(),
          onChanged: (nextValue) {
            if (nextValue != null) onChanged(nextValue);
          },
        ),
      ),
    );
  }
}

class _Dots extends StatelessWidget {
  const _Dots({required this.count, required this.index, required this.gold});

  final int count;
  final int index;
  final Color gold;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (i) {
        final selected = i == index;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 240),
          margin: const EdgeInsets.symmetric(horizontal: 3),
          width: selected ? 18 : 6,
          height: 6,
          decoration: BoxDecoration(
            color: selected ? gold : Colors.white.withValues(alpha: .3),
            borderRadius: BorderRadius.circular(999),
          ),
        );
      }),
    );
  }
}

class _PrimaryButton extends StatelessWidget {
  const _PrimaryButton({required this.label, required this.onPressed});

  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.softGold,
          foregroundColor: AppColors.quranDarkBg,
          disabledBackgroundColor: Colors.white.withValues(alpha: .16),
          disabledForegroundColor: Colors.white.withValues(alpha: .42),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(999),
          ),
          textStyle: AppTypography.body(
            context,
            size: 14,
            weight: FontWeight.w900,
          ),
        ),
        child: Text(label),
      ),
    );
  }
}
