part of '../onboarding_page.dart';

class _OnboardingContent extends StatelessWidget {
  const _OnboardingContent({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: child,
    );
  }
}

class _TitleBlock extends StatelessWidget {
  const _TitleBlock({required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppTypography.displayIslamic(
            color: Colors.white,
            size: 30,
          ).copyWith(height: 1.08),
        ),
        const SizedBox(height: 10),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: AppTypography.body(
            context,
            color: Colors.white.withValues(alpha: .78),
            size: 13,
          ),
        ),
      ],
    );
  }
}

class _FeatureItem extends StatelessWidget {
  const _FeatureItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.gold,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final Color gold;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: gold, width: 1.5),
              color: Colors.white.withValues(alpha: .06),
            ),
            child: Icon(icon, color: gold, size: 21),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTypography.body(
                    context,
                    color: Colors.white,
                    size: 14,
                    weight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  subtitle,
                  style: AppTypography.caption(
                    context,
                    color: Colors.white.withValues(alpha: .68),
                    size: 11,
                    weight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SelectableRow extends StatelessWidget {
  const _SelectableRow({
    required this.title,
    required this.subtitle,
    required this.selected,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: .07),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: selected
                ? AppColors.softGold
                : Colors.white.withValues(alpha: .12),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTypography.body(
                      context,
                      color: Colors.white,
                      size: 13,
                      weight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: AppTypography.caption(
                      context,
                      color: Colors.white.withValues(alpha: .58),
                      size: 10,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              selected ? AppIcons.checkCircle : AppIcons.radioButtonOff,
              color: selected
                  ? AppColors.softGold
                  : Colors.white.withValues(alpha: .42),
              size: 22,
            ),
          ],
        ),
      ),
    );
  }
}
