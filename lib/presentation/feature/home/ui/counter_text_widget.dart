import 'package:flutter/material.dart';
import 'package:inherited_playground/presentation/feature/home/home_inherited_widget/home_inherited_widget.dart';

class CounterTextWidget extends StatelessWidget {
  const CounterTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    print('counter text: build');
    return Text('${HomeInheritedWidget.of(context)?.count}');
  }
}
