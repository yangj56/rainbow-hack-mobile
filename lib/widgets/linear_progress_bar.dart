import 'package:flutter/material.dart';

class LinearProgressBar extends StatelessWidget {
  final Color activeColor;
  final Color inactiveColor;
  final int currentStep;
  final int totalSteps;

  LinearProgressBar(
      {@required this.activeColor,
      @required this.inactiveColor,
      @required this.currentStep,
      this.totalSteps = 3});

  Iterable<Widget> renderListBar(Color activeColor, Color inactiveColor,
      int currentStep, int totalSteps) sync* {
    for (int i = 0; i < totalSteps; i++) {
      yield renderBar(activeColor, inactiveColor, totalSteps, i < currentStep);
    }
  }

  Widget renderBar(
      Color activeColor, Color inactiveColor, int totalSteps, bool isActive) {
    return Container(
      margin: EdgeInsets.only(left: 3, right: 3),
      color: isActive ? activeColor : inactiveColor,
      width: 300 / totalSteps,
      height: 5,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        children:
            renderListBar(activeColor, inactiveColor, currentStep, totalSteps)
                .toList());
  }
}
