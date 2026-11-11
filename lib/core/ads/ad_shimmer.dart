import 'package:flutter/material.dart';

class AdShimmer extends StatefulWidget {
  const AdShimmer({
    super.key,
    required this.height,
    this.backgroundColor = Colors.white,
    this.borderRadius,
    this.padding = const EdgeInsets.all(8),
    this.fullscreen = false,
  });

  final double height;
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry padding;
  final bool fullscreen;

  @override
  State<AdShimmer> createState() => _AdShimmerState();
}

class _AdShimmerState extends State<AdShimmer>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final shimmer = AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return ShaderMask(
          blendMode: BlendMode.srcATop,
          shaderCallback: (bounds) {
            final width = bounds.width == 0 ? 1.0 : bounds.width;
            final slide = _controller.value * width * 2 - width;
            return LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.black.withValues(alpha: .05),
                Colors.black.withValues(alpha: .12),
                Colors.black.withValues(alpha: .05),
              ],
              stops: const [0.25, 0.5, 0.75],
              transform: _SlidingGradientTransform(slide),
            ).createShader(bounds);
          },
          child: child,
        );
      },
      child: _AdSkeleton(fullscreen: widget.fullscreen),
    );

    final content = ColoredBox(
      color: widget.backgroundColor,
      child: Padding(padding: widget.padding, child: shimmer),
    );

    return ClipRRect(
      borderRadius: widget.borderRadius ?? BorderRadius.zero,
      child: SizedBox(
        height: widget.height,
        width: double.infinity,
        child: content,
      ),
    );
  }
}

class _AdSkeleton extends StatelessWidget {
  const _AdSkeleton({required this.fullscreen});

  final bool fullscreen;

  @override
  Widget build(BuildContext context) {
    if (fullscreen) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: _Block(alpha: .05)),
          const SizedBox(height: 18),
          const _Block(height: 22, alpha: .08),
          const SizedBox(height: 10),
          const _Block(height: 16, alpha: .06),
          const SizedBox(height: 16),
          const _Block(height: 44, alpha: .10),
        ],
      );
    }

    return Row(
      children: [
        const _Block(width: 56, height: 56, alpha: .08),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              _Block(height: 14, alpha: .08),
              SizedBox(height: 8),
              _Block(height: 12, alpha: .06),
            ],
          ),
        ),
      ],
    );
  }
}

class _Block extends StatelessWidget {
  const _Block({this.width, this.height, required this.alpha});

  final double? width;
  final double? height;
  final double alpha;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: alpha),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

class _SlidingGradientTransform extends GradientTransform {
  const _SlidingGradientTransform(this.slide);

  final double slide;

  @override
  Matrix4 transform(Rect bounds, {TextDirection? textDirection}) {
    return Matrix4.translationValues(slide, 0, 0);
  }
}
