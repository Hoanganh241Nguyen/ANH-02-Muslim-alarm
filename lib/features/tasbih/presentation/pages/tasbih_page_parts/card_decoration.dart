part of '../tasbih_page.dart';

BoxDecoration _cardDecoration(
  BuildContext context, {
  required double radius,
  double opacity = .74,
}) {
  final isDark = _tasbihDark(context);
  return BoxDecoration(
    color: _tasbihCard(context, opacity: opacity),
    borderRadius: BorderRadius.circular(radius),
    border: Border.all(color: _tasbihBorder(context)),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withValues(alpha: isDark ? .2 : .045),
        blurRadius: isDark ? 26 : 22,
        offset: const Offset(0, 12),
      ),
    ],
  );
}
