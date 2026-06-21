import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatefulWidget {
  const LayoutBuilderExample({super.key});
  @override
  State<LayoutBuilderExample> createState() => _LayoutBuilderExampleState();
}

class _LayoutBuilderExampleState extends State<LayoutBuilderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layout Builder')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return Container(
              color: Colors.red,
              child: Center(child: Text('Small Screen')),
            );
          } else {
            return Container(
              color: Colors.green,
              child: Center(child: Text('Large Screen')),
            );
          }
        },
      ),
    );
  }
}
