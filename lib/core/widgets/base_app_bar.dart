import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../theme/app_typography.dart';

class AppBarTextStyles {
  const AppBarTextStyles._();

  static TextStyle title(BuildContext context, {Color? color, double? size}) {
    return AppTypography.displayIslamic(
      color: color ?? AppColors.adaptiveInk(context),
      size: size ?? 28,
    );
  }

  static TextStyle subtitle(BuildContext context, {Color? color}) {
    return Theme.of(context).textTheme.labelMedium!.copyWith(
      color: color ?? AppColors.adaptiveSecondaryText(context),
      fontSize: 12,
      fontWeight: FontWeight.w700,
      height: 1.2,
      letterSpacing: 0,
    );
  }
}

class AppTopBarIcon extends StatelessWidget {
  const AppTopBarIcon({
    super.key,
    required this.icon,
    this.onTap,
    this.color,
    this.backgroundColor,
    this.tooltip,
  });

  final IconData icon;
  final VoidCallback? onTap;
  final Color? color;
  final Color? backgroundColor;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    final accent = color ?? AppColors.adaptiveInk(context);
    final bg =
        backgroundColor ?? AppColors.adaptiveCard(context, lightAlpha: .72);
    final button = Material(
      color: bg,
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: SizedBox(
          width: 42,
          height: 42,
          child: Icon(icon, color: accent, size: 21),
        ),
      ),
    );

    if (tooltip == null) return button;
    return Tooltip(message: tooltip!, child: button);
  }
}

class AppTopBar extends StatelessWidget {
  const AppTopBar({
    super.key,
    required this.title,
    this.subtitle,
    this.leadingIcon,
    this.leading,
    this.actions = const [],
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    this.surfaceOpacity = 0,
    this.titleColor,
    this.iconColor,
  });

  final String title;
  final String? subtitle;
  final IconData? leadingIcon;
  final Widget? leading;
  final List<Widget> actions;
  final EdgeInsetsGeometry padding;
  final double surfaceOpacity;
  final Color? titleColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final isDark = AppColors.isDark(context);
    final fg = titleColor ?? AppColors.adaptiveInk(context);
    final accent = iconColor ?? AppColors.adaptiveAccent(context);
    final surface = isDark ? AppColors.darkSurface : Colors.white;

    return Padding(
      padding: padding,
      child: Container(
        constraints: const BoxConstraints(minHeight: 58),
        padding: EdgeInsets.fromLTRB(
          surfaceOpacity > 0 ? 12 : 0,
          surfaceOpacity > 0 ? 8 : 0,
          surfaceOpacity > 0 ? 10 : 0,
          surfaceOpacity > 0 ? 8 : 0,
        ),
        decoration: BoxDecoration(
          color: surface.withValues(alpha: surfaceOpacity),
          borderRadius: BorderRadius.circular(18),
          border: surfaceOpacity > 0
              ? Border.all(color: AppColors.adaptiveBorder(context))
              : null,
          boxShadow: surfaceOpacity > 0
              ? [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: isDark ? .18 : .06),
                    blurRadius: 18,
                    offset: const Offset(0, 8),
                  ),
                ]
              : null,
        ),
        child: Row(
          children: [
            if (leading != null) ...[
              leading!,
              const SizedBox(width: 12),
            ] else if (leadingIcon != null) ...[
              Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  color: accent.withValues(alpha: isDark ? .16 : .1),
                  shape: BoxShape.circle,
                ),
                child: Icon(leadingIcon, color: accent, size: 21),
              ),
              const SizedBox(width: 12),
            ],
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppBarTextStyles.title(context, color: fg),
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: 3),
                    Text(
                      subtitle!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppBarTextStyles.subtitle(context),
                    ),
                  ],
                ],
              ),
            ),
            for (final action in actions) ...[const SizedBox(width: 8), action],
          ],
        ),
      ),
    );
  }
}

class AppBaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppBaseAppBar({
    super.key,
    required this.title,
    this.subtitle,
    this.actions,
    this.leading,
    this.centerTitle = true,
    this.backgroundColor,
  });

  final String title;
  final String? subtitle;
  final List<Widget>? actions;
  final Widget? leading;
  final bool centerTitle;
  final Color? backgroundColor;

  @override
  Size get preferredSize => Size.fromHeight(subtitle == null ? 64 : 72);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:
          backgroundColor ??
          (AppColors.isDark(context) ? AppColors.darkSurface : Colors.white),
      elevation: 0,
      centerTitle: centerTitle,
      leading: leading,
      actions: actions,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppBarTextStyles.title(context, size: 18),
          ),
          if (subtitle != null) ...[
            const SizedBox(height: 3),
            Text(
              subtitle!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppBarTextStyles.subtitle(context),
            ),
          ],
        ],
      ),
    );
  }
}
