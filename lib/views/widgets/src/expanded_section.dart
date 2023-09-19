import 'package:flutter/material.dart';

class ExpandedSection extends StatefulWidget {
  const ExpandedSection({
    Key? key,
    this.expand = false,
    this.duration = const Duration(milliseconds: 300),
    this.curve = Curves.easeInOut,
    required this.child,
  }) : super(key: key);

  final bool expand;
  final Duration duration;
  final Curve curve;
  final Widget child;

  @override
  State<ExpandedSection> createState() => _ExpandedSectionState();
}

class _ExpandedSectionState extends State<ExpandedSection>
    with SingleTickerProviderStateMixin {
  late AnimationController _expandController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _prepareAnimations();
    _runExpandCheck();
  }

  void _prepareAnimations() {
    _expandController = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _animation = CurvedAnimation(
      parent: _expandController,
      curve: widget.curve,
    );
  }

  void _runExpandCheck() {
    if (widget.expand) {
      _expandController.forward();
    } else {
      _expandController.reverse();
    }
  }

  @override
  void didUpdateWidget(ExpandedSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    _runExpandCheck();
  }

  @override
  void dispose() {
    _expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axisAlignment: 1,
      sizeFactor: _animation,
      child: widget.child,
    );
  }
}
