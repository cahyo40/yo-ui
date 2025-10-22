import 'package:flutter/material.dart';

import '../../../yo_ui_base.dart';

class YoSkeleton extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadius borderRadius;
  final YoSkeletonType type;

  const YoSkeleton({
    super.key,
    this.width = double.infinity,
    this.height = 20,
    this.borderRadius = const BorderRadius.all(Radius.circular(4)),
    this.type = YoSkeletonType.shimmer,
  });

  const YoSkeleton.circle({super.key, required double size})
    : width = size,
      height = size,
      borderRadius = const BorderRadius.all(Radius.circular(100)),
      type = YoSkeletonType.shimmer;

  const YoSkeleton.line({
    super.key,
    this.width = double.infinity,
    this.height = 16,
  }) : borderRadius = const BorderRadius.all(Radius.circular(4)),
       type = YoSkeletonType.shimmer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: YoColors.gray300(context),
      ),
      child: type == YoSkeletonType.shimmer ? const _ShimmerEffect() : null,
    );
  }
}

class _ShimmerEffect extends StatefulWidget {
  const _ShimmerEffect();

  @override
  State<_ShimmerEffect> createState() => _ShimmerEffectState();
}

class _ShimmerEffectState extends State<_ShimmerEffect>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return ClipRect(
          child: ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [
                  YoColors.gray300(context),
                  YoColors.gray100(context),
                  YoColors.gray300(context),
                ],
                stops: const [0.0, 0.5, 1.0],
                transform: _SlidingGradientTransform(_controller.value),
              ).createShader(bounds);
            },
            child: Container(color: YoColors.gray300(context)),
          ),
        );
      },
    );
  }
}

class _SlidingGradientTransform extends GradientTransform {
  final double percent;

  const _SlidingGradientTransform(this.percent);

  @override
  Matrix4 transform(Rect bounds, {TextDirection? textDirection}) {
    return Matrix4.translationValues(
      bounds.width * 2 * percent - bounds.width,
      0.0,
      0.0,
    );
  }
}

enum YoSkeletonType { static, shimmer }
