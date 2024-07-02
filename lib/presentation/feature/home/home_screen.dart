import 'package:flutter/material.dart';
import 'package:inherited_playground/presentation/feature/home/home_inherited_widget/home_inherited_widget.dart';
import 'package:inherited_playground/presentation/feature/home/ui/counter_text_widget.dart';
import 'package:inherited_playground/presentation/feature/home/ui/heading.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  void increaseCount() {
    setState(() {
      count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('home: build');
    return HomeInheritedWidget(
      count: count,
      child: Scaffold(
        appBar: AppBar(),
        body: const SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              HeadingText(),
              CounterTextWidget(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: increaseCount,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
