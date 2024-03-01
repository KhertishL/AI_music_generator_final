import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final Widget? child;
  final double width;
  final double height;

  const NeuBox({
    Key? key,
    required this.child,
    this.width = 200.0,
    this.height = 200.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          //darker shadow on bottom right
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 15,
            offset: const Offset(4, 4),
          ),

          //lighter shadow on top left
          BoxShadow(
            color: Colors.white,
            blurRadius: 15,
            offset: const Offset(-4, -4),
          )
        ],
      ),
      padding: const EdgeInsets.all(12),
      child: child,
    );
  }
}
