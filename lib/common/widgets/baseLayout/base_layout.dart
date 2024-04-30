import 'package:flutter/material.dart';
import 'package:testing_10/utils/constants/assets.dart';

class BaseLayout extends StatefulWidget {
  const BaseLayout({super.key, this.child});

  final Widget? child;

  @override
  State<BaseLayout> createState() => _BaseLayoutState();
}

class _BaseLayoutState extends State<BaseLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.img_bg),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        body: widget.child ??
            const Center(
              child: Text("Base Layout"),
            ),
      ),
    );
  }
}
