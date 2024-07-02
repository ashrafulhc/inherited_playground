import 'package:flutter/material.dart';

class HomeInheritedWidget extends InheritedWidget {
  final int count;

  const HomeInheritedWidget({
    super.key,
    required super.child,
    required this.count,
  });

  static HomeInheritedWidget? of(context) {
    return context.dependOnInheritedWidgetOfExactType<HomeInheritedWidget>();
  }

  @override
  bool updateShouldNotify(HomeInheritedWidget oldWidget) {
    return count != oldWidget.count;
  }
}
